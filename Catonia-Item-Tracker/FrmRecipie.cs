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
    public partial class FrmRecipie : Form
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

                if (col == 1)
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

                return returnVal;
            }
        }

        /// <summary>
        /// the column # that was clicked last in the inventory list
        /// </summary>
        private int sortColumn = 0;

        /// <summary>
        /// The item that this recipie makes
        /// </summary>
        Item result = null;

        /// <summary>
        /// The recipie that this window represents, (null if it's a new recipie.)
        /// </summary>
        Recipie curRecipie = null;

        /// <summary>
        /// Constructor for a new recipie
        /// </summary>
        public FrmRecipie()
        {
            InitializeComponent();

            updateLbItemSearch(Program.items);

            setProfessionAndLevel();
        }

        /// <summary>
        /// constructor for loading an existing recipie
        /// </summary>
        /// <param name="current"></param>
        public FrmRecipie(Recipie current)
        {
            //setup basic form
            InitializeComponent();

            updateLbItemSearch(Program.items);

            setProfessionAndLevel();

            //load data for current recipie
            curRecipie = current;

            this.Text += current.id;

            cbProfession.Text = current.profession;
            cbCrafterLevel.Text = current.crafterLevel;

            result = current.result;
            txtResultName.Text = result.name;

            nudNumProduced.Value = current.resultQty;

            lvIngredients.SuspendLayout();
            foreach (ItemQty iq in current.ingredients)
            {
                addIngredient(iq.item, iq.qty);
            }
            lvIngredients.ResumeLayout();
        }

        /// <summary>
        /// updates the list of item in the left hand listbox control to match the given list
        /// </summary>
        /// <param name="newItemList">The new list of items to use</param>
        private void updateLbItemSearch(IEnumerable<Item> newItemList)
        {
            lbItemSearch.SuspendLayout();

            lbItemSearch.Items.Clear();
            foreach (Item item in newItemList.OrderBy(o => o.name))
            {
                lbItemSearch.Items.Add(item);
            }
            
            lbItemSearch.ResumeLayout();
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
                               FROM recipies";
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
                        FROM recipies";
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
        /// event handler for the search bar having a new value
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            string search = txtSearch.Text.ToLower().Replace('-', ' ');
            if (cbSearchDescriptions.Checked)
            {
                updateLbItemSearch(Program.items.Where(x => (x.name.ToLower().Replace('-', ' ').Contains(search)
                                                        || x.description.ToLower().Replace('-', ' ').Contains(search))));
            }
            else
            {
                updateLbItemSearch(Program.items.Where(x => x.name.ToLower().Replace('-', ' ').Contains(search)));
            }
        }

        /// <summary>
        /// event handler for a different item being selected in the left items list
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lbItemSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            /// TODO: check why this isn't called when the search eliminates the current item
            if (lbItemSearch.SelectedItems.Count == 0)
            {
                txtDescription.Text = "";
            }
            else
            {
                Item item = (Item)lbItemSearch.SelectedItems[0];
                txtDescription.Text = item.description;
            }
        }

        /// <summary>
        /// Event handeler for clicking the set result button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSetResult_Click(object sender, EventArgs e)
        {
            if(lbItemSearch.SelectedItems.Count > 0)
            {
                result = (Item)lbItemSearch.SelectedItems[0];
                txtResultName.Text = result.name;
            }
        }
        
        /// <summary>
        /// event handler for clicking the add ingredient button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnIngredients_Click(object sender, EventArgs e)
        {
            lvIngredients.SuspendLayout();

            foreach (Item i in lbItemSearch.SelectedItems)
            {
                addIngredient(i, (int)nudAddIngredient.Value);
            }

            lvIngredients.ResumeLayout();
        }

        /// <summary>
        /// adds an ingredient to the rigth side box, (should be run inside a suspend/resume layout enclosure)
        /// </summary>
        /// <param name="ingredient"></param>
        /// <param name="num"></param>
        private void addIngredient(Item ingredient, int num)
        {
            ListViewItem lvi = new ListViewItem(ingredient.name);
            lvi.SubItems.Add(num.ToString());
            lvi.Tag = new ItemQty()
            {
                qty = num,
                item = ingredient
            };

            lvIngredients.Items.Add(lvi);
        }

        /// <summary>
        /// Event handler for the remove ingredient button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnRemoveIngredient_Click(object sender, EventArgs e)
        {
            if(lvIngredients.SelectedItems.Count > 0)
            {
                lvIngredients.SuspendLayout();
                
                for (int i = lvIngredients.SelectedItems.Count-1; i >= 0; i--)
                {
                    lvIngredients.Items.Remove(lvIngredients.SelectedItems[i]);
                }

                lvIngredients.ResumeLayout();
            }
        }

        /// <summary>
        /// event handler for the save and close button
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            //setup the update to the main sql table
            string sql;
            if (this.curRecipie == null)
            {
                sql = @"INSERT INTO recipies
                                    (result,
                                     resultQty,
                                     profession,
                                     crafterLevel)
                        VALUES ('-" + result.id + @"',
                                '" + nudNumProduced.Value + @"',
                                '" + cbProfession.Text.Replace("'", "''") + @"',
                                '" + cbCrafterLevel.Text.Replace("'", "''") + @"')";
                curRecipie = new Recipie();
            }
            else
            {
                sql = @"UPDATE recipies
                        SET result = '" + result.id + @"',
                            resultQty = '" + nudNumProduced.Value + @"',
                            profession = '" + cbProfession.Text.Replace("'", "''") + @"',
                            crafterLevel = '" + cbCrafterLevel.Text.Replace("'", "''") + @"'
                        WHERE id = '" + curRecipie.id + @"'";
            }

            //update the memory copy of the recipie
            curRecipie.result = this.result;
            curRecipie.resultQty = (int)nudNumProduced.Value;
            curRecipie.profession = cbProfession.Text;
            curRecipie.crafterLevel = cbCrafterLevel.Text;

            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    comm.ExecuteNonQuery();
                }

                if (curRecipie.id == -1)
                {
                    //find the new recipie
                    sql = @"SELECT id
                            FROM recipies
                            WHERE result < 0";
                    using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                    {
                        curRecipie.id = (int)comm.ExecuteScalar();
                    }

                    //mark the recipie as not new
                    sql = @"UPDATE recipies
                            SET result = -1*result
                            WHERE id = '" + curRecipie.id + "'";
                    using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                    {
                        comm.ExecuteNonQuery();
                    }
                    
                    //add the link to this recipie to the rest of the program, 
                    //(since it's done by reference we can do this before the shared add ingredients code)
                    Program.recipies.Add(curRecipie);
                }
                else
                {
                    //if it's an existing recipie we already have the ids set, 
                    //but need to clear out the old ingredients before adding the new ones
                    curRecipie.ingredients.Clear();
                    sql = @"DELETE FROM recipieIngredients
                            WHERE recipieID = '" + curRecipie.id + "'";
                    using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                    {
                        comm.ExecuteNonQuery();
                    }
                }

                //add the ingredients to the recipie
                foreach (ListViewItem lvi in lvIngredients.Items)
                {
                    ItemQty iq = (ItemQty)lvi.Tag;
                    curRecipie.ingredients.Add(iq);
                    sql = @"INSERT INTO recipieIngredients
                                            (recipieID,
                                             ingredient,
                                             qty)
                                VALUES ('" + curRecipie.id + @"',
                                        '" + iq.item.id + @"',
                                        '" + iq.qty + @"')";
                    using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                    {
                        comm.ExecuteNonQuery();
                    }
                }

                //update the main window with the recipie
                Program.mainForm.lvItems_SelectedIndexChanged(null, null);
                Program.mainForm.txtSearch_TextChanged(null, null);
            }

            this.Close();
        }

        /// <summary>
        /// Event Handler for the column being clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lvIngredients_ColumnClick(object sender, ColumnClickEventArgs e)
        {
            // Determine whether the column is the same as the last column clicked.
            if (e.Column != sortColumn)
            {
                // Set the sort column to the new column.
                sortColumn = e.Column;
                // Set the sort order to ascending by default.
                lvIngredients.Sorting = System.Windows.Forms.SortOrder.Ascending;
            }
            else
            {
                // Determine what the last sort order was and change it.
                if (lvIngredients.Sorting == System.Windows.Forms.SortOrder.Ascending)
                    lvIngredients.Sorting = System.Windows.Forms.SortOrder.Descending;
                else
                    lvIngredients.Sorting = System.Windows.Forms.SortOrder.Ascending;
            }

            // Set the ListViewItemSorter property to a new ListViewItemComparer
            // object.
            lvIngredients.ListViewItemSorter = new lvItemComparer(e.Column, lvIngredients.Sorting);

            // Call the sort method to manually sort.
            lvIngredients.Sort();
        }
    }
}
