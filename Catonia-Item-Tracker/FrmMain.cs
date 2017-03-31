using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Catonia_Item_Tracker
{
    public partial class FrmMain : Form
    {
        /// <summary>
        /// reference to the loot item "Gold" for use in the numeric up/down field
        /// </summary>
        private LootItemQty liqGold = Program.onHand.loot.First(x => x.item.name.Equals("Gold"));

        /// <summary>
        /// current list of items shown in the left listview
        /// </summary>
        internal IEnumerable<LootItemQty> itemList = null;

        private Inventory inventory = Program.onHand;

        /// <summary>
        /// entry point
        /// </summary>
        public FrmMain()
        {
            InitializeComponent();

            nudGold.Value = liqGold.qty;

            updateLvItems(inventory.loot);
        }

        /// <summary>
        /// updates the list of item in the left hand list view control to match the given list
        /// </summary>
        /// <remarks>does not clear filters or sorts</remarks>
        /// <param name="newItemList">The new list of items to use</param>
        private void updateLvItems(IEnumerable<LootItemQty> newItemList)
        {
            itemList = newItemList;

            lvItems.Items.Clear();
            foreach (LootItemQty liq in newItemList)
            {
                ListViewItem row = new ListViewItem(new string[] { liq.item.name,
                                                                   liq.qty.ToString(),
                                                                   liq.item.cost.ToString() });
                row.Tag = liq;
                lvItems.Items.Add(row);
            }
        }

        /// <summary>
        /// event handler for on hand radio button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void rbOnHand_CheckedChanged(object sender, EventArgs e)
        {
            btnTransfer.Text = "To NPCs";
            inventory = Program.onHand;
            updateLvItems(inventory.loot.Where(x => x.item.name.Contains(txtSearch.Text)));
        }

        /// <summary>
        /// event handler for left behind radio button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void rbLeftBehind_CheckedChanged(object sender, EventArgs e)
        {
            btnTransfer.Text = "To Party";
            inventory = Program.leftBehind;
            updateLvItems(inventory.loot.Where(x => x.item.name.Contains(txtSearch.Text)));
        }

        /// <summary>
        /// event handler for the search bar typing a single character
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtSearch_KeyUp(object sender, KeyEventArgs e)
        {
            txtSearch_TextChanged(sender, e);
        }

        /// <summary>
        /// event handler for the search bar having a new value, (doesn't auto-run till you leave the field)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            /// TODO: check if this is run twice due to keyup then this being called
            updateLvItems(inventory.loot.Where(x => x.item.name.Contains(txtSearch.Text)));
        }

        /// <summary>
        /// event handler for a different item being selected in the left items list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            lvCreationPaths.Items.Clear();
            lvItemHistory.Items.Clear();
            if (lvItems.SelectedItems.Count == 0)
            {
                generateHistory("1=1");
            }
            else
            {
                LootItemQty liq = (LootItemQty)lvItems.SelectedItems[0].Tag;
                nudOwned.Value = liq.qty;
                updateCreationPaths(liq.item);
                generateHistory("itemID = " + liq.item.id);
            }
        }

        /// <summary>
        /// populates the item creation paths in the middle of the right side
        /// </summary>
        /// <param name="item"></param>
        private void updateCreationPaths(LootItem item)
        {
            /// TODO: build this, need to update the number of columns, or maybe convert the lvCreationPaths control to a tree
            throw new NotImplementedException();
        }

        /// <summary>
        /// populates the history panel in the lower right based on the given where clause for the current inventory set
        /// </summary>
        /// <param name="where">the where clause to limit the history to</param>
        private void generateHistory(string where)
        {
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                string sql = @"SELECT *
                               FROM history
                               WHERE " + where + @"
                                 AND inventory = " + inventory.location.Replace("'", "''") + @"
                               ORDER BY modificationDate desc";
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    using(SqlDataReader reader = comm.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            LootItemQty liq = inventory.findLoot((int)reader["itemID"]);
                            ListViewItem row = new ListViewItem();
                            row.SubItems["dateTime"].Text = ((DateTime)reader["modificationDate"]).ToString("MMMM dd, yyyy");
                            row.SubItems["numAdded"].Text = ((int)reader["qty"]).ToString();
                            row.SubItems["item"].Text = liq.item.name;
                            row.SubItems["note"].Text = (string)reader["note"];

                            row.Tag = liq;

                            lvItems.Items.Add(row);
                        }
                    }
                }
            }
        }
    }
}
