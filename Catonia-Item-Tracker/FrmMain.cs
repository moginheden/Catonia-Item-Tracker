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
            public bool sortItemsInInventoryToTop;
            public lvItemComparer()
            {
                col = 0;
                order = System.Windows.Forms.SortOrder.Ascending;
                sortItemsInInventoryToTop = true;
            }
            public lvItemComparer(int column, System.Windows.Forms.SortOrder order, bool sortItemsInInventoryToTop)
            {
                col = column;
                this.order = order;
                this.sortItemsInInventoryToTop = sortItemsInInventoryToTop;
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
                    if(returnVal == 0)
                    {
                        returnVal = String.Compare(((ListViewItem)x).SubItems[0].Text, ((ListViewItem)y).SubItems[0].Text);
                        if (order == System.Windows.Forms.SortOrder.Descending)
                        {
                            returnVal *= -1;
                        }
                    }
                }
                else
                {
                    returnVal = String.Compare(((ListViewItem)x).SubItems[col].Text, ((ListViewItem)y).SubItems[col].Text);
                }

                if (order == System.Windows.Forms.SortOrder.Descending)
                {
                    returnVal *= -1;
                }

                //if we are forcing items with a qty greater than 0 to the top
                if (sortItemsInInventoryToTop)
                {
                    if ((((ListViewItem)x).SubItems[1].Text != "0") && (((ListViewItem)y).SubItems[1].Text == "0"))
                    {
                        return -1;
                    }
                    else if ((((ListViewItem)x).SubItems[1].Text == "0") && (((ListViewItem)y).SubItems[1].Text != "0"))
                    {
                        return 1;
                    }
                }

                return returnVal;
            }
        }

        /// <summary>
        /// the column # that was clicked last in the inventory list
        /// </summary>
        private int sortColumnInventory = 0;

        /// <summary>
        /// If the item list should always sort items we have at least one of above items we don't have any of
        /// </summary>
        private bool sortItemsInInventoryToTop = true;

        /// <summary>
        /// The list of item types that have been checked off in the filters
        /// </summary>
        private List<char> filterProfessions = new List<char>();

        /// <summary>
        /// The list of item types that have been checked off in the filters
        /// </summary>
        private List<string> filterTypes = new List<string>();

        /// <summary>
        /// reference to the loot item "Gold" for use in the numeric up/down field
        /// </summary>
        private InventoryItem iiGold = Program.inventories["On Hand"].loot.First().Value;

        /// <summary>
        /// The inventory list this form is currently using
        /// </summary>
        internal Inventory inventory = Program.inventories["On Hand"];

        /// <summary>
        /// The previously searched string to make sure we don't do weird things with the auto-complete if the text doesn't change
        /// </summary>
        private string oldSearch = "";

        /// <summary>
        /// the previous value of the add items numeric up-down control
        /// </summary>
        private decimal oldNudAddItemsValue;

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
                nudGold.Value = iiGold.qty;
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
            updateLvItems(inventory.loot.Values, lvItems);
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
        /// updates the main inventory listview after an item type is edited/created
        /// </summary>
        /// <param name="item"></param>
        public void updateItem(Item item)
        {
            try
            {
                //a difference of 0 is used to specify a full re-read of all items, recipies, and inventoryitems for a given item.
                updateItemQtyWithHistory(inventory.findLoot(item), 0);

                //update main item list
                lvItems.BeginUpdate();

                //find all rows that should be updated
                List<InventoryItem> found = new List<InventoryItem>();
                foreach (KeyValuePair<int, InventoryItem> kvp in inventory.loot)
                {
                    if(kvp.Value.item.id == item.id)
                    {
                        found.Add(kvp.Value);
                    }
                }

                //try to update existing rows
                foreach (ListViewItem row in lvItems.Items)
                {
                    InventoryItem tag = (InventoryItem)row.Tag;
                    if (tag.item.id == item.id)
                    {
                        
                        //update row
                        row.SubItems[0].Text = tag.ToString();
                        row.SubItems[1].Text = tag.qty.ToString();
                        row.SubItems[2].Text = tag.value().ToString();
                        row.SubItems[3].Text = (tag.value() * tag.qty).ToString();
                        row.SubItems[4].Text = getProfessionsForItem(item);
                        row.SubItems[5].Text = item.TypeAbbreviation();
                        row.SubItems[6].Text = DateTime.Now.ToString("yyyy-MM-dd, h:mm tt");
                        row.SubItems[6].Tag = DateTime.Now;
                        found.Remove(tag);

                        //select new item
                        lvItems.SelectedItems.Clear();
                        row.Selected = true;
                        row.Focused = true;
                        lvItems.EnsureVisible(lvItems.Items.IndexOf(row));
                    }
                }

                //if an InventoryItem wasn't found yet, add a new row for it at the bottom
                foreach (InventoryItem iq in found)
                {
                    //create new row
                    DateTime lastMod = inventory.getLatestModification(iq.item.id);
                    ListViewItem row = new ListViewItem(new string[] { iq.ToString(),
                                                                   iq.qty.ToString(),
                                                                   iq.value().ToString(),
                                                                   (iq.value() * iq.qty).ToString(),
                                                                   getProfessionsForItem(item),
                                                                   item.TypeAbbreviation(),
                                                                   lastMod.ToString("yyyy-MM-dd, h:mm tt") });
                    row.SubItems[6].Tag = lastMod;
                    row.Tag = iq;

                    //add to list
                    lvItems.Items.Add(row);

                    //select new item
                    lvItems.SelectedItems.Clear();
                    row.Selected = true;
                    row.Focused = true;

                    //re-sort list
                    lvItems.Sort();

                    //scroll to item
                    lvItems.EnsureVisible(lvItems.Items.IndexOf(row));

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
            if(lvItems.Visible && (lvItems.SelectedItems.Count > 0) && (item.id == ((InventoryItem)lvItems.SelectedItems[0].Tag).item.id))
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
        /// selects a specific item
        /// </summary>
        /// <param name="ii"></param>
        internal void selectInventoryItem(InventoryItem ii)
        {
            foreach (ListViewItem row in lvItems.Items)
            {
                if (((InventoryItem)row.Tag).id == ii.id)
                {
                    lvItems.SelectedItems.Clear();
                    row.Selected = true;
                    row.Focused = true;
                }
            }
            lvItems.EnsureVisible(lvItems.SelectedIndices[0]);
        }

        /// <summary>
        /// returns a string showing what prefessions use the given item
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        private string getProfessionsForItem(Item item)
        {
            string returnVal = "";
            InventoryItem compare = new InventoryItem() { item = item };
            foreach(Recipie r in Program.recipies)
            {
                char marker = shortProfessionCode(r.profession);
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
        /// converts a full profession name to a single character
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        private char shortProfessionCode(string name)
        {
            char marker = name[0];
            if ((name[0] == 'B') && (name[1] == 'o'))
            {
                marker = 'O';
            }
            else if ((name[0] == 'C') && (name[1] == 'a'))
            {
                marker = 'R';
            }
            else if ((name[0] == 'S') && (name[1] == 't'))
            {
                marker = 'M';
            }
            return marker;
        }

        /// <summary>
        /// updates the list of item in the left hand list view control to match the given list
        /// </summary>
        /// <remarks>does not clear sorts</remarks>
        /// <param name="newItemList">The new list of items to use</param>
        /// <param name="lvItemsToChange">The listview to update</param>
        private void updateLvItems(IEnumerable<InventoryItem> newItemList, ListView lvItemsToChange)
        {
            try
            {
                lvItemsToChange.BeginUpdate();

                lvItemsToChange.Items.Clear();
                List<ListViewItem> rowsToAdd = new List<ListViewItem>(newItemList.Count());
                foreach (InventoryItem iq in newItemList.OrderBy(o => (o.qty == 0)).ThenBy(o => o.item.name))
                {
                    if(iq.item.id != 0) //don't add gold to the list
                    {
                        DateTime lastMod = inventory.getLatestModification(iq.item.id);
                        ListViewItem row = new ListViewItem(new string[] { iq.ToString(),
                                                                       iq.qty.ToString(),
                                                                       iq.value().ToString(),
                                                                       (iq.value() * iq.qty).ToString(),
                                                                       getProfessionsForItem(iq.item),
                                                                       iq.item.TypeAbbreviation(),
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
                lvItemsToChange.ListViewItemSorter = new lvItemComparer(sortColumnInventory, lvItemsToChange.Sorting, sortItemsInInventoryToTop);
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
            updateLvItems(inventory.loot.Values, lvItems);
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
            //use keyUp event, as text changed traps too many other events.
            ComboBox oBox = (ComboBox)sender;
            string search = oBox.Text;

            int savedCursor = oBox.SelectionStart;

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
                if (lvItems.SelectedIndices.Count > 0)
                {
                    lvItems.EnsureVisible(lvItems.SelectedIndices[0]);
                }
                return;
            }

            //if selecting with the arrow keys, don't clear the other options
            if ((e.KeyCode == Keys.Down) || (e.KeyCode == Keys.Up) || (e.KeyCode == Keys.Right) || (e.KeyCode == Keys.Left) || (e.KeyCode == Keys.Home) || (e.KeyCode == Keys.End))
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
            List<InventoryItem> results = new List<InventoryItem>();
            for (int i = 0; results.Count < 20 && i < lvItems.Items.Count; i++)
            {
                ListViewItem row = lvItems.Items[i];
                if ((row.SubItems[0].Text.ToLower().StartsWith(search.ToLower()))
                    || (cbSearchDescriptions.Checked && (((InventoryItem)row.Tag).item.description.ToLower().StartsWith(search.ToLower()))))
                {
                    results.Add(((InventoryItem)row.Tag));
                }
            }

            for (int i = 0; results.Count < 20 && i < lvItems.Items.Count; i++)
            {
                ListViewItem row = lvItems.Items[i];
                if ((row.SubItems[0].Text.ToLower().Contains(search.ToLower()))
                    || (cbSearchDescriptions.Checked && (((InventoryItem)row.Tag).item.description.ToLower().Contains(search.ToLower()))))
                {
                    if (!(results.Contains((InventoryItem)row.Tag)))
                    {
                        results.Add(((InventoryItem)row.Tag));
                    }
                }
            }

            if (results.Count == 0)
            {
                oBox.DroppedDown = false;
                return;
            }

            //NOW THAT WE HAVE OUR FILTERED LIST, WE NEED TO RE-BIND IT WIHOUT CHANGING THE TEXT IN THE ComboBox.

            //1).UNREGISTER THE SELECTED EVENT BEFORE RE-BINDING, b/c IT TRIGGERS ON BIND.
            oBox.SelectedIndexChanged -= TxtSearch_SelectedIndexChanged; //don't select on typing.
            oBox.DataSource = results; //2).rebind to filtered list.
            oBox.SelectedIndexChanged += TxtSearch_SelectedIndexChanged;


            //3).show the user the new filtered list.
            oBox.DroppedDown = true; //this will overwrite the text in the ComboBox, so 4&5 put it back.
            Cursor.Current = Cursors.Default;

            //4).binding data source erases text, so now we need to put the user's text back,
            oBox.Text = search;

            //5). need to put the user's cursor back where it was.
            if (savedCursor > search.Length)
            {
                oBox.SelectionStart = search.Length;
            }
            else
            {
                oBox.SelectionStart = savedCursor;
            }


        }

        private void TxtSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (txtSearch.SelectedItem != null)
            {
                oldSearch = txtSearch.SelectedItem.ToString();
                foreach (ListViewItem row in lvItems.Items)
                {
                    if (((InventoryItem)row.Tag).id == ((InventoryItem)txtSearch.SelectedItem).id)
                    {
                        lvItems.SelectedItems.Clear();
                        row.Selected = true;
                        row.Focused = true;
                    }
                }
            }

            //update the right panel
            lvItems_SelectedIndexChanged(null, null);

            //scroll into view
            if (lvItems.SelectedItems.Count > 0)
            {
                lvItems.SelectedItems[0].EnsureVisible();
            }
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
                    InventoryItem ii = (InventoryItem)lvItems.SelectedItems[0].Tag;
                    using (new TriggerLock())
                    {
                        nudOwned.Value = ii.qty;
                    }
                    txtDescription.Text = ii.item.description;

                    //read mods
                    foreach (int mod in ii.modsAttached)
                    {
                        txtDescription.Text += "\r\n\r\n***" + Program.items[mod].name + "***\r\n" + Program.items[mod].description;
                    }

                    updateCreationPaths(ii.item);
                    generateHistory(ii.id);
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
            InventoryItem comparison = new InventoryItem() { item = item, qty = 0 };
            
            //remove extra ingredient columns
            for (int i = lvRecipiesMakingItem.Columns.Count - 1; i > 4; i--)
            {
                lvRecipiesMakingItem.Columns.RemoveAt(i);
            }

            for (int i = lvRecipiesUsingItem.Columns.Count - 1; i > 5; i--)
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
                    row.SubItems.Add(r.hours.ToString());

                    int numWeCanMake = int.MaxValue;
                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        InventoryItem ingredient = r.ingredients[i];
                        if (lvRecipiesMakingItem.Columns.Count < (((i+1) * 3) + 5))
                        {
                            lvRecipiesMakingItem.Columns.Add("Ingredient " + (i+1));
                            lvRecipiesMakingItem.Columns.Add("Uses");
                            lvRecipiesMakingItem.Columns.Add("Have");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());

                        int inInventory = inventory.findLoot(ingredient.item).qty;
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
                    row.SubItems.Add(r.hours.ToString());

                    int numWeCanMake = int.MaxValue;

                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        InventoryItem ingredient = r.ingredients[i];
                        if (lvRecipiesUsingItem.Columns.Count < (((i+1) * 3) + 6))
                        {
                            lvRecipiesUsingItem.Columns.Add("Ingredient " + (i+1));
                            lvRecipiesUsingItem.Columns.Add("Uses");
                            lvRecipiesUsingItem.Columns.Add("Have");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());

                        int inInventory = inventory.findLoot(ingredient.item).qty;
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
            IEnumerator<HistoryRecord> rows = inventory.getHistory();

            List<ListViewItem> rowsToAdd = new List<ListViewItem>(inventory.countHistory());
            while (rows.MoveNext())
            {
                HistoryRecord hr = rows.Current;

                if ((itemToSearch == -1) || (hr.ii.id == itemToSearch))
                {
                    ListViewItem row = new ListViewItem(hr.dateTime.ToString("MMMM dd, yyyy h:mm tt"));
                    row.SubItems.Add(hr.qtyChanged.ToString());
                    row.SubItems.Add(hr.ii.item.name);
                    row.SubItems.Add(hr.note);

                    row.Tag = hr;

                    rowsToAdd.Add(row);
                }
            }
            lvItemHistory.Items.AddRange(rowsToAdd.ToArray());
        }

        /// <summary>
        /// event handler for hitting the make button on a recipe
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnMake_Click(object sender, EventArgs e)
        {
            Recipie r = null;
            if (lvRecipiesMakingItem.SelectedItems.Count == 1)
            {
                r = (Recipie)lvRecipiesMakingItem.SelectedItems[0].Tag;
            }
            else if (lvRecipiesUsingItem.SelectedItems.Count == 1)
            {
                r = (Recipie)lvRecipiesUsingItem.SelectedItems[0].Tag;
            }

            if (r != null)
            {
                if (craftRecipie(r))
                {
                    MessageBox.Show("Crafted " + r.resultQty + " " + r.result.name + " using " + r.crafterLevel.Substring(2) + " " + r.profession + " " + r.hours + " hours pass", "Crafting", MessageBoxButtons.OK, MessageBoxIcon.None);
                }
            }
        }

        /// <summary>
        /// removes the ingredients of a recipie and creates it's result
        /// </summary>
        /// <param name="r">The recipie to follow</param>
        /// <returns>If crafting was successful</returns>
        public bool craftRecipie(Recipie r)
        {
            InventoryItem result = inventory.findLoot(r.result);
            using (new TriggerLock())
            {
                //check we have enough ingredients
                foreach (InventoryItem i in r.ingredients)
                {
                    InventoryItem ingredientInInventory = inventory.findLoot(i.item);

                    if (ingredientInInventory.qty < i.qty)
                    {
                        MessageBox.Show("Unable to craft " + result.item.name 
                                                           + ". You need " 
                                                           + (i.qty - ingredientInInventory.qty) 
                                                           + " more " 
                                                           + i.item.name 
                                                           + " " 
                                                           + inventory.location, 
                                        "Crafting", 
                                        MessageBoxButtons.OK, 
                                        MessageBoxIcon.Error);
                        return false;
                    }
                }

                //remove the ingredients used
                foreach (InventoryItem i in r.ingredients)
                {
                    InventoryItem ingredient = inventory.findLoot(i.item);
                    updateItemQtyWithHistory(ingredient, i.qty * -1);
                }

                //create item
                updateItemQtyWithHistory(result, r.resultQty);
            }

            //update the right panel
            lvItems_SelectedIndexChanged(null, null);

            return true;
        }

        /// <summary>
        /// updates the quantity of an item in the local database, sql database, and UI including history records.
        /// </summary>
        /// <param name="iq"></param>
        /// <param name="difference"></param>
        /// <returns>If the quantity can be changed, (negatives arn't allowed.)</returns>
        public bool updateItemQtyWithHistory(InventoryItem iq, int difference)
        {
            if((iq.qty + difference) < 0)
            {
                MessageBox.Show("Error: negative quantity for " + iq.item.name + " in " + inventory.location,
                                        "Crafting",
                                        MessageBoxButtons.OK,
                                        MessageBoxIcon.Error);
                return false;
            }
            HistoryRecord hr = new HistoryRecord();
            hr.ii = iq;
            hr.qtyChanged = difference;
            inventory.addHistory(hr);

            //update the inventory
            iq.qty += difference;

            updateItemQty(iq);

            return true;
        }

        /// <summary>
        /// event handler for the total amount of gold being changed
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
            int difference = (int)nudGold.Value - iiGold.qty;

            HistoryRecord hr = inventory.latestHistory();
            if ((hr != null)
                && (hr.ii == iiGold)
                && (hr.dateTime > DateTime.Now.AddSeconds(-10)))
            {
                hr.qtyChanged += difference;
                inventory.updateHistory(hr);
            }
            else
            {
                hr = new HistoryRecord();
                hr.ii = iiGold;
                hr.qtyChanged = difference;
                inventory.addHistory(hr);
            }

            //update the inventory
            iiGold.qty = (int)nudGold.Value;

            //update other ui fields
            updateItemQty(iiGold);
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

            iiGold.qty += (int)nudAddGold.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.ii = iiGold;
            hr.qtyChanged = (int)nudAddGold.Value;

            inventory.addHistory(hr);

            //reset the field to avoid double adds
            nudAddGold.Value = 0M;

            updateItemQty(iiGold);
        }
        
        /// <summary>
        /// event handler for the total amount of gold being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void nudOwned_ValueChanged(object sender, EventArgs e)
        {
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

            InventoryItem iq = (InventoryItem)lvItems.SelectedItems[0].Tag;

            //create or update the history record
            HistoryRecord hr = inventory.latestHistory();
            int difference = (int)nudOwned.Value - iq.qty;

            if ((hr != null)
                && (hr.ii == iq)
                && (hr.dateTime > DateTime.Now.AddSeconds(-10)))
            {
                hr.qtyChanged += difference;
                inventory.updateHistory(hr);
            }
            else
            {
                hr = new HistoryRecord();
                hr.ii = iq;
                hr.qtyChanged = difference;
                inventory.addHistory(hr);
            }

            //update the inventory
            iq.qty = (int)nudOwned.Value;

            updateItemQty(iq);

            //update the right panel
            lvItems_SelectedIndexChanged(null, null);

            //scroll into view
            lvItems.SelectedItems[0].EnsureVisible();
        }

        /// <summary>
        /// event handler for when the number to add has been changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void NudAddItems_ValueChanged(object sender, EventArgs e)
        {
            if ((nudAddItems.Value < 0) && (oldNudAddItemsValue <= 0))
            {
                nudDeal.Value = 50;
            }
            else if ((nudAddItems.Value >= 0) && (oldNudAddItemsValue < 0))
            {
                nudDeal.Value = 100;
            }
            oldNudAddItemsValue = nudAddItems.Value;
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

            InventoryItem iq = (InventoryItem)lvItems.SelectedItems[0].Tag;

            iq.qty += (int)nudAddItems.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.ii = iq;
            hr.qtyChanged = (int)nudAddItems.Value;

            inventory.addHistory(hr);

            //reset the field to avoid double adds
            nudAddItems.Value = 0M;

            updateItemQty(iq);

            //update the right panel
            lvItems_SelectedIndexChanged(null, null);
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
            InventoryItem iq = (InventoryItem)lvItems.SelectedItems[0].Tag;

            iq.qty += (int)nudAddItems.Value;

            HistoryRecord hr = new HistoryRecord();
            hr.ii = iq;
            hr.qtyChanged = (int)nudAddItems.Value;

            inventory.addHistory(hr);
            updateItemQty(iq);

            //update gold
            int valuePerItem = (int)nudAddGold.Value;
            if (valuePerItem == 0)
            {
                valuePerItem = (int)(iq.value() * nudDeal.Value / 100);
            }
            iiGold.qty -= valuePerItem * (int)nudAddItems.Value;

            HistoryRecord hrGold = new HistoryRecord();
            hrGold.ii = iiGold;
            hrGold.qtyChanged = valuePerItem * (int)nudAddItems.Value;

            inventory.addHistory(hrGold);
            updateItemQty(iiGold);

            //reset the fields to avoid double adds
            nudAddItems.Value = 0M;
            nudAddGold.Value = 0M;

            //update the right panel
            lvItems_SelectedIndexChanged(null, null);
        }

        /// <summary>
        /// Updates the gui fields related to a given ItemQty, (all the cases where it's quantity is used, and history)
        /// </summary>
        /// <param name="ii"></param>
        internal void updateItemQty(InventoryItem ii)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new Action(() => updateItemQty(ii)));  // do stuff on UI thread, not here
                return;
            }
            
            //if it's the gold item, update it's numeric up down field
            if (ii == iiGold)
            {
                using (new TriggerLock())
                {
                    nudGold.Value = iiGold.qty;
                }
            }

            //if it's the current item update other related fields
            if ((lvItems.SelectedItems.Count > 0) && ((InventoryItem)lvItems.SelectedItems[0].Tag == ii))
            {
                using (new TriggerLock())
                {
                    nudOwned.Value = ii.qty;
                }

                try
                {
                    lvItemHistory.BeginUpdate();
                    lvItemHistory.Items.Clear();
                    generateHistory(ii.id);
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
                if ((InventoryItem)lvi.Tag == ii)
                {
                    try
                    {
                        lvItems.BeginUpdate();
                        lvi.SubItems[1].Text = ii.qty.ToString();
                        lvi.SubItems[3].Text = (ii.value() * ii.qty).ToString();
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
        /// Event handler for the item context menu opening, sets it's menu items depending on what was clicked on.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cmsItemList_Opening(object sender, CancelEventArgs e)
        {
            cmsItemList.SuspendLayout();
            cmsItemList.Items.Clear();

            Point clicked = lvItems.PointToClient(new Point(cmsItemList.Left, cmsItemList.Top));
            Point topItemClicked = lvItems.PointToClient(new Point(cmsItemList.Left, lvItems.Top + 43)); //43 gets just past the header into the first item
            ListViewHitTestInfo hit = lvItems.HitTest(topItemClicked);
            int columnindex = hit.Item.SubItems.IndexOf(hit.SubItem);

            //if we are in the qty header
            if ((clicked.Y < 24)
                && (columnindex == 1))
            {
                cmsItemList.ShowCheckMargin = true;

                List<ToolStripMenuItem> toolStripMenuItems = new List<ToolStripMenuItem>();

                ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem();
                toolStripMenuItem.CheckOnClick = true;
                toolStripMenuItem.Name = "spiltSort";
                toolStripMenuItem.Checked = sortItemsInInventoryToTop;
                toolStripMenuItem.Size = new System.Drawing.Size(202, 22);
                toolStripMenuItem.Text = "Sort items in inventory to the top";
                toolStripMenuItem.Click += new System.EventHandler(CmsItemListQty_Click);
                toolStripMenuItems.Add(toolStripMenuItem);

                cmsItemList.Items.AddRange(toolStripMenuItems.ToArray());
            }
            //if we are in the craft header
            else if ((clicked.Y < 24) 
                && (columnindex == 4))
            {
                cmsItemList.ShowCheckMargin = true;

                List<ToolStripMenuItem> toolStripMenuItems = new List<ToolStripMenuItem>();

                using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                {
                    dataConnection.Open();

                    string selectSql = @"SELECT DISTINCT profession
                                         FROM recipies";
                    using (SqlCommand comm = new SqlCommand(selectSql, dataConnection))
                    {
                        using (SqlDataReader reader = comm.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem();
                                toolStripMenuItem.CheckOnClick = true;
                                toolStripMenuItem.Name = reader.GetString(0);
                                toolStripMenuItem.Checked = filterProfessions.Contains(shortProfessionCode(toolStripMenuItem.Name));
                                toolStripMenuItem.Size = new System.Drawing.Size(202, 22);
                                toolStripMenuItem.Text = reader.GetString(0);
                                toolStripMenuItem.Click += new System.EventHandler(CmsItemListCraft_Click);
                                toolStripMenuItems.Add(toolStripMenuItem);
                            }
                        }
                    }
                }

                cmsItemList.Items.AddRange(toolStripMenuItems.ToArray());
            }
            //if in type header
            else if ((clicked.Y < 24)
                && (columnindex == 5))
            {
                cmsItemList.ShowCheckMargin = true;

                List<ToolStripMenuItem> toolStripMenuItems = new List<ToolStripMenuItem>();

                using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                {
                    dataConnection.Open();

                    string selectSql = @"SELECT DISTINCT type
                                         FROM items";
                    using (SqlCommand comm = new SqlCommand(selectSql, dataConnection))
                    {
                        using (SqlDataReader reader = comm.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem();
                                toolStripMenuItem.CheckOnClick = true;
                                toolStripMenuItem.Name = reader.GetString(0);
                                toolStripMenuItem.Checked = filterTypes.Contains(toolStripMenuItem.Name);
                                toolStripMenuItem.Size = new System.Drawing.Size(202, 22);
                                toolStripMenuItem.Text = reader.GetString(0);
                                toolStripMenuItem.Click += new System.EventHandler(CmsItemListType_Click);
                                toolStripMenuItems.Add(toolStripMenuItem);
                            }
                        }
                    }
                }

                cmsItemList.Items.AddRange(toolStripMenuItems.ToArray());
            }
            else if (lvItems.SelectedItems.Count == 1)
            {
                cmsItemList.ShowCheckMargin = false;
                cmsItemList.Items.AddRange(new ToolStripItem[] { editItemToolStripMenuItem, createNewRecipieItemToolStripMenuItem, addOrRemoveModToolStripMenuItem });
            }
            else
            {
                e.Cancel = true;
            }

            cmsItemList.ResumeLayout();
        }

        /// <summary>
        /// Event handler for the item context menu closing. Cancels the close if it's a checkbox being changed that caused the close
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CmsItemList_Closing(object sender, ToolStripDropDownClosingEventArgs e)
        {
            if ((!cmsItemList.Items.Contains(createNewRecipieItemToolStripMenuItem)) && (e.CloseReason == ToolStripDropDownCloseReason.ItemClicked))
            {
                e.Cancel = true;
            }
        }

        /// <summary>
        /// Event handler for the item context menu's qty options being selected or unselected
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CmsItemListQty_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;

            sortItemsInInventoryToTop = ((ToolStripMenuItem)cmsItemList.Items[0]).Checked;

            // update the sort overide status
            ((lvItemComparer)lvItems.ListViewItemSorter).sortItemsInInventoryToTop = sortItemsInInventoryToTop;

            // Call the sort method to manually sort.
            lvItems.Sort();

            Cursor.Current = Cursors.Default;
        }

        /// <summary>
        /// Event handler for the item context menu's craft options being selected or unselected
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CmsItemListCraft_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;

            filterProfessions = new List<char>();
            foreach (ToolStripMenuItem option in cmsItemList.Items)
            {
                if (option.Checked)
                {
                    filterProfessions.Add(shortProfessionCode(option.Name));
                }
            }

            updateLvItems(inventory.loot.Values, lvItems);

            filterCrafts();
            filterType();
            Cursor.Current = Cursors.Default;
        }

        /// <summary>
        /// Event handler for the item context menu's type options being selected or unselected
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CmsItemListType_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;

            filterTypes = new List<string>();
            foreach (ToolStripMenuItem option in cmsItemList.Items)
            {
                if (option.Checked)
                {
                    filterTypes.Add(option.Name);
                }
            }

            updateLvItems(inventory.loot.Values, lvItems);

            filterCrafts();
            filterType();
            Cursor.Current = Cursors.Default;
        }
        /// <summary>
        /// filters the lvItems to not show items that don't meet the list of crafts/professions chosen in filterProfessions
        /// </summary>
        private void filterCrafts()
        { 
            if (filterProfessions.Count != 0)
            {
                foreach(ListViewItem lvi in lvItems.Items)
                {
                    //check each profession in this item
                    bool found = false;
                    foreach(char c in lvi.SubItems[4].Text)
                    {
                        if (filterProfessions.Contains(c))
                        {
                            found = true;
                        }
                    }
                    //if it wasn't found, hide the line
                    if (!found)
                    {
                        lvi.Remove();
                    }
                }
            }
        }

        /// <summary>
        /// filters the lvItems to not show items that don't meet the list of types chosen in filterTypes
        /// </summary>
        private void filterType()
        { 
            if (filterTypes.Count != 0)
            {
                foreach (ListViewItem lvi in lvItems.Items)
                {
                    if (!filterTypes.Contains((((InventoryItem)lvi.Tag).item.type)))
                    {
                        lvi.Remove();
                    }
                }
            }
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
            FrmItem itemForm = new FrmItem(((InventoryItem)lvItems.SelectedItems[0].Tag).item);
            itemForm.Show();
        }

        /// <summary>
        /// Event handler for the create new item context menu option
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void createNewRecipieItemToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmRecipie recipieForm = new FrmRecipie(((InventoryItem)lvItems.SelectedItems[0].Tag).item);
            recipieForm.Show();
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
        /// event handfler for the context menu right click option of add or remove mods
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AddOrRemoveModToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmMods modForm = new FrmMods(((InventoryItem)lvItems.SelectedItems[0].Tag));
            if (modForm.valid)
            {
                modForm.Show();
            }
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
            lvItems.ListViewItemSorter = new lvItemComparer(e.Column, lvItems.Sorting, sortItemsInInventoryToTop);

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
            string toAddName = txtSearch.Text.Trim();
            if (toAddName.Length == 0)
            {
                FrmItem itemForm = new FrmItem();
                itemForm.Show();
                return;
            }

            //check if the item already exists
            foreach(KeyValuePair<int, Item> i in Program.items)
            {
                if (i.Value.name == toAddName)
                {
                    selectInventoryItem(inventory.findLoot(i.Value));
                    return;
                }
            }

            string insertSql = @"INSERT INTO items (name,
                                                    description,
                                                    cost,
                                                    type,
                                                    subType)
                                             VALUES ('" + toAddName.Replace("'", "''") + @"',
                                                     '',
                                                     '0',
                                                     '',
                                                     '')";
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                int itemNum = -1;
                string selectSql = @"SELECT id
                                     FROM items
                                     WHERE name = '" + toAddName.Replace("'", "''") + @"'";
                using (SqlCommand comm = new SqlCommand(selectSql, dataConnection))
                {
                    var result = comm.ExecuteScalar();
                    if ((result != null) && (result != DBNull.Value))
                    {
                        itemNum = (int)result;
                    }
                }

                //if the item doesn't yet exist
                if (itemNum == -1)
                {
                    //create the item
                    using (SqlCommand comm = new SqlCommand(insertSql, dataConnection))
                    {
                        comm.ExecuteNonQuery();
                    }

                    //grab its id
                    using (SqlCommand comm = new SqlCommand(selectSql, dataConnection))
                    {
                        itemNum = (int)comm.ExecuteScalar();
                    }
                }

                Item item = new Item()
                {
                    cost = 0,
                    description = "",
                    name = toAddName,
                    id = itemNum,
                    type = "",
                    subType = ""
                };

                Program.items.Add(item.id, item);
                foreach (KeyValuePair<string, Inventory> i in Program.inventories)
                {
                    i.Value.loot.Add(item.id * -1, new InventoryItem()
                    {
                        id = item.id * -1,
                        item = item,
                        qty = 0
                    }) ;
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

        /// <summary>
        /// event handler for when the mods button is clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void BtnMods_Click(object sender, EventArgs e)
        {
            if (lvItems.SelectedIndices.Count == 1)
            {
                FrmMods modForm = new FrmMods(((InventoryItem)lvItems.SelectedItems[0].Tag));
                if (modForm.valid)
                {
                    modForm.Show();
                }
            }
            else
            {
                MessageBox.Show("No item selected to mod", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
