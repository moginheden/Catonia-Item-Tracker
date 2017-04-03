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
        private ItemQty iqGold = Program.onHand.loot.First(x => x.item.name.Equals("Gold"));

        /// <summary>
        /// current list of items shown in the left listview
        /// </summary>
        internal IEnumerable<ItemQty> itemList = null;

        /// <summary>
        /// The inventory list this form is currently using
        /// </summary>
        internal Inventory inventory = Program.onHand;

        /// <summary>
        /// entry point
        /// </summary>
        public FrmMain()
        {
            InitializeComponent();

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
            updateLvItems(inventory.loot);
        }

        /// <summary>
        /// updates the list of item in the left hand list view control to match the given list
        /// </summary>
        /// <remarks>does not clear filters or sorts</remarks>
        /// <param name="newItemList">The new list of items to use</param>
        private void updateLvItems(IEnumerable<ItemQty> newItemList)
        {
            lvItems.SuspendLayout();

            itemList = newItemList;

            lvItems.Items.Clear();
            foreach (ItemQty iq in newItemList)
            {
                ListViewItem row = new ListViewItem(new string[] { iq.item.name,
                                                                   iq.qty.ToString(),
                                                                   iq.item.cost.ToString() });
                row.Tag = iq;
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
        /// event handler for the "search discriptions" checkbox being changed
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void cbSearchDiscriptions_CheckedChanged(object sender, EventArgs e)
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
            string search = txtSearch.Text.ToLower();
            if(cbSearchDescriptions.Checked)
            {
                updateLvItems(inventory.loot.Where(x => (x.item.name.ToLower().Contains(search)
                                                        || x.item.description.ToLower().Contains(search))));
            }
            else
            {
                updateLvItems(inventory.loot.Where(x => x.item.name.ToLower().Contains(search)));
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
            lvItemHistory.SuspendLayout();

            lvRecipiesMakingItem.Items.Clear();
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
            lvItemHistory.ResumeLayout();
        }

        /// <summary>
        /// populates the item creation paths in the middle of the right side
        /// </summary>
        /// <param name="item"></param>
        private void updateCreationPaths(Item item)
        {
            /// TODO: look into multi-step recipies, maybe convert the list views to control to trees
            /// TODO: implement items using this recipie listview

            //remove extra ingredient columns
            for (int i = lvRecipiesMakingItem.Columns.Count-1; i > 3; i--)
            {
                lvRecipiesMakingItem.Columns.RemoveAt(i);
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
                    ItemQty ingredient = r.ingredients[i];
                    if (lvRecipiesMakingItem.Columns.Count < ((i*2)+3))
                    {
                        lvRecipiesMakingItem.Columns.Add("Ingredient " + i);
                        lvRecipiesMakingItem.Columns.Add("# Needed");
                    }

                    row.SubItems.Add(ingredient.item.name);
                    row.SubItems.Add(ingredient.qty.ToString());
                }

                lvRecipiesMakingItem.Items.Add(row);
            }
            foreach(ColumnHeader col in lvRecipiesMakingItem.Columns)
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
            updateItem(iqGold);
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

            updateItem(iqGold);
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

            updateItem(iq);
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

            updateItem(iq);
        }

        /// <summary>
        /// Updates the gui fields related to a given ItemQty, (all the cases where it's quantity is used, and history)
        /// </summary>
        /// <param name="iq"></param>
        internal void updateItem(ItemQty iq)
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new Action(() => updateItem(iq)));  // do stuff on UI thread, not here
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
                    lvi.SubItems[1].Text = iqGold.qty.ToString();
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
    }
}
