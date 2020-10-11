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
    public partial class FrmCrafter : Form
    {
        /// <summary>
        /// class to sort the item list with the 0 qty at the bottom, then by clicked column
        /// </summary>
        class lvRecipiesComparer : IComparer
        {
            private int col;
            private System.Windows.Forms.SortOrder order;
            public lvRecipiesComparer()
            {
                col = 0;
                order = System.Windows.Forms.SortOrder.Ascending;
            }
            public lvRecipiesComparer(int column, System.Windows.Forms.SortOrder order)
            {
                col = column;
                this.order = order;
            }
            public int Compare(object x, object y)
            {
                int returnVal = -1;

                //if num made, can make, hours, or any of the uses or have columns, do a numeric compare
                if ((col == 2) || (col == 3) || (col == 4) || ((col - 4) % 3 == 1) || ((col - 4) % 3 == 2))
                {
                    returnVal = int.Parse(((ListViewItem)x).SubItems[col].Text).CompareTo(int.Parse(((ListViewItem)y).SubItems[col].Text));
                }
                else //otherwise it's a string
                {
                    returnVal = String.Compare(((ListViewItem)x).SubItems[col].Text, ((ListViewItem)y).SubItems[col].Text);
                }

                if (order == System.Windows.Forms.SortOrder.Descending)
                {
                    returnVal *= -1;
                }

                return returnVal;
            }
        }

        /// <summary>
        /// the column # that was clicked last in the inventory list
        /// </summary>
        private int sortColumnInventory = 3;


        /// <summary>
        /// Constructor
        /// </summary>
        public FrmCrafter()
        {
            InitializeComponent();

            setProfessionAndLevel();
            
            //setup column size for recipie listviews
            lvRecipies.Columns[0].Width = -2;
            lvRecipies.Columns[1].Width = -2;
            lvRecipies.Columns[2].Width = -2;
            lvRecipies.Columns[3].Width = -2;

            //set initial item list
            sortColumnInventory = 3;
            lvRecipies.Sorting = System.Windows.Forms.SortOrder.Descending;
        }

        /// <summary>
        /// populates the professions and crafter level from existing values in the database
        /// </summary>
        private void setProfessionAndLevel()
        {
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();
                string sql = @"SELECT DISTINCT profession
                               FROM recipies
                               ORDER BY profession";
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        cbProfession.SuspendLayout();
                        while (reader.Read())
                        {
                            cbProfession.Items.Add(reader[0]);
                        }
                        cbProfession.ResumeLayout();
                    }
                }
                sql = @"SELECT DISTINCT crafterLevel
                        FROM recipies
                        ORDER BY crafterLevel";
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    using (SqlDataReader reader = comm.ExecuteReader())
                    {
                        cbCrafterLevel.SuspendLayout();
                        while (reader.Read())
                        {
                            cbCrafterLevel.Items.Add(reader[0]);
                        }
                        cbCrafterLevel.ResumeLayout();
                    }
                }
            }
        }

        /// <summary>
        /// Event handler for when either of the top dropdowns change
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CbProfession_SelectedIndexChanged(object sender, EventArgs e)
        {
            if((cbProfession.SelectedItem != null) && (cbCrafterLevel.SelectedItem != null))
            {
                try
                {
                    lvRecipies.BeginUpdate();
                    lvRecipies.Items.Clear();
                    updateCreationPaths();
                }
                finally
                {
                    lvRecipies.EndUpdate();
                }

            }
        }

        private void updateCreationPaths()
        {
            /// TODO: look into multi-step recipies, maybe convert the list views to control to trees

            //remove extra ingredient columns
            for (int i = lvRecipies.Columns.Count - 1; i > 4; i--)
            {
                lvRecipies.Columns.RemoveAt(i);
            }

            //loop through each recipie
            List<ListViewItem> rowsToAdd = new List<ListViewItem>();
            foreach (Recipie r in Program.recipies)
            {
                //if it uses this item
                if ((r.profession == ((string)cbProfession.SelectedItem)) 
                    && (r.crafterLevel == ((string)cbCrafterLevel.SelectedItem)))
                {
                    ListViewItem row = new ListViewItem(r.result.name);
                    lvRecipies.Columns[0].AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
                    lvRecipies.Columns[0].Width = -2;
                    row.SubItems.Add(r.result.type);
                    row.SubItems.Add(r.resultQty.ToString());
                    row.SubItems.Add("");
                    row.SubItems.Add(r.hours.ToString());

                    int numWeCanMake = int.MaxValue;

                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        InventoryItem ingredient = r.ingredients[i];
                        if (lvRecipies.Columns.Count < (((i + 1) * 3) + 5))
                        {
                            lvRecipies.Columns.Add("Ingredient " + (i + 1));
                            lvRecipies.Columns.Add("Uses");
                            lvRecipies.Columns.Add("Have");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());

                        int inInventory = Program.mainForm.inventory.findLoot(ingredient.item).qty;
                        row.SubItems.Add(inInventory.ToString());

                        if ((inInventory / ingredient.qty) < numWeCanMake)
                        {
                            numWeCanMake = inInventory / ingredient.qty;
                        }
                    }

                    row.SubItems[3].Text = numWeCanMake.ToString();
                    row.Tag = r;

                    rowsToAdd.Add(row);
                }
            }
            lvRecipies.Items.AddRange(rowsToAdd.ToArray());

            foreach (ColumnHeader col in lvRecipies.Columns)
            {
                col.AutoResize(ColumnHeaderAutoResizeStyle.ColumnContent);
                col.Width = -2;
            }

            //sort itemList
            lvRecipies.ListViewItemSorter = new lvRecipiesComparer(sortColumnInventory, lvRecipies.Sorting);
            lvRecipies.Sort();
        }

        private void LvRecipies_DoubleClick(object sender, EventArgs e)
        {
            if(lvRecipies.SelectedItems.Count > 0)
            {
                Program.mainForm.selectInventoryItem(Program.mainForm.inventory.findLoot(((Recipie)lvRecipies.SelectedItems[0].Tag).result));
            }
        }

        private void LvRecipies_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lvRecipies.SelectedItems.Count > 0)
            {
                txtDescription.Text = ((Recipie)lvRecipies.SelectedItems[0].Tag).result.description;
            }
        }

        /// <summary>
        /// Event Handler for the column being clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvRecipies_ColumnClick(object sender, ColumnClickEventArgs e)
        {
            // Determine whether the column is the same as the last column clicked.
            if (e.Column != sortColumnInventory)
            {
                // Set the sort column to the new column.
                sortColumnInventory = e.Column;
                // Set the sort order to ascending by default.
                lvRecipies.Sorting = System.Windows.Forms.SortOrder.Ascending;
            }
            else
            {
                // Determine what the last sort order was and change it.
                if (lvRecipies.Sorting == System.Windows.Forms.SortOrder.Ascending)
                {
                    lvRecipies.Sorting = System.Windows.Forms.SortOrder.Descending;
                }
                else
                {
                    lvRecipies.Sorting = System.Windows.Forms.SortOrder.Ascending;
                }
            }

            // Set the ListViewItemSorter property to a new ListViewItemComparer object.
            lvRecipies.ListViewItemSorter = new lvRecipiesComparer(e.Column, lvRecipies.Sorting);

            // Call the sort method to manually sort.
            lvRecipies.Sort();
        }
    }
}
