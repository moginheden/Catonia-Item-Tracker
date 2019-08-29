﻿using System;
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
                            item.type = (string)reader["type"];
                            item.subType = (string)reader["subType"];

                            items.Add(item.id, item);
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
                    r.result = Program.items[(int)row["result"]];
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
                                InventoryItem iq = new InventoryItem();
                                iq.item = Program.items[(int)reader["ingredient"]];
                                iq.qty = (int)reader["qty"];
                                r.ingredients.Add(iq);
                            }
                        }
                    }

                    recipies.Add(r);
                }


                FrmLoading.setText("Generating Local Inventory Lists...");
                inventories = new Dictionary<string, Inventory>();
                inventories.Add("On Hand", new Inventory("On Hand"));
                string selectLootLocations = @"select distinct location from lootByLocation where location != 'On Hand'";
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
