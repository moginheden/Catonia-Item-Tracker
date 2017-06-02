using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Catonia_Item_Tracker
{
    static class Program
    {
        private const string sqlServer = "858d5789-ed56-4b0c-9364-a73301643bf4.sqlserver.sequelizer.com";
        private const string database = "db858d5789ed564b0c9364a73301643bf4";
        private const string sqlUser = "pidrrcbeptdchsdu";
        private const string sqlPassword = "gZYWgihc2QRCFSbS3Vggaby376XduRrLsnD2UsmAkfX8vGMZTwmDMbXfA6XitePj";

        /// <summary>
        /// The connection string to the SQL server
        /// </summary>
        public const string connectionString = "Server=" + sqlServer + ";Database=" + database + ";User ID=" + sqlUser + ";Password=" + sqlPassword + ";";

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
        /// ID to diferentiate this instance from others in SQL's history table
        /// </summary>
        public static string clientID = Environment.MachineName;

        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            try
            {
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);

                FrmLoading.ShowSplashScreen();

                loadAllFromDB();

                FrmLoading.setText("Creating main form...");
                mainForm = new FrmMain();

                FrmLoading.setText("Loading main form...");

                Application.Run(mainForm);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            HistoryRecord hrCloser = new HistoryRecord() { iq = new ItemQty() { item = new Item() { id = -1 } } };
            if(onHand != null)
            {
                onHand.addHistory(hrCloser);
            }
            if(leftBehind != null)
            {
                leftBehind.addHistory(hrCloser);
            }
        }

        /// <summary>
        /// Loads all the items and recipies from the database
        /// </summary>
        public static void loadAllFromDB()
        {
            items = new List<Item>();
            recipies = new List<Recipie>();

            FrmLoading.setText("Connecting to DB...");
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                FrmLoading.setText("Loading Items from DB...");
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
                            item.usable = (bool)reader["usable"];

                            items.Add(item);
                        }
                    }
                }

                FrmLoading.setText("Loading Recipies from DB...");

                //load recipies
                DataSet dsRecipies = new DataSet();
                string selectRecipies = @"SELECT *
									  FROM recipies
									  ORDER BY id";
                using (SqlDataAdapter da = new SqlDataAdapter(selectRecipies, dataConnection))
                {
                    da.Fill(dsRecipies);
                }

                foreach(DataRow row in dsRecipies.Tables[0].Rows)
                { 
                    Recipie r = new Recipie();
                    r.id = (int)row["id"];
                    r.result = findLootByID((int)row["result"]);
                    r.resultQty = (int)row["resultQty"];
                    r.profession = (string)row["profession"];
                    r.crafterLevel = (string)row["crafterLevel"];

                    string selectIngredients = @"SELECT *
												FROM recipieIngredients
												WHERE recipieID = '" + r.id + "'";
                    using (SqlCommand commIngredients = new SqlCommand(selectIngredients, dataConnection))
                    {
                        using (SqlDataReader reader = commIngredients.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ItemQty iq = new ItemQty();
                                iq.item = findLootByID((int)reader["ingredient"]);
                                iq.qty = (int)reader["qty"];
                                r.ingredients.Add(iq);
                            }
                        }
                    }

                    recipies.Add(r);
                }
            }


            FrmLoading.setText("Generating Local Inventory Lists...");
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
            if (lootIndex > (items.Count - 1))
            {
                lootIndex = items.Count - 1;
            }
            while ((lootIndex > -1) && (items[lootIndex].id > lootID))
            {
                lootIndex--;
            }
            while ((lootIndex < items.Count) && (items[lootIndex].id < lootID))
            {
                lootIndex++;
            }

            if ((lootIndex <= -1) || (lootIndex >= items.Count) || (items[lootIndex].id != lootID))
            {
                throw new IndexOutOfRangeException("ID: " + lootID + " not found in loot list");
            }

            return items[lootIndex];
        }
    }
}
