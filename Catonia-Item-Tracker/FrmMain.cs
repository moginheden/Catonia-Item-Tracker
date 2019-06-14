﻿using System;
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
                else if(col == 6)
                {
                    returnVal = DateTime.Compare((DateTime)((ListViewItem)x).SubItems[col].Tag, (DateTime)((ListViewItem)y).SubItems[col].Tag);
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
        /// the column # that was clicked last in the inventory list
        /// </summary>
        private int sortColumnInventory = 0;

        /// <summary>
        /// reference to the loot item "Gold" for use in the numeric up/down field
        /// </summary>
        private ItemQty iqGold = Program.inventories["On Hand"].loot.First(x => x.item.name.Equals("Gold Coins"));

        /// <summary>
        /// The inventory list this form is currently using
        /// </summary>
        internal Inventory inventory = Program.inventories["On Hand"];

        /// <summary>
        /// The previously searched string to make sure we don't do weird things with the auto-complete if the text doesn't change
        /// </summary>
        private string oldSearch = "";

        /// <summary>
        /// entry point
        /// </summary>
        public FrmMain()
        {
            InitializeComponent();

            ResetText();

            foreach (KeyValuePair<string, Inventory> i in Program.inventories)
            {
                ddlInventories.Items.Add(i.Key);
            }
            ddlInventories.SelectedIndex = 0;
            

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
            try
            {
                lvItemHistory.BeginUpdate();
                lvItemHistory.Items.Clear();
                generateHistory();
            }
            finally
            {
                lvItemHistory.EndUpdate();
            }

            //set initial item list
            sortColumnInventory = 6;
            lvItems.Sorting = System.Windows.Forms.SortOrder.Descending;
            updateLvItems(inventory.loot, lvItems);
        }

        /// <summary>
        /// resets the title of this form to it's default value
        /// </summary>
        public override void ResetText()
        {
            if (this.InvokeRequired)
            {
                Program.mainForm.Invoke(new Action(() =>
                {
                    ResetText();
                }));
            }

            Text = "Catonia Item Tracker v" + Application.ProductVersion;
        }
        
        /// <summary>
         /// Sets the title of this form to the given value
         /// </summary>
        public void setText(string newText)
        {
            if (this.InvokeRequired)
            {
                Program.mainForm.Invoke(new Action(() =>
                {
                    setText(newText);
                }));
            }

            Text = newText;
        }

        /// <summary>
        /// updates the form to reflect a changed item
        /// </summary>
        /// <param name="item">The item that was updated</param>
        internal void updateItem(Item item)
        {
            ItemQty iq = inventory.findLoot(item.id);

            updateItem(item, iq);
        }

        private void updateItem(Item item, ItemQty iq)
        {
            try
            {
                //update main item list
                lvItems.BeginUpdate();

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
                        row.SubItems[5].Text = (item.usable ? "Y" : "N");
                        row.SubItems[6].Text = DateTime.Now.ToString("yyyy-MM-dd, h:mm tt");
                        row.SubItems[6].Tag = DateTime.Now;
                        found = true;

                        //select new item
                        lvItems.SelectedItems.Clear();
                        row.Selected = true;
                        row.Focused = true;
                    }
                }

                //if no row is found, add a new one at the bottom
                if (!found)
                {
                    //create new row
                    ListViewItem row = new ListViewItem(new string[] { item.name,
                                                                   iq.qty.ToString(),
                                                                   item.cost.ToString(),
                                                                   (item.cost * iq.qty).ToString(),
                                                                   getProfessionsForItem(item),
                                                                   (item.usable ? "Y" : "N") });
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
            }
            finally
            {
                lvItems.EndUpdate();
            }

            //update description and recipies if it's the active item
            if(lvItems.Visible && (lvItems.SelectedItems.Count > 0) && (item.id == ((ItemQty)lvItems.SelectedItems[0].Tag).item.id))
            {
                txtDescription.Text = item.description;

                try
                {
                    lvRecipiesMakingItem.BeginUpdate();
                    lvRecipiesUsingItem.BeginUpdate();
                    lvRecipiesMakingItem.Items.Clear();
                    lvRecipiesUsingItem.Items.Clear();
                    updateCreationPaths(item);
                }
                finally
                {
                    lvRecipiesMakingItem.EndUpdate();
                    lvRecipiesUsingItem.EndUpdate();
                }
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
                char marker = r.profession[0];
                if((r.profession[0] == 'B') && (r.profession[1] == 'o'))
                {
                    marker = 'O';
                }
                //if the recipie produces or uses the item, and the profession is not listed yet, add it
                if (((r.result == item) || (r.ingredients.Contains(compare)))
                   && (!returnVal.Contains(marker)))
                {
                    returnVal += marker;
                }
            }

            return returnVal;
        }

        /// <summary>
        /// updates the list of item in the left hand list view control to match the given list
        /// </summary>
        /// <remarks>does not clear sorts</remarks>
        /// <param name="newItemList">The new list of items to use</param>
        /// <param name="lvItemsToChange">The listview to update</param>
        private void updateLvItems(IEnumerable<ItemQty> newItemList, ListView lvItemsToChange)
        {
            try
            {
                lvItemsToChange.BeginUpdate();

                lvItemsToChange.Items.Clear();
                List<ListViewItem> rowsToAdd = new List<ListViewItem>(newItemList.Count());
                foreach (ItemQty iq in newItemList.OrderBy(o => (o.qty == 0)).ThenBy(o => o.item.name))
                {
                    if(iq.item.id != 0) //don't add gold to the list
                    {
                        DateTime lastMod = inventory.getLatestModification(iq.item.id);
                        ListViewItem row = new ListViewItem(new string[] { iq.item.name,
                                                                       iq.qty.ToString(),
                                                                       iq.item.cost.ToString(),
                                                                       (iq.item.cost * iq.qty).ToString(),
                                                                       getProfessionsForItem(iq.item),
                                                                       (iq.item.usable ? "Y" : "N"),
                                                                       lastMod.ToString("yyyy-MM-dd, h:mm tt")});
                        row.SubItems[6].Tag = lastMod;
                        row.Tag = iq;
                        rowsToAdd.Add(row);
                    }
                }
                lvItemsToChange.Items.AddRange(rowsToAdd.ToArray());

                //auto-size the name column
                lvItemsToChange.Columns[0].Width = -2;

                //sort itemList
                lvItemsToChange.ListViewItemSorter = new lvItemComparer(sortColumnInventory, lvItemsToChange.Sorting);
                lvItemsToChange.Sort();
            }
            finally
            {
                lvItemsToChange.EndUpdate();
            }
        }

        /// <summary>
        /// event handler for changing what inventory we are looking at
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void DdlInventories_SelectedIndexChanged(object sender, EventArgs e)
        {
            inventory = Program.inventories[ddlInventories.SelectedItem.ToString()];
            updateLvItems(inventory.loot, lvItems);
        }

        /// <summary>
        /// event handler for the "search descriptions" checkbox being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cbSearchDescriptions_CheckedChanged(object sender, EventArgs e)
        {
            oldSearch = "";
            TxtSearch_KeyUp(txtSearch, new KeyEventArgs(Keys.A));
        }

        /// <summary>
        /// event handler for the search bar having a new value
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void TxtSearch_KeyUp(object sender, KeyEventArgs e)
        {
            //use keyUp event, as text changed traps too many other evengts.
            ComboBox oBox = (ComboBox)sender;
            string search = oBox.Text;

            //if hitting escape, close the drop
            if (e.KeyCode == Keys.Escape)
            {
                oBox.DroppedDown = false;
                TxtSearch_SelectedIndexChanged(sender, null);
                return;
            }

            //if hitting enter, close the drop, but use the newly selected value
            if ((e.KeyCode == Keys.Enter)
                || (e.KeyCode == Keys.Return))
            {
                oBox.DroppedDown = false;
                lvItems.SelectedItems.Clear();
                TxtSearch_SelectedIndexChanged(sender, null);
                return;
            }

            //if selecting with the arrow keys, don't clear the other options
            if ((e.KeyCode == Keys.Down) || (e.KeyCode == Keys.Up))
            {
                return;
            }

            //if the text hasn't changed, don't do anything
            if (search == oldSearch)
            {
                return;
            }
            oldSearch = search;

            //otherwise setup the dropdown options
            List<Item> results = new List<Item>();
            for(int i = 0; results.Count < 20 && i < lvItems.Items.Count; i++)
            {
                ListViewItem row = lvItems.Items[i];
                if ((((ItemQty)row.Tag).item.name.ToLower().Contains(search.ToLower()))
                    || (cbSearchDescriptions.Checked && (((ItemQty)row.Tag).item.description.ToLower().Contains(search.ToLower()))))
                {
                    results.Add(((ItemQty)row.Tag).item);
                }
            }

            //NOW THAT WE HAVE OUR FILTERED LIST, WE NEED TO RE-BIND IT WIHOUT CHANGING THE TEXT IN THE ComboBox.

            //1).UNREGISTER THE SELECTED EVENT BEFORE RE-BINDING, b/c IT TRIGGERS ON BIND.
            oBox.SelectedIndexChanged -= TxtSearch_SelectedIndexChanged; //don't select on typing.
            oBox.DataSource = results; //2).rebind to filtered list.
            oBox.SelectedIndexChanged += TxtSearch_SelectedIndexChanged;


            //3).show the user the new filtered list.
            oBox.DroppedDown = true; //this will overwrite the text in the ComboBox, so 4&5 put it back.

            //4).binding data source erases text, so now we need to put the user's text back,
            oBox.Text = search;
            oBox.SelectionStart = search.Length; //5). need to put the user's cursor back where it was.
        }

        private void TxtSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (txtSearch.SelectedItem != null)
            {
                foreach (ListViewItem row in lvItems.Items)
                {
                    if (((ItemQty)row.Tag).item.id == ((Item)txtSearch.SelectedItem).id)
                    {
                        lvItems.SelectedItems.Clear();
                        row.Selected = true;
                        row.Focused = true;
                    }
                }
            }

            //update the right panel
            lvItems_SelectedIndexChanged(null, null);
        }

        /// <summary>
        /// event handler for a different item being selected in the left items list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        internal void lvItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lvRecipiesMakingItem.BeginUpdate();
                lvRecipiesUsingItem.BeginUpdate();
                lvItemHistory.BeginUpdate();

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
            }
            finally
            {
                lvRecipiesMakingItem.EndUpdate();
                lvRecipiesUsingItem.EndUpdate();
                lvItemHistory.EndUpdate();
            }
        }

        /// <summary>
        /// populates the item creation paths in the middle of the right side
        /// </summary>
        /// <param name="item"></param>
        private void updateCreationPaths(Item item)
        {
            /// TODO: look into multi-step recipies, maybe convert the list views to control to trees

            //make a fake ItemQty to compare the ingredients to.  Since we overrode the equals on ItemQty to only check items, qty is irrelivant.
            ItemQty comparison = new ItemQty() { item = item, qty = 0 };
            
            //remove extra ingredient columns
            for (int i = lvRecipiesMakingItem.Columns.Count - 1; i > 3; i--)
            {
                lvRecipiesMakingItem.Columns.RemoveAt(i);
            }

            for (int i = lvRecipiesUsingItem.Columns.Count - 1; i > 4; i--)
            {
                lvRecipiesUsingItem.Columns.RemoveAt(i);
            }

            //loop through each recipie
            List<ListViewItem> rowsToAddToMake = new List<ListViewItem>();
            List<ListViewItem> rowsToAddToUse = new List<ListViewItem>();
            foreach (Recipie r in Program.recipies)
            {
                //if it can make this item
                if (r.result == item)
                {
                    ListViewItem row = new ListViewItem(r.profession);
                    row.SubItems.Add(r.crafterLevel);
                    row.SubItems.Add(r.resultQty.ToString());
                    row.SubItems.Add("");

                    int numWeCanMake = int.MaxValue;
                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        ItemQty ingredient = r.ingredients[i];
                        if (lvRecipiesMakingItem.Columns.Count < (((i+1) * 3) + 4))
                        {
                            lvRecipiesMakingItem.Columns.Add("Ingredient " + (i+1));
                            lvRecipiesMakingItem.Columns.Add("Uses");
                            lvRecipiesMakingItem.Columns.Add("Have");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());

                        int inInventory = inventory.findLoot(ingredient.item.id).qty;
                        row.SubItems.Add(inInventory.ToString());

                        if((inInventory / ingredient.qty) < numWeCanMake)
                        {
                            numWeCanMake = inInventory / ingredient.qty;
                        }
                    }

                    row.SubItems[3].Text = numWeCanMake.ToString();
                    row.Tag = r;

                    rowsToAddToMake.Add(row);
                }

                //if it uses this item
                if (r.ingredients.Contains(comparison))
                {
                    ListViewItem row = new ListViewItem(r.profession);
                    row.SubItems.Add(r.crafterLevel);
                    row.SubItems.Add(r.result.name);
                    lvRecipiesUsingItem.Columns[2].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
                    lvRecipiesUsingItem.Columns[2].Width = -2;
                    row.SubItems.Add(r.resultQty.ToString());
                    row.SubItems.Add("");

                    int numWeCanMake = int.MaxValue;

                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        ItemQty ingredient = r.ingredients[i];
                        if (lvRecipiesUsingItem.Columns.Count < (((i+1) * 3) + 5))
                        {
                            lvRecipiesUsingItem.Columns.Add("Ingredient " + (i+1));
                            lvRecipiesUsingItem.Columns.Add("Uses");
                            lvRecipiesUsingItem.Columns.Add("Have");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());

                        int inInventory = inventory.findLoot(ingredient.item.id).qty;
                        row.SubItems.Add(inInventory.ToString());

                        if ((inInventory / ingredient.qty) < numWeCanMake)
                        {
                            numWeCanMake = inInventory / ingredient.qty;
                        }
                    }

                    row.SubItems[4].Text = numWeCanMake.ToString();
                    row.Tag = r;

                    rowsToAddToUse.Add(row);
                }
            }
            lvRecipiesMakingItem.Items.AddRange(rowsToAddToMake.ToArray());
            lvRecipiesUsingItem.Items.AddRange(rowsToAddToUse.ToArray());

            foreach (ColumnHeader col in lvRecipiesMakingItem.Columns)
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

            List<ListViewItem> rowsToAdd = new List<ListViewItem>(inventory.countHistory());
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

                    rowsToAdd.Add(row);
                }
            }
            lvItemHistory.Items.AddRange(rowsToAdd.ToArray());
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
        /// event handler for the total amount of gold being changed
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
        /// Event handler for the buy button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnBuy_Click(object sender, EventArgs e)
        {
            //Don't do anything if it's a quantity of 0, or if there is no item selected
            if ((nudAddItems.Value == 0M) || (lvItems.SelectedItems.Count == 0))
            {
                return;
            }

            //update # items owned
            ItemQty iq = (ItemQty)lvItems.SelectedItems[0].Tag;

            iq.qty += (int)nudAddItems.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.iq = iq;
            hr.qtyChanged = (int)nudAddItems.Value;

            inventory.addHistory(hr);
            updateItemQty(iq);

            //update gold
            int valuePerItem = (int)nudAddGold.Value;
            if (valuePerItem == 0)
            {
                valuePerItem = iq.item.cost;
            }
            iqGold.qty -= valuePerItem * (int)nudAddItems.Value;

            HistoryRecord hrGold = new HistoryRecord();
            hrGold.iq = iqGold;
            hrGold.qtyChanged = valuePerItem * (int)nudAddItems.Value;

            inventory.addHistory(hrGold);
            updateItemQty(iqGold);

            //reset the fields to avoid double adds
            nudAddItems.Value = 0M;
            nudAddGold.Value = 0M;
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

                try
                {
                    lvItemHistory.BeginUpdate();
                    lvItemHistory.Items.Clear();
                    generateHistory(iq.item.id);
                }
                finally
                {
                    lvItemHistory.EndUpdate();
                }
            }

            //if no item selected, update overall history
            if (lvItems.SelectedItems.Count == 0)
            {
                try
                {
                    lvItemHistory.BeginUpdate();
                    lvItemHistory.Items.Clear();
                    generateHistory();
                }
                finally
                {
                    lvItemHistory.EndUpdate();
                }
            }

            //if it's in the list of items, update that
            foreach (ListViewItem lvi in lvItems.Items)
            {
                if ((ItemQty)lvi.Tag == iq)
                {
                    try
                    {
                        lvItems.BeginUpdate();
                        lvi.SubItems[1].Text = iq.qty.ToString();
                        lvi.SubItems[3].Text = (iq.item.cost * iq.qty).ToString();
                        lvi.SubItems[6].Text = DateTime.Now.ToString("yyyy-MM-dd, h:mm tt");
                        lvi.SubItems[6].Tag = DateTime.Now;
                        lvItems.Sort();
                    }
                    finally
                    {
                        lvItems.EndUpdate();
                    }
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
        /// Event handler for the item context menu opening, sets if the edit option should show, (only if a single item is selected.)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cmsItemList_Opening(object sender, CancelEventArgs e)
        {
            editItemToolStripMenuItem.Visible = (lvItems.SelectedItems.Count == 1);
        }

        /// <summary>
        /// Event handler for the recipie context menu opening, sets if the edit option should show, (only if a single recipie is selected.)
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cmsRecipieList_Opening(object sender, CancelEventArgs e)
        {
            editRecipieToolStripMenuItem.Visible = ((lvRecipiesMakingItem.SelectedIndices.Count == 1)
                                                    || (lvRecipiesUsingItem.SelectedIndices.Count == 1));
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
        /// Event handler for the edit item context menu option
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void editRecipieToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvRecipiesMakingItem.SelectedIndices.Count == 1)
            {
                FrmRecipie recipieForm = new FrmRecipie(((Recipie)lvRecipiesMakingItem.SelectedItems[0].Tag));
                recipieForm.Show();
            }
            else if (lvRecipiesUsingItem.SelectedIndices.Count == 1)
            {
                FrmRecipie recipieForm = new FrmRecipie(((Recipie)lvRecipiesUsingItem.SelectedItems[0].Tag));
                recipieForm.Show();
            }
        }

        /// <summary>
        /// Event handler for the create new item context menu option
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void createNewRecipieToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmRecipie recipieForm = new FrmRecipie();
            recipieForm.Show();
        }

        /// <summary>
        /// Event Handler for the column being clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvItems_ColumnClick(object sender, ColumnClickEventArgs e)
        {
            // Determine whether the column is the same as the last column clicked.
            if (e.Column != sortColumnInventory)
            {
                // Set the sort column to the new column.
                sortColumnInventory = e.Column;
                // Set the sort order to ascending by default.
                lvItems.Sorting = System.Windows.Forms.SortOrder.Ascending;
            }
            else
            {
                // Determine what the last sort order was and change it.
                if (lvItems.Sorting == System.Windows.Forms.SortOrder.Ascending)
                {
                    lvItems.Sorting = System.Windows.Forms.SortOrder.Descending;
                }
                else
                {
                    lvItems.Sorting = System.Windows.Forms.SortOrder.Ascending;
                }
            }

            // Set the ListViewItemSorter property to a new ListViewItemComparer object.
            lvItems.ListViewItemSorter = new lvItemComparer(e.Column, lvItems.Sorting);

            // Call the sort method to manually sort.
            lvItems.Sort();
        }

        /// <summary>
        /// quickly creates a new item based on the search text field
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCreateNew_Click(object sender, EventArgs e)
        {
            string sql = @"INSERT INTO items
                                        (name,
                                         description,
                                         cost,
                                         usable)
                            VALUES ('" + txtSearch.Text.Replace("'", "") + @"',
                                    '',
                                    '0',
                                    '0')";
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    comm.ExecuteNonQuery();
                }

                int itemNum = -1;
                sql = @"SELECT id
                        FROM items
                        WHERE name = '" + txtSearch.Text.Replace("'", "") + @"'";
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    itemNum = (int)comm.ExecuteScalar();
                }

                Item item = new Item()
                {
                    cost = 0,
                    description = "",
                    name = txtSearch.Text,
                    id = itemNum,
                    usable = false
                };

                Program.items.Add(item);
                foreach (KeyValuePair<string, Inventory> i in Program.inventories)
                {
                    i.Value.loot.Add(new ItemQty()
                    {
                        item = item,
                        qty = 0
                    });
                }

                updateItem(item);
            }
        }

        /// <summary>
        /// event handler for when the crafter button is clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void BtnCrafter_Click(object sender, EventArgs e)
        {
            FrmCrafter craftForm = new FrmCrafter();
            craftForm.Show();
        }

        /// <summary>
        /// event handler for when the form is first shown
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void FrmMain_Shown(object sender, EventArgs e)
        {
            FrmLoading.CloseForm();
        }
    }
}
