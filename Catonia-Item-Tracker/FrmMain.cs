using System;
using System.Collections;
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
        public const string defaultTitle = "Catonia Item Tracker v0.3";

        /// <summary>
        /// class to sort the item list with the 0 qty at the bottom, then by clicked column
        /// </summary>
        class lvItemComparer : IComparer
        {
            private int col;
            private System.Windows.Forms.SortOrder order;
            public lvItemComparer()
            {
                col = 0;
                order = System.Windows.Forms.SortOrder.Ascending;
            }
            public lvItemComparer(int column, System.Windows.Forms.SortOrder order)
            {
                col = column;
                this.order = order;
            }
            public int Compare(object x, object y)
            {
                int returnVal = -1;

                if ((col == 1) || (col == 2) || (col == 3))
                {
                    returnVal = int.Parse(((ListViewItem)x).SubItems[col].Text).CompareTo(int.Parse(((ListViewItem)y).SubItems[col].Text));
                }
                else
                {
                    returnVal = String.Compare(((ListViewItem)x).SubItems[col].Text, ((ListViewItem)y).SubItems[col].Text);
                }

                if (order == System.Windows.Forms.SortOrder.Descending)
                {
                    returnVal *= -1;
                }

                if ((((ListViewItem)x).SubItems[1].Text != "0") && (((ListViewItem)y).SubItems[1].Text == "0"))
                {
                    return -1;
                }
                else if ((((ListViewItem)x).SubItems[1].Text == "0") && (((ListViewItem)y).SubItems[1].Text != "0"))
                {
                    return 1;
                }

                return returnVal;
            }
        }

        /// <summary>
        /// reference to the loot item "Gold" for use in the numeric up/down field
        /// </summary>
        private ItemQty iqGold = Program.onHand.loot.First(x => x.item.name.Equals("Gold Coins"));

        /// <summary>
        /// The inventory list this form is currently using
        /// </summary>
        internal Inventory inventory = Program.onHand;
        private int sortColumn;

        /// <summary>
        /// entry point
        /// </summary>
        public FrmMain()
        {
            InitializeComponent();

            ResetText();

            using (new TriggerLock())
            {
                nudGold.Value = iqGold.qty;
            }

            //setup column size for item list
            lvItems.Columns[0].Width = -2;

            //setup column size for recipie listviews
            lvRecipiesMakingItem.Columns[0].Width = -2;
            lvRecipiesMakingItem.Columns[1].Width = -2;
            lvRecipiesMakingItem.Columns[2].Width = -2;

            lvRecipiesUsingItem.Columns[0].Width = -2;
            lvRecipiesUsingItem.Columns[1].Width = -2;
            lvRecipiesUsingItem.Columns[2].Width = -2;

            //set previous history list
            lvItemHistory.SuspendLayout();
            lvItemHistory.Items.Clear();
            generateHistory();
            lvItemHistory.ResumeLayout();

            //set initial item list
            sortColumn = 0;
            lvItems.Sorting = System.Windows.Forms.SortOrder.Ascending;
            updateLvItems(inventory.loot);
        }

        /// <summary>
        /// resets the title of this form to it's default value
        /// </summary>
        public override void ResetText()
        {
            if(this.InvokeRequired)
            {
                Program.mainForm.Invoke(new Action(() =>
                {
                    ResetText();
                }));
            }

            Text = defaultTitle;
        }

        /// <summary>
        /// updates the form to reflect a changed item
        /// </summary>
        /// <param name="item">The item that was updated</param>
        internal void updateItem(Item item)
        {
            ItemQty iq = inventory.findLoot(item.id);

            //update main item list
            lvItems.SuspendLayout();

            //try to update an existing row
            bool found = false;
            foreach (ListViewItem row in lvItems.Items)
            {
                if (((ItemQty)row.Tag).item.id == item.id)
                {
                    //update row
                    row.SubItems[0].Text = item.name;
                    row.SubItems[1].Text = iq.qty.ToString();
                    row.SubItems[2].Text = item.cost.ToString();
                    row.SubItems[3].Text = (item.cost * iq.qty).ToString();
                    row.SubItems[4].Text = getProfessionsForItem(item);
                    row.SubItems[5].Text = item.usable.ToString();
                    found = true;

                    //select new item
                    lvItems.SelectedItems.Clear();
                    row.Selected = true;
                    row.Focused = true;
                }
            }

            //if no row is found, add a new one at the bottom
            if(!found)
            {
                //create noew row
                ListViewItem row = new ListViewItem(new string[] { item.name,
                                                                   iq.qty.ToString(),
                                                                   item.cost.ToString(),
                                                                   (item.cost * iq.qty).ToString(),
                                                                   getProfessionsForItem(item),
                                                                   item.usable.ToString() });
                row.Tag = iq;
                        
                //add to list
                lvItems.Items.Add(row);

                //select new item
                lvItems.SelectedItems.Clear();
                row.Selected = true;
                row.Focused = true;
            }

            //resize name column
            lvItems.Columns[0].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvItems.Columns[0].Width = -2;

            //re-sort
            lvItems.Sort();

            lvItems.ResumeLayout();

            //update description and recipies if it's the active item
            if((lvItems.SelectedItems.Count > 0) && (item.id == ((ItemQty)lvItems.SelectedItems[0].Tag).item.id))
            {
                txtDescription.Text = item.description;

                lvRecipiesMakingItem.SuspendLayout();
                lvRecipiesUsingItem.SuspendLayout();
                lvRecipiesMakingItem.Items.Clear();
                lvRecipiesUsingItem.Items.Clear();
                updateCreationPaths(item);
                lvRecipiesMakingItem.ResumeLayout();
                lvRecipiesUsingItem.ResumeLayout();
            }
        }

        /// <summary>
        /// returns a string showing what prefessions use the given item
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        private string getProfessionsForItem(Item item)
        {
            string returnVal = "";
            ItemQty compare = new ItemQty() { item = item };
            foreach(Recipie r in Program.recipies)
            {
                //if the recipie produces or uses the item, and the profession is not listed yet, add it
                if(((r.result == item) || (r.ingredients.Contains(compare)))
                   && (!returnVal.Contains(r.profession)))
                {
                    returnVal += r.profession + " ";
                }
            }

            return returnVal;
        }

        /// <summary>
        /// updates the list of item in the left hand list view control to match the given list
        /// </summary>
        /// <remarks>does not clear filters or sorts</remarks>
        /// <param name="newItemList">The new list of items to use</param>
        private void updateLvItems(IEnumerable<ItemQty> newItemList)
        {
            lvItems.SuspendLayout();
            
            lvItems.Items.Clear();
            foreach (ItemQty iq in newItemList.OrderBy(o => (o.qty == 0)).ThenBy(o => o.item.name))
            {
                ListViewItem row = new ListViewItem(new string[] { iq.item.name,
                                                                   iq.qty.ToString(),
                                                                   iq.item.cost.ToString(),
                                                                   (iq.item.cost * iq.qty).ToString(),
                                                                   getProfessionsForItem(iq.item),
                                                                   iq.item.usable.ToString()});
                row.Tag = iq;
                lvItems.Items.Add(row);
            }

            //auto-size the name column
            lvItems.Columns[0].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
            lvItems.Columns[0].Width = -2;

            //sort itemList
            lvItems.ListViewItemSorter = new lvItemComparer(sortColumn, lvItems.Sorting);
            lvItems.Sort();

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
        /// event handler for the "search descriptions" checkbox being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cbSearchDescriptions_CheckedChanged(object sender, EventArgs e)
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
            string search = txtSearch.Text.ToLower().Replace('-', ' ');
            if(cbSearchDescriptions.Checked)
            {
                updateLvItems(inventory.loot.Where(x => (x.item.name.ToLower().Replace('-', ' ').Contains(search)
                                                        || x.item.description.ToLower().Replace('-', ' ').Contains(search))));
            }
            else
            {
                updateLvItems(inventory.loot.Where(x => x.item.name.ToLower().Replace('-', ' ').Contains(search)));
            }
        }

        /// <summary>
        /// event handler for a different item being selected in the left items list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            /// TODO: check why this isn't called when the search eliminates the current item
            lvRecipiesMakingItem.SuspendLayout();
            lvRecipiesUsingItem.SuspendLayout();
            lvItemHistory.SuspendLayout();

            lvRecipiesMakingItem.Items.Clear();
            lvRecipiesUsingItem.Items.Clear();
            lvItemHistory.Items.Clear();
            if (lvItems.SelectedItems.Count == 0)
            {
                generateHistory();
                using (new TriggerLock())
                {
                    nudOwned.Value = 0;
                }
                txtDescription.Text = "";
            }
            else
            {
                ItemQty iq = (ItemQty)lvItems.SelectedItems[0].Tag;
                using (new TriggerLock())
                {
                    nudOwned.Value = iq.qty;
                }
                txtDescription.Text = iq.item.description;
                updateCreationPaths(iq.item);
                generateHistory(iq.item.id);
            }

            lvRecipiesMakingItem.ResumeLayout();
            lvRecipiesUsingItem.ResumeLayout();
            lvItemHistory.ResumeLayout();
        }

        /// <summary>
        /// populates the item creation paths in the middle of the right side
        /// </summary>
        /// <param name="item"></param>
        private void updateCreationPaths(Item item)
        {
            /// TODO: look into multi-step recipies, maybe convert the list views to control to trees

            //make a fake ItemQty to compare the ingredients to.  Since we overrode the equals on ItemQty to only check items qty is irrelivant.
            ItemQty comparison = new ItemQty() { item = item, qty = 0 };
            
            //remove extra ingredient columns
            for (int i = lvRecipiesMakingItem.Columns.Count - 1; i > 3; i--)
            {
                lvRecipiesMakingItem.Columns.RemoveAt(i);
            }

            for (int i = lvRecipiesUsingItem.Columns.Count - 1; i > 3; i--)
            {
                lvRecipiesUsingItem.Columns.RemoveAt(i);
            }

            //loop through each recipie
            foreach (Recipie r in Program.recipies)
            {
                //if it can make this item
                if (r.result == item)
                {
                    ListViewItem row = new ListViewItem();
                    row.SubItems.Add(r.profession);
                    row.SubItems.Add(r.crafterLevel);
                    row.SubItems.Add(r.resultQty.ToString());

                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        ItemQty ingredient = r.ingredients[i];
                        if (lvRecipiesMakingItem.Columns.Count < ((i * 2) + 3))
                        {
                            lvRecipiesMakingItem.Columns.Add("Ingredient " + i);
                            lvRecipiesMakingItem.Columns.Add("# Needed");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());
                    }

                    lvRecipiesMakingItem.Items.Add(row);
                }

                //if it uses this item
                if (r.ingredients.Contains(comparison))
                {
                    ListViewItem row = new ListViewItem();
                    row.SubItems.Add(r.profession);
                    row.SubItems.Add(r.crafterLevel);
                    row.SubItems.Add(r.resultQty.ToString());

                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        ItemQty ingredient = r.ingredients[i];
                        if (lvRecipiesUsingItem.Columns.Count < ((i * 2) + 3))
                        {
                            lvRecipiesUsingItem.Columns.Add("Ingredient " + i);
                            lvRecipiesUsingItem.Columns.Add("# Needed");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());
                    }

                    lvRecipiesUsingItem.Items.Add(row);
                }
            }
            foreach(ColumnHeader col in lvRecipiesMakingItem.Columns)
            {
                col.AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
                col.Width = -2;
            }
            foreach (ColumnHeader col in lvRecipiesUsingItem.Columns)
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
            /// TODO: limit this generation to only updating the top couple of rows instead of re-generating everything every time
            IEnumerator<HistoryRecord> rows = inventory.getHistory();

            while (rows.MoveNext())
            {
                HistoryRecord hr = rows.Current;

                if ((itemToSearch == -1) || (hr.iq.item.id == itemToSearch))
                {
                    ListViewItem row = new ListViewItem(hr.dateTime.ToString("MMMM dd, yyyy h:mm tt"));
                    row.SubItems.Add(hr.qtyChanged.ToString());
                    row.SubItems.Add(hr.iq.item.name);
                    row.SubItems.Add(hr.note);

                    row.Tag = hr;

                    lvItemHistory.Items.Add(row);
                }
            }
        }

        private void btnMake_Click(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// event handler for the tota amount of gold being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void nudGold_ValueChanged(object sender, EventArgs e)
        {
            if (TriggerLock.IsLocked)
            {
                return;
            }

            //create or update the history record
            int difference = (int)nudGold.Value - iqGold.qty;

            HistoryRecord hr = inventory.latestHistory();
            if ((hr != null)
                && (hr.iq == iqGold)
                && (hr.dateTime > DateTime.Now.AddSeconds(-10)))
            {
                hr.qtyChanged += difference;
                inventory.updateHistory(hr);
            }
            else
            {
                hr = new HistoryRecord();
                hr.iq = iqGold;
                hr.qtyChanged = difference;
                inventory.addHistory(hr);
            }

            //update the inventory
            iqGold.qty = (int)nudGold.Value;

            //update other ui fields
            updateItemQty(iqGold);
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

            iqGold.qty += (int)nudAddGold.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.iq = iqGold;
            hr.qtyChanged = (int)nudAddGold.Value;

            inventory.addHistory(hr);

            //reset the field to avoid double adds
            nudAddGold.Value = 0M;

            updateItemQty(iqGold);
        }

        /// <summary>
        /// event handler for the tota amount of gold being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void nudOwned_ValueChanged(object sender, EventArgs e)
        {
            /// TODO: look into 2nd window not always capturing a change soon after another one
            if (TriggerLock.IsLocked)
            {
                return;
            }

            //Don't do anything if there is no item selected
            if (lvItems.SelectedItems.Count == 0)
            {
                nudOwned.Value = 0M;
                return;
            }

            ItemQty iq = (ItemQty)lvItems.SelectedItems[0].Tag;

            //create or update the history record
            HistoryRecord hr = inventory.latestHistory();
            int difference = (int)nudOwned.Value - iq.qty;

            if ((hr != null)
                && (hr.iq == iq)
                && (hr.dateTime > DateTime.Now.AddSeconds(-10)))
            {
                hr.qtyChanged += difference;
                inventory.updateHistory(hr);
            }
            else
            {
                hr = new HistoryRecord();
                hr.iq = iq;
                hr.qtyChanged = difference;
                inventory.addHistory(hr);
            }

            //update the inventory
            iq.qty = (int)nudOwned.Value;

            updateItemQty(iq);
        }

        /// <summary>
        /// event handler for the add items button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnAddItems_Click(object sender, EventArgs e)
        {
            //Don't do anything if it's a quantity of 0, or if there is no item selected
            if ((nudAddItems.Value == 0M) || (lvItems.SelectedItems.Count == 0))
            {
                return;
            }

            ItemQty iq = (ItemQty)lvItems.SelectedItems[0].Tag;

            iq.qty += (int)nudAddItems.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.iq = iq;
            hr.qtyChanged = (int)nudAddItems.Value;

            inventory.addHistory(hr);

            //reset the field to avoid double adds
            nudAddItems.Value = 0M;

            updateItemQty(iq);
        }

        /// <summary>
        /// Updates the gui fields related to a given ItemQty, (all the cases where it's quantity is used, and history)
        /// </summary>
        /// <param name="iq"></param>
        internal void updateItemQty(ItemQty iq)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new Action(() => updateItemQty(iq)));  // do stuff on UI thread, not here
                return;
            }
            
            //if it's the gold item, update it's numeric up down field
            if (iq == iqGold)
            {
                using (new TriggerLock())
                {
                    nudGold.Value = iqGold.qty;
                }
            }

            //if it's the current item update other related fields
            if ((lvItems.SelectedItems.Count > 0) && ((ItemQty)lvItems.SelectedItems[0].Tag == iq))
            {
                using (new TriggerLock())
                {
                    nudOwned.Value = iq.qty;
                }

                lvItemHistory.SuspendLayout();
                lvItemHistory.Items.Clear();
                generateHistory(iq.item.id);
                lvItemHistory.ResumeLayout();
            }

            //if no item selected, update overall history
            if (lvItems.SelectedItems.Count == 0)
            {
                lvItemHistory.SuspendLayout();
                lvItemHistory.Items.Clear();
                generateHistory();
                lvItemHistory.ResumeLayout();
            }

            //if it's in the list of items, update that
            foreach (ListViewItem lvi in lvItems.Items)
            {
                if ((ItemQty)lvi.Tag == iq)
                {
                    lvItems.SuspendLayout();
                    lvi.SubItems[1].Text = iq.qty.ToString();
                    lvi.SubItems[3].Text = (iq.item.cost * iq.qty).ToString();
                    lvItems.Sort();
                    lvItems.ResumeLayout();
                }
            }
        }

        /// <summary>
        /// event handler for dealing with the selected recipie being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvRecipies_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListView lv = (ListView)sender;

            ListView otherLv = lvRecipiesMakingItem;
            if(lv == lvRecipiesMakingItem)
            {
                otherLv = lvRecipiesUsingItem;
            }

            otherLv.SelectedIndices.Clear();
        }

        /// <summary>
        /// Event handler for the context menu opening, sets if the edit option should show, (only if a single item is selected.)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cmsItemList_Opening(object sender, CancelEventArgs e)
        {
            editItemToolStripMenuItem.Visible = (lvItems.SelectedItems.Count == 1);
        }

        /// <summary>
        /// Event handler for the edit item context menu option
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void editItemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmItem itemForm = new FrmItem(((ItemQty)lvItems.SelectedItems[0].Tag).item);
            itemForm.Show();
        }

        /// <summary>
        /// Event handler for the create new item context menu option
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void createNewItemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmItem itemForm = new FrmItem();
            itemForm.Show();
        }

        /// <summary>
        /// Event Handler for the column being clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvItems_ColumnClick(object sender, ColumnClickEventArgs e)
        {
            // Determine whether the column is the same as the last column clicked.
            if (e.Column != sortColumn)
            {
                // Set the sort column to the new column.
                sortColumn = e.Column;
                // Set the sort order to ascending by default.
                lvItems.Sorting = System.Windows.Forms.SortOrder.Ascending;
            }
            else
            {
                // Determine what the last sort order was and change it.
                if (lvItems.Sorting == System.Windows.Forms.SortOrder.Ascending)
                    lvItems.Sorting = System.Windows.Forms.SortOrder.Descending;
                else
                    lvItems.Sorting = System.Windows.Forms.SortOrder.Ascending;
            }

            // Set the ListViewItemSorter property to a new ListViewItemComparer
            // object.
            lvItems.ListViewItemSorter = new lvItemComparer(e.Column, lvItems.Sorting);

            // Call the sort method to manually sort.
            lvItems.Sort();
        }
    }
}
