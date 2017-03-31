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
            lvItems.SuspendLayout();

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

            lvItems.Columns[0].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvItems.Columns[0].Width = -2;

            lvItems.ResumeLayout();
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
            lvCreationPaths.SuspendLayout();
            lvItemHistory.SuspendLayout();

            lvCreationPaths.Items.Clear();
            lvItemHistory.Items.Clear();
            if (lvItems.SelectedItems.Count == 0)
            {
                generateHistory();
                nudOwned.Value = 0;
                txtDescription.Text = "";
            }
            else
            {
                LootItemQty liq = (LootItemQty)lvItems.SelectedItems[0].Tag;
                nudOwned.Value = liq.qty;
                txtDescription.Text = liq.item.description;
                updateCreationPaths(liq.item);
                generateHistory(liq.item.id);
            }

            lvCreationPaths.ResumeLayout();
            lvItemHistory.ResumeLayout();
        }

        /// <summary>
        /// populates the item creation paths in the middle of the right side
        /// </summary>
        /// <param name="item"></param>
        private void updateCreationPaths(LootItem item)
        {
            /// TODO: look into multi-step recipies, maybe convert the lvCreationPaths control to a tree

            //remove extra ingredient columns
            for (int i = lvCreationPaths.Columns.Count-1; i > 3; i--)
            {
                lvCreationPaths.Columns.RemoveAt(i);
            }
            
            //loop through each recipie that matches this item
            IEnumerable<Recipie> recipieLines = Program.recipies.Where(x => x.result == item);
            foreach(Recipie r in recipieLines)
            {
                ListViewItem row = new ListViewItem();
                row.SubItems.Add(r.profession);
                row.SubItems.Add(r.crafterLevel);
                row.SubItems.Add(r.resultQty.ToString());

                //add columns for each ingredient
                for (int i=0; i < r.ingredients.Count; i++)
                {
                    LootItemQty ingredient = r.ingredients[i];
                    if (lvCreationPaths.Columns.Count < ((i*2)+3))
                    {
                        lvCreationPaths.Columns.Add("Ingredient " + i);
                        lvCreationPaths.Columns.Add("# Needed");
                    }

                    row.SubItems.Add(ingredient.item.name);
                    row.SubItems.Add(ingredient.qty.ToString());
                }

                lvCreationPaths.Items.Add(row);
            }
            foreach(ColumnHeader col in lvCreationPaths.Columns)
            {
                col.AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
                col.Width = -2;
            }
        }

        /// <summary>
        /// populates the history panel in the lower right based on the given where clause for the current inventory set
        /// </summary>
        /// <param name="itemToSearch">the id of the item to limit the history to, (use the default of -1 for all)</param>
        private void generateHistory(int itemToSearch = -1)
        {
            IEnumerable<HistoryRecord> rows;
            if(itemToSearch == -1)
            {
                rows = inventory.history.AsEnumerable();
            }
            else
            {
                rows = inventory.history.Where(x => x.liq.item.id == itemToSearch);
            }

            foreach(HistoryRecord hr in rows)
            {
                ListViewItem row = new ListViewItem(hr.dateTime.ToString("MMMM dd, yyyy h:mm tt"));
                row.SubItems.Add(hr.qtyChanged.ToString());
                row.SubItems.Add(hr.liq.item.name);
                row.SubItems.Add(hr.note);

                row.Tag = hr;

                lvItemHistory.Items.Add(row);
            }

            lvItemHistory.Columns[0].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvItemHistory.Columns[0].Width = -2;
            lvItemHistory.Columns[2].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvItemHistory.Columns[2].Width = -2;
            lvItemHistory.Columns[3].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvItemHistory.Columns[3].Width = -2;
        }

        private void btnMake_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Event handler for the add gold button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAddGold_Click(object sender, EventArgs e)
        {
            //Don't do anything it it's a quantity of 0
            if (nudAddGold.Value == 0M)
            {
                return;
            }

            liqGold.qty += (int)nudAddGold.Value;

            nudGold.Value = liqGold.qty;

            HistoryRecord hr = new HistoryRecord();
            hr.liq = liqGold;
            hr.qtyChanged = (int)nudAddGold.Value;

            inventory.history.Insert(0, hr);

            //reset the field to avoid double adds
            nudAddGold.Value = 0M;

            //if it's the current item update other related fields
            if ((lvItems.SelectedItems.Count > 0) && (lvItems.SelectedItems[0].Tag == liqGold))
            {
                nudOwned.Value = liqGold.qty;

                lvItemHistory.SuspendLayout();
                lvItemHistory.Items.Clear();
                generateHistory(liqGold.item.id);
                lvItemHistory.ResumeLayout();
            }

            //if no item selected, update overall history
            if (lvItems.SelectedItems.Count == 0)
            {
                lvItemHistory.SuspendLayout();
                lvItemHistory.Items.Clear();
                generateHistory(liqGold.item.id);
                lvItemHistory.ResumeLayout();
            }

            //if it's in the list of items, update that
            foreach (ListViewItem lvi in lvItems.Items)
            {
                if(lvi.Tag == liqGold)
                {
                    lvItems.SuspendLayout();
                    lvi.SubItems[1].Text = liqGold.qty.ToString();
                    lvItems.ResumeLayout();
                }
            }
        }

        /// <summary>
        /// event handler for the add items button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAddItems_Click(object sender, EventArgs e)
        {
            //Don't do anything it it's a quantity of 0, or if there is no item selected
            if ((nudAddItems.Value == 0M) || (lvItems.SelectedItems.Count == 0))
            {
                return;
            }

            LootItemQty liq = (LootItemQty)lvItems.SelectedItems[0].Tag;

            liq.qty += (int)nudAddItems.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.liq = liq;
            hr.qtyChanged = (int)nudAddItems.Value;

            inventory.history.Insert(0, hr);

            //reset the field to avoid double adds
            nudAddItems.Value = 0M;

            //update # owned
            nudOwned.Value = liq.qty;

            //if it's the gold item, update other related fields
            if (liq == liqGold)
            {
                nudGold.Value = liqGold.qty;
            }

            //update history window
            lvItemHistory.SuspendLayout();
            lvItemHistory.Items.Clear();
            generateHistory(liqGold.item.id);
            lvItemHistory.ResumeLayout();

            //update the list of items
            foreach (ListViewItem lvi in lvItems.Items)
            {
                if (lvi.Tag == liq)
                {
                    lvItems.SuspendLayout();
                    lvi.SubItems[1].Text = liq.qty.ToString();
                    lvItems.ResumeLayout();
                }
            }
        }
    }
}
