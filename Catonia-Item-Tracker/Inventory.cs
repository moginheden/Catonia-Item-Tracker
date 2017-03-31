using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class Inventory
    {
        /// <summary>
        /// the list of items in this inventory stash
        /// </summary>
        public List<LootItemQty> loot = null;

        public List<HistoryRecord> history = null;

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

            loot = new List<LootItemQty>();
            history = new List<HistoryRecord>();

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
                            LootItem li = Program.findLootByID((int)reader["id"]);

                            LootItemQty liq = new LootItemQty();
                            liq.item = li;
                            liq.qty = (int)reader["qty"];

                            loot.Add(liq);
                        }
                    }
                }

                //load history
                string selectHistory = @"SELECT *
								         FROM history
                                         WHERE location = '" + loc.Replace("'", "''") + @"'
								         ORDER BY modificationDate desc";
                using (SqlCommand comm = new SqlCommand(selectHistory, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            HistoryRecord hr = new HistoryRecord();
                            hr.dateTime = (DateTime)reader["modificationDate"];
                            hr.liq = findLoot((int)reader["id"]);
                            hr.note = (string)reader["note"];
                            hr.qtyChanged = (int)reader["qty"];
                            
                            history.Add(hr);
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Finds a LootItem in the loot list based on it's SQL id, (likley way off it's list index due to add/delete.)
        /// </summary>
        /// <param name="lootID">the DB id of the loot item</param>
        /// <exception cref="IndexOutOfRangeException">If the id isn't found</exception>
        public LootItemQty findLoot(int lootID)
        {
            /// TODO: switch this to binary search
            int lootIndex = lootID;
            while (loot[lootIndex].item.id > lootID)
            {
                lootIndex--;
            }
            while (loot[lootIndex].item.id < lootID)
            {
                lootIndex++;
            }

            if (loot[lootIndex].item.id != lootID)
            {
                throw new IndexOutOfRangeException("ID: " + lootID + " not found in loot list");
            }

            return loot[lootIndex];
        }
    }
}
