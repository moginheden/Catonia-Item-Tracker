using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class Inventory
    {
        /// <summary>
        /// the list of items in this inventory stash
        /// </summary>
        public Dictionary<int, InventoryItem> loot = null;

        /// <summary>
        /// The list of history records representing all changes to this set of items
        /// </summary>
        private Stack<HistoryRecord> history = null;

        /// <summary>
        /// List of HistoryRecords representing changes that need to be saved to the database
        /// </summary>
        private ConcurrentQueue<HistoryRecord> sqlTasks = null;

        /// <summary>
        /// the thread that updates the database in the background without stalling the UI
        /// </summary>
        private Thread workerThread = null;

        /// <summary>
        /// Flag to tell if the worker thread is processing records or waiting for the main thread to update something first
        /// </summary>
        public static volatile bool paused = false;

        /// <summary>
        /// the name of this location as stored in the database
        /// </summary>
        public string location
        {
            get;
            private set;
        }

        /// <summary>
        /// Loads all the items and recipies from the database
        /// </summary>
        public Inventory(string loc)
        {
            this.location = loc;

            loot = new Dictionary<int, InventoryItem>();
            history = new Stack<HistoryRecord>();

            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                //load loot
                string selectLoot = @"SELECT *
								      FROM inventory
                                      WHERE location = '" + loc.Replace("'", "''") + @"'
								      ORDER BY id";
                using (SqlCommand comm = new SqlCommand(selectLoot, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            InventoryItem iq = new InventoryItem();
                            iq.id = (int)reader["id"];
                            iq.qty = (int)reader["qty"];
                            iq.item = Program.items[(int)reader["itemId"]];
                            loot.Add(iq.id, iq);
                        }
                    }
                }

                //load empty records for loot we don't have any of yet
                string selectZeroLoot = @"select items.id
                                          from items
                                          where id not in (select itemID 
				                                           from inventory
				                                           where location = '" + loc.Replace("'", "''") + @"')
                                            and id != 0";
                using (SqlCommand comm = new SqlCommand(selectZeroLoot, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            InventoryItem iq = new InventoryItem();
                            iq.id = -1 * (int)reader["id"];
                            iq.qty = 0;
                            iq.item = Program.items[(int)reader["id"]];
                            loot.Add(iq.id, iq);
                        }
                    }
                }

                //load history
                string selectHistory = @"SELECT *
								         FROM inventoryHistory
                                         WHERE location = '" + loc.Replace("'", "''") + @"'
								         ORDER BY modificationDate";
                using (SqlCommand comm = new SqlCommand(selectHistory, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            HistoryRecord hr = new HistoryRecord();
                            hr.dateTime = ((DateTime)reader["modificationDate"]).ToLocalTime();
                            hr.ii = loot[(int)reader["inventoryID"]];
                            hr.note = (string)reader["note"];
                            hr.qtyChanged = (int)reader["qty"];
                            
                            history.Push(hr);
                        }
                    }
                }
            }

            sqlTasks = new ConcurrentQueue<HistoryRecord>();
            workerThread = new Thread(new ThreadStart(workerThreadLoop));
            workerThread.Start();
        }

        /// <summary>
        /// Proccessing loop for the worker thread, only exits once it finds a HistoryRecord with an Item ID of int.MaxValue
        /// </summary>
        private void workerThreadLoop()
        {
            string unsaved = " Unsaved Changes";

            //Wait for the main window to be created
            while (Program.mainForm == null)
            {
                Thread.Sleep(1000);
            }

            while (Program.mainForm.Visible || (!this.sqlTasks.IsEmpty))
            {
                Thread.Sleep(1000);

                int attemptsLeft = 5;
                while (attemptsLeft > 0)
                {
                    try
                    {
                        using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                        {
                            dataConnection.Open();

                            //Look for updates from other clients
                            DateTime checkDate = DateTime.Now.AddSeconds(-60 * 5).ToUniversalTime();
                            string findUpdatesSQL = @"SELECT *
                                                      FROM inventoryHistory
                                                      WHERE modificationDate > '" + checkDate.ToString("yyyy-MM-dd HH:mm:ss.fff") + @"'
                                                        AND location = '" + this.location + @"'
                                                        AND clientName != '" + Program.clientID + @"'";
                            using (SqlCommand comm = new SqlCommand(findUpdatesSQL, dataConnection))
                            {
                                using (SqlDataReader reader = comm.ExecuteReader())
                                {
                                    while (reader.Read())
                                    {
                                        /// TODO: check into quick changes using up/down arrows being overwritten by old values

                                        //look for a HistoryRecord that matches, but allow a 10 millisecond variance due to SQL truncating dates
                                        HistoryRecord hrToUpdate = history.SingleOrDefault(x =>
                                            (x.ii.id == (int)reader["id"])
                                            && (100000 > Math.Abs((x.dateTime - ((DateTime)reader["modificationDate"]).ToLocalTime()).Ticks)));
                                        if (hrToUpdate == null)
                                        {
                                            hrToUpdate = new HistoryRecord()
                                            {
                                                dateTime = ((DateTime)reader["modificationDate"]).ToLocalTime(),
                                                ii = this.loot[(int)reader["ID"]],
                                                qtyChanged = (int)reader["qty"],
                                                note = (string)reader["note"]
                                            };
                                            hrToUpdate.ii.qty += hrToUpdate.qtyChanged;

                                            this.history.Push(hrToUpdate);

                                            if (Program.mainForm.inventory == this)
                                            {
                                                Program.mainForm.updateItemQty(hrToUpdate.ii);
                                            }
                                        }
                                        else if ((hrToUpdate.qtyChanged != (int)reader["qty"])
                                                || (hrToUpdate.note != (string)reader["note"]))
                                        {
                                            hrToUpdate.note = (string)reader["note"];
                                            hrToUpdate.ii.qty -= hrToUpdate.qtyChanged;
                                            hrToUpdate.qtyChanged = (int)reader["qty"];
                                            hrToUpdate.ii.qty += hrToUpdate.qtyChanged;

                                            if (Program.mainForm.inventory == this)
                                            {
                                                Program.mainForm.updateItemQty(hrToUpdate.ii);
                                            }
                                        }
                                    }
                                }
                            }



                            //update database with this client's changes
                            HistoryRecord hr = null;
                            while ((!paused) && this.sqlTasks.TryDequeue(out hr))
                            {
                                //if the program is closing, finish up
                                if (hr.ii.item.id == int.MaxValue)
                                {
                                    return;
                                }

                                //clone the history record to avoid cross-threadding issues
                                HistoryRecord hrClone = (HistoryRecord)hr.Clone();

                                string sql = @"UPDATE inventory
                                               SET qty = '" + hrClone.ii.qty + @"'
                                               WHERE id = '" + hrClone.ii.id + @"'
                                                 AND itemId = '" + hrClone.ii.item.id + @"'
                                                 AND location = '" + this.location + @"'";
                                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                                {
                                    //run the update, if no rows are changed, then do an insert
                                    if (comm.ExecuteNonQuery() == 0)
                                    {
                                        sql = @"INSERT INTO inventory
                                                            (itemId, 
                                                             location, 
                                                             qty)
                                                VALUES ('" + hrClone.ii.item.id + @"',
                                                        '" + this.location + @"',
                                                        '" + hrClone.ii.qty + @"')";
                                        using (SqlCommand insertComm = new SqlCommand(sql, dataConnection))
                                        {
                                            insertComm.ExecuteNonQuery();
                                        }

                                        //grab id of new item
                                        sql = @"SELECT max(id)
                                                FROM inventory
                                                WHERE itemId = '" + hrClone.ii.item.id + @"'
                                                 AND location = '" + this.location + @"'
                                                 AND qty = '" + hrClone.ii.qty + @"'";
                                        using (SqlCommand getIDComm = new SqlCommand(sql, dataConnection))
                                        {
                                            hrClone.ii.id = (int)getIDComm.ExecuteScalar();
                                        }
                                    }
                                }

                                sql = @"INSERT INTO inventoryHistory
                                                       (inventoryId,
                                                        itemId,
                                                        modificationDate,
                                                        location,
                                                        qty,
                                                        note,
                                                        clientName)
                                               VALUES ('" + hrClone.ii.id + @"',
                                                       '" + hrClone.ii.item.id + @"',
                                                       '" + hrClone.dateTime.ToUniversalTime().ToString("yyyy-MM-dd HH:mm:ss.fff") + @"',
                                                       '" + this.location + @"',
                                                       '" + hrClone.qtyChanged + @"',
                                                       '" + hrClone.note + @"',
                                                       '" + Program.clientID + @"')";
                                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                                {
                                    try
                                    {
                                        comm.ExecuteNonQuery();
                                    }
                                    catch (SqlException ex)
                                    {
                                        if (ex.Message.StartsWith("Violation of PRIMARY KEY"))
                                        {
                                            sql = @"UPDATE inventoryHistory
                                                    SET qty = '" + hrClone.qtyChanged + @"',
                                                        note = '" + hrClone.note + @"',
                                                        clientName = '" + Program.clientID + @"'
                                                    WHERE inventoryId = '" + hrClone.ii.id + @"'
                                                      AND itemID = '" + hrClone.ii.item.id + @"'
                                                      AND modificationDate = '" + hrClone.dateTime.ToUniversalTime().ToString("yyyy-MM-dd HH:mm:ss.fff") + @"'
                                                      AND location = '" + this.location + @"'";
                                            using (SqlCommand commUpdate = new SqlCommand(sql, dataConnection))
                                            {
                                                commUpdate.ExecuteNonQuery();
                                            }
                                        }
                                        else
                                        {
                                            throw;
                                        }
                                    }
                                }
                                
                                //if this was a new item for the inventory, update the local data
                                if (hr.ii.id != hrClone.ii.id)
                                {
                                    updateID(hr.ii.id, hrClone.ii.id);
                                }

                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        if ((Program.mainForm != null)
                            && (Program.mainForm.Visible)
                            && (!Program.mainForm.Text.EndsWith(" - Error contacting server")))
                        {
                            Program.mainForm.setText(Program.mainForm.Text + " - Error contacting server");
                        }
                        attemptsLeft--;
                        if (attemptsLeft == 0)
                        {
                            Program.mainForm.Invoke(new Action(() =>
                            {
                                System.Windows.Forms.MessageBox.Show(ex.ToString(), "Error", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                            })); 
                        }
                    }
                    attemptsLeft = 0;
                }

                if ((Program.mainForm != null)
                    && (Program.mainForm.Visible) 
                    && (Program.mainForm.Text.EndsWith(unsaved))
                    && (!this.sqlTasks.IsEmpty))
                {
                    Program.mainForm.ResetText();
                }
            }
        }

        /// <summary>
        /// updates all the local copies of the id of an inventory item
        /// (used when a new item is addded since they start as negative their item id before they are assigned.)
        /// </summary>
        /// <param name="oldId"></param>
        /// <param name="newId"></param>
        private void updateID(int oldId, int newId)
        {
            //wait for the main thread to be done updating the ids
            paused = true;

            // do stuff on UI thread, to avoid cross-threadding issues
            if ((Program.mainForm != null) && Program.mainForm.InvokeRequired)
            {
                Program.mainForm.Invoke(new Action(() => updateID(oldId, newId)));  
                return;
            }

            InventoryItem ii = loot[oldId];
            loot.Remove(oldId);
            ii.id = newId;
            loot.Add(newId, ii);

            paused = false;
        }

        /// <summary>
        /// Finds the non-modded version of an InventoryItem in the loot list based on it's item's id, (likley way off it's list index due to add/delete.)
        /// </summary>
        /// <param name="lootID">the DB id of the loot item</param>
        /// <exception cref="IndexOutOfRangeException">If the id isn't found</exception>
        public InventoryItem findLoot(Item toFind)
        {
            return loot.First(x => (x.Value.item.id == toFind.id) && (x.Value.attachedTo == int.MinValue) && (x.Value.modsAttached.Count == 0)).Value;
        }

        /// <summary>
        /// returns an enumerator to view the history of items in this inventory
        /// </summary>
        /// <returns></returns>
        public IEnumerator<HistoryRecord> getHistory()
        {
            return history.GetEnumerator();
        }

        /// <summary>
        /// returns an enumerator to view the history of items in this inventory
        /// </summary>
        /// <returns></returns>
        public DateTime getLatestModification(int id)
        {
            HistoryRecord hr = history.FirstOrDefault(x => x.ii.item.id == id);
            if(hr == null)
            {
                return DateTime.MinValue;
            }
            return hr.dateTime;
        }

        /// <summary>
        /// returns the number of rows in the history stack
        /// </summary>
        /// <returns></returns>
        public int countHistory()
        {
            return history.Count;
        }

        /// <summary>
        /// adds a new history line
        /// </summary>
        /// <param name="hr"></param>
        public void addHistory(HistoryRecord hr)
        {
            history.Push(hr);

            updateHistory(hr);
        }

        /// <summary>
        /// updates an existing history item
        /// </summary>
        /// <param name="hr"></param>
        public void updateHistory(HistoryRecord hr)
        {
            string unsaved = " Unsaved Changes";
            if ((Program.mainForm != null) && (!Program.mainForm.Text.EndsWith(unsaved)))
            {
                if (Program.mainForm.InvokeRequired)
                {
                    Program.mainForm.Invoke(new Action(() => Program.mainForm.Text += unsaved));  // do stuff on UI thread, not here
                    return;
                }
            }

            this.sqlTasks.Enqueue(hr);
        }

        /// <summary>
        /// Views the latest history record. Make sure to call updateHistory() if you make changes to the returned record
        /// </summary>
        /// <returns>The HistoryRecord that was most recently modified</returns>
        public HistoryRecord latestHistory()
        {
            if(history.Count == 0)
            {
                return null;
            }
            return history.Peek();
        }
    }
}
