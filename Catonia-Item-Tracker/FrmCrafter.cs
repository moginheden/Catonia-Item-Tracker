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
    public partial class FrmCrafter : Form
    {
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
            for (int i = lvRecipies.Columns.Count - 1; i > 2; i--)
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
                    row.SubItems.Add(r.resultQty.ToString());
                    row.SubItems.Add("");

                    int numWeCanMake = int.MaxValue;

                    //add columns for each ingredient
                    for (int i = 0; i < r.ingredients.Count; i++)
                    {
                        ItemQty ingredient = r.ingredients[i];
                        if (lvRecipies.Columns.Count < (((i + 1) * 3) + 3))
                        {
                            lvRecipies.Columns.Add("Ingredient " + (i + 1));
                            lvRecipies.Columns.Add("Uses");
                            lvRecipies.Columns.Add("Have");
                        }

                        row.SubItems.Add(ingredient.item.name);
                        row.SubItems.Add(ingredient.qty.ToString());

                        int inInventory = Program.mainForm.inventory.findLoot(ingredient.item.id).qty;
                        row.SubItems.Add(inInventory.ToString());

                        if ((inInventory / ingredient.qty) < numWeCanMake)
                        {
                            numWeCanMake = inInventory / ingredient.qty;
                        }
                    }

                    row.SubItems[2].Text = numWeCanMake.ToString();
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
        }
    }
}
