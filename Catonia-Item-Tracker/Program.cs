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
        public static Dictionary<int, Item> items = null;

        /// <summary>
        /// The list of items referenced by where they are stored
        /// </summary>
        public static Dictionary<string, Inventory> inventories = null;

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
            ///TODO: clean up duplicate entries in inventory sql table caused by multiple recipies using an item
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

            HistoryRecord hrCloser = new HistoryRecord() { ii = new InventoryItem() { item = new Item() { id = int.MaxValue } } };
            foreach(KeyValuePair<string, Inventory> i in inventories)
            {
                i.Value.addHistory(hrCloser);
            }
        }

        /// <summary>
        /// Loads all the items and recipies from the database
        /// </summary>
        public static void loadAllFromDB()
        {
            items = new Dictionary<int, Item>();
            recipies = new List<Recipie>();

            FrmLoading.setText("Connecting to DB...");
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                FrmLoading.setText("Loading Items from DB...");
                //load loot
                DataSet dsItems = new DataSet();
                string selectLoot = @"SELECT *
								  FROM items
								  ORDER BY id";
                using (SqlDataAdapter da = new SqlDataAdapter(selectLoot, dataConnection))
                {
                    da.Fill(dsItems);
                }

                foreach (DataRow row in dsItems.Tables[0].Rows)
                {
                    Item item = new Item();
                    item.id = (int)row["id"];
                    item.name = (string)row["name"];
                    item.cost = (int)row["cost"];
                    item.description = (string)row["description"];
                    item.type = (string)row["type"];
                    item.subType = (string)row["subType"];

                    items.Add(item.id, item);
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

                DataSet dsRecipieIngredients = new DataSet();
                string selectIngredients = @"SELECT *
											 FROM recipieIngredients
                                             ORDER BY recipieID";
                using (SqlDataAdapter da = new SqlDataAdapter(selectIngredients, dataConnection))
                {
                    da.Fill(dsRecipieIngredients);
                }

                int iLine = 0;
                foreach (DataRow row in dsRecipies.Tables[0].Rows)
                { 
                    Recipie r = new Recipie();
                    r.id = (int)row["id"];
                    r.result = Program.items[(int)row["result"]];
                    r.resultQty = (int)row["resultQty"];
                    r.profession = (string)row["profession"];
                    r.crafterLevel = (string)row["crafterLevel"];

                    while(iLine < dsRecipieIngredients.Tables[0].Rows.Count)
                    {
                        if(((int)dsRecipieIngredients.Tables[0].Rows[iLine]["recipieID"]) == r.id)
                        {
                            InventoryItem iq = new InventoryItem();
                            iq.item = Program.items[(int)dsRecipieIngredients.Tables[0].Rows[iLine]["ingredient"]];
                            iq.qty = (int)dsRecipieIngredients.Tables[0].Rows[iLine]["qty"];
                            r.ingredients.Add(iq);
                        }
                        else if(((int)dsRecipieIngredients.Tables[0].Rows[iLine]["recipieID"]) > r.id)
                        {
                            break;
                        }
                        iLine++;
                    }

                    recipies.Add(r);
                }


                FrmLoading.setText("Generating Local Inventory Lists...");
                inventories = new Dictionary<string, Inventory>();
                inventories.Add("On Hand", new Inventory("On Hand"));
                string selectLootLocations = @"select distinct location from inventory where location != 'On Hand'";
                using (SqlCommand commIngredients = new SqlCommand(selectLootLocations, dataConnection))
                {
                    using (SqlDataReader reader = commIngredients.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            inventories.Add(reader.GetString(0), new Inventory(reader.GetString(0)));
                        }
                    }
                }

            }
        }
    }
}
