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
        public List<ItemQty> loot = null;

        /// <summary>
        /// The list of history records representing all changes to this item
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

            loot = new List<ItemQty>();
            history = new Stack<HistoryRecord>();

            foreach (Item i in Program.items)
            {
                ItemQty iq = new ItemQty();
                iq.item = i;
                loot.Add(iq);
            }

            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                //load loot
                string selectLoot = @"SELECT *
								      FROM lootByLocation
                                      WHERE location = '" + loc.Replace("'", "''") + @"'
								      ORDER BY id";
                using (SqlCommand comm = new SqlCommand(selectLoot, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ItemQty iq = findLoot((int)reader["id"]);
                            iq.qty = (int)reader["qty"];
                        }
                    }
                }

                //load history
                string selectHistory = @"SELECT *
								         FROM history
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
                            hr.iq = findLoot((int)reader["itemID"]);
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
        /// Proccessing loop for the worker thread, only exists once it finds a HistoryRecord with an Item ID of -1
        /// </summary>
        private void workerThreadLoop()
        {
            string unsaved = " Unsaved Changes";

            //Wait for the main window to be created
            Thread.Sleep(1000);

            while (Program.mainForm.Visible || (!this.sqlTasks.IsEmpty))
            {
                Thread.Sleep(1000);

                using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                {
                    dataConnection.Open();


                    

                    //update database with this client's changes
                    HistoryRecord hr = null;
                    while(this.sqlTasks.TryDequeue(out hr))
                    {
                        //if the program is closing, finish up
                        if (hr.iq.item.id == -1)
                        {
                            return;
                        }

                        string sql = @"INSERT INTO history
                                                   (itemID,
                                                    modificationDate,
                                                    location,
                                                    qty,
                                                    note,
                                                    undone,
                                                    clientName)
                                       VALUES ('" + hr.iq.item.id + @"',
                                               '" + hr.dateTime.ToUniversalTime().ToString("yyyy-MM-dd HH:mm:ss.fff") + @"',
                                               '" + this.location + @"',
                                               '" + hr.qtyChanged + @"',
                                               '" + hr.note + @"',
                                               '0',
                                               '" + Program.clientID + @"')";
                        using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                        {
                            try
                            {
                                comm.ExecuteNonQuery();
                            }
                            catch(SqlException ex)
                            {
                                if (ex.Message.StartsWith("Violation of PRIMARY KEY"))
                                {
                                    sql = @"UPDATE history
                                        SET qty = '" + hr.qtyChanged + @"',
                                            note = '" + hr.note + @"',
                                            clientName = '" + Program.clientID + @"'
                                        WHERE itemID = '" + hr.iq.item.id + @"'
                                          AND modificationDate = '" + hr.dateTime.ToUniversalTime().ToString("yyyy-MM-dd HH:mm:ss.fff") + @"'
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

                        sql = @"UPDATE lootByLocation
                                SET qty = '" + hr.iq.qty + @"'
                                WHERE id = '" + hr.iq.item.id + @"'
                                  AND location = '" + this.location + @"'";
                        using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                        {
                            //run the update, if no rows are changed, then do an insert
                            if (comm.ExecuteNonQuery() == 0)
                            {
                                sql = @"INSERT INTO lootByLocation
                                                    (id, 
                                                     location, 
                                                     qty)
                                        VALUES ('" + hr.iq.item.id + @"',
                                                '" + this.location + @"',
                                                '" + hr.iq.qty + @"')";
                                using (SqlCommand insertComm = new SqlCommand(sql, dataConnection))
                                {
                                    insertComm.ExecuteNonQuery();
                                }
                            }
                        }
                    }


                    //Look for updates from other clients
                    DateTime checkDate = DateTime.Now.AddSeconds(-60*5).ToUniversalTime();
                    string findUpdatesSQL = @"SELECT *
                                              FROM history
                                              WHERE modificationDate > '" + checkDate.ToString("yyyy-MM-dd HH:mm:ss.fff") + @"'
                                                AND location = '" + this.location + @"'
                                                AND clientName != '" + Program.clientID + @"'";
                    using (SqlCommand comm = new SqlCommand(findUpdatesSQL, dataConnection))
                    {
                        using (SqlDataReader reader = comm.ExecuteReader())
                        {
                            while(reader.Read())
                            {
                                /// TODO: check into quick changes using up/down arrows being overwritten by old values
                                
                                //look for a HistoryRecord that matches, but allow a 10 millisecond variance due to SQL truncating dates
                                HistoryRecord hrToUpdate = history.SingleOrDefault(x =>
                                    (x.iq.item.id == (int)reader["itemID"])
                                    && (100000 > Math.Abs((x.dateTime - ((DateTime)reader["modificationDate"]).ToLocalTime()).Ticks)));
                                if (hrToUpdate == null)
                                {
                                    hrToUpdate = new HistoryRecord()
                                    {
                                        dateTime = ((DateTime)reader["modificationDate"]).ToLocalTime(),
                                        iq = findLoot((int)reader["itemID"]),
                                        qtyChanged = (int)reader["qty"],
                                        note = (string)reader["note"]
                                    };
                                    hrToUpdate.iq.qty += hrToUpdate.qtyChanged;

                                    this.history.Push(hrToUpdate);

                                    if(Program.mainForm.inventory == this)
                                    {
                                        Program.mainForm.updateItemQty(hrToUpdate.iq);
                                    }
                                }
                                else if((hrToUpdate.qtyChanged != (int)reader["qty"]) 
                                        || (hrToUpdate.note != (string)reader["note"]))
                                {
                                    hrToUpdate.note = (string)reader["note"];
                                    hrToUpdate.iq.qty -= hrToUpdate.qtyChanged;
                                    hrToUpdate.qtyChanged = (int)reader["qty"];
                                    hrToUpdate.iq.qty += hrToUpdate.qtyChanged;

                                    if (Program.mainForm.inventory == this)
                                    {
                                        Program.mainForm.updateItemQty(hrToUpdate.iq);
                                    }
                                }
                            }
                        }
                    }
                }

                if ((Program.mainForm != null)
                    && (Program.mainForm.Visible) 
                    && (Program.mainForm.Text.EndsWith(unsaved)))
                {
                    Program.mainForm.ResetText();
                }
            }
        }

        /// <summary>
        /// Finds a LootItem in the loot list based on it's SQL id, (likley way off it's list index due to add/delete.)
        /// </summary>
        /// <param name="lootID">the DB id of the loot item</param>
        /// <exception cref="IndexOutOfRangeException">If the id isn't found</exception>
        public ItemQty findLoot(int lootID)
        {
            int lootIndex = lootID;
            if(lootIndex > (loot.Count-1))
            {
                lootIndex = loot.Count - 1;
            }
            while ((lootIndex > -1) && (loot[lootIndex].item.id > lootID))
            {
                lootIndex--;
            }
            while ((lootIndex < loot.Count) && (loot[lootIndex].item.id < lootID))
            {
                lootIndex++;
            }

            if ((lootIndex <= -1) || (lootIndex >= loot.Count) || (loot[lootIndex].item.id != lootID))
            {
                throw new IndexOutOfRangeException("ID: " + lootID + " not found in loot list");
            }

            return loot[lootIndex];
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
            if (!Program.mainForm.Text.EndsWith(unsaved))
            {
                Program.mainForm.Text += unsaved;
            }

            //enqueue a copy of the HistoryRecord and it's subitem to avoid cross-threading issues
            ItemQty iqToEnqueue = new ItemQty()
            {
                item = hr.iq.item,
                qty = hr.iq.qty
            };
            HistoryRecord hrToEnqueue = new HistoryRecord()
            {
                dateTime = hr.dateTime,
                iq = iqToEnqueue,
                note = hr.note,
                qtyChanged = hr.qtyChanged
            };
            this.sqlTasks.Enqueue(hr);
        }

        /// <summary>
        /// Views the latest history record. Make sure to call updateHistory() if you make changes to the returned record
        /// </summary>
        /// <returns>The HistoryRecord that was most recently modified</returns>
        public HistoryRecord latestHistory()
        {
            if(history.Count ==0)
            {
                return null;
            }
            return history.Peek();
        }

        public void undo()
        {
            /// TODO: update DB
        }
    }
}
