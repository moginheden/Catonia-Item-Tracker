using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Catonia_Item_Tracker
{
    static class Program
    {
        /// <summary>
        /// The connection string to the SQL server
        /// </summary>
        public const string connectionString = "Server=858d5789-ed56-4b0c-9364-a73301643bf4.sqlserver.sequelizer.com;Database=db858d5789ed564b0c9364a73301643bf4;User ID=pidrrcbeptdchsdu;Password=gZYWgihc2QRCFSbS3Vggaby376XduRrLsnD2UsmAkfX8vGMZTwmDMbXfA6XitePj;";

        /// <summary>
        /// the list of items in the game
        /// </summary>
        public static List<Item> items = null;

        /// <summary>
        /// The list of items we have on hand
        /// </summary>
        public static Inventory onHand = null;

        /// <summary>
        /// The list of items we left with NPCs
        /// </summary>
        public static Inventory leftBehind = null;

        /// <summary>
        /// The information on what items combine to create what items
        /// </summary>
        public static List<Recipie> recipies = null;

        /// <summary>
        /// link to the main form window
        /// </summary>
        public static FrmMain mainForm = null;

        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            try
            {
                loadAllFromDB();

                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);
                mainForm = new FrmMain();
                Application.Run(mainForm);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                
            }
            HistoryRecord hrCloser = new HistoryRecord() { iq = new ItemQty() { item = new Item() { id = -1 } } };
            onHand.addHistory(hrCloser);
            leftBehind.addHistory(hrCloser);
         }

        /// <summary>
        /// Loads all the items and recipies from the database
        /// </summary>
        private static void loadAllFromDB()
        {
            items = new List<Item>();
            recipies = new List<Recipie>();

            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                //load loot
                string selectLoot = @"SELECT *
								  FROM items
								  ORDER BY id";
                using (SqlCommand comm = new SqlCommand(selectLoot, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Item item = new Item();
                            item.id = (int)reader["id"];
                            item.name = (string)reader["name"];
                            item.cost = (int)reader["cost"];
                            item.description = (string)reader["description"];
                            
                            items.Add(item);
                        }
                    }
                }

                //load recipies
                string selectRecipies = @"SELECT *
									  FROM recipies
									  ORDER BY id";
                using (SqlCommand comm = new SqlCommand(selectRecipies, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Recipie r = new Recipie();
                            r.id = (int)reader["id"];

                            string selectIngredients = @"SELECT *
													 FROM recipieIngredients
													 WHERE recipieID = '" + r.id + "'";
                            using (SqlCommand commIngredients = new SqlCommand(selectIngredients, dataConnection))
                            {
                                using (SqlDataReader readerIngredients = commIngredients.ExecuteReader())
                                {
                                    while (readerIngredients.Read())
                                    {
                                        ItemQty iq = new ItemQty();
                                        iq.item = findLootByID((int)reader["ingredient"]);
                                        iq.qty = (int)reader["qty"];
                                        r.ingredients.Add(iq);
                                    }
                                }
                            }
                            Item result = findLootByID((int)reader["result"]);
                            r.resultQty = (int)reader["resultQty"];
                            r.profession = (string)reader["profession"];
                            r.crafterLevel = (string)reader["crafterLevel"];

                            recipies.Add(r);
                        }
                    }
                }
            }

            onHand = new Inventory("On Hand");
            leftBehind = new Inventory("Left Behind");
        }

        /// <summary>
        /// Finds a LootItem in the loot list based on it's SQL id, (might be slightly off from it's list index due to add/delete.)
        /// </summary>
        /// <param name="lootID">the DB id of the loot item</param>
        /// <exception cref="IndexOutOfRangeException">If the id isn't found</exception>
        public static Item findLootByID(int lootID)
        {
            int lootIndex = lootID;
            while (items[lootIndex].id > lootID)
            {
                lootIndex--;
            }
            while (items[lootIndex].id < lootID)
            {
                lootIndex++;
            }

            if (items[lootIndex].id != lootID)
            {
                throw new IndexOutOfRangeException("ID: " + lootID + " not found in loot list");
            }

            return items[lootIndex];
        }
    }
}
