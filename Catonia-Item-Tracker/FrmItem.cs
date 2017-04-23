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
    public partial class FrmItem : Form
    {
        private int itemNum = -1;

        public FrmItem()
        {
            InitializeComponent();
        }

        public FrmItem(Item item)
        {
            InitializeComponent();

            this.Text += item.id;

            itemNum = item.id;
            txtItemName.Text = item.name;
            txtDescription.Text = item.description;
            nudGoldValue.Value = item.cost;
            cbUseable.Checked = item.usable;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string sql;
            if(itemNum == -1)
            {
                sql = @"INSERT INTO items
                                    (name,
                                     description,
                                     cost,
                                     usable)
                        VALUES ('" + txtItemName.Text.Replace("'", "") + @"',
                                '" + txtDescription.Text.Replace("'", "") + @"',
                                '" + nudGoldValue.Value.ToString() + @"',
                                '" + (cbUseable.Checked ? 1 : 0) + @"')";
            }
            else
            {
                sql = @"UPDATE items
                        SET name = '" + txtItemName.Text.Replace("'", "") + @"',
                            description = '" + txtDescription.Text.Replace("'", "") + @"',
                            cost = '" + nudGoldValue.Value.ToString() + @"',
                            usable = '" + (cbUseable.Checked ? 1 : 0) + @"'
                        WHERE id = '" + itemNum.ToString() + @"'";
            }
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    comm.ExecuteNonQuery();
                }

                if(itemNum == -1)
                {
                    sql = @"SELECT id
                            FROM items
                            WHERE name = '" + txtItemName.Text.Replace("'", "") + @"'";
                    using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                    {
                        itemNum = (int)comm.ExecuteScalar();
                    }

                    Item item = new Item()
                    {
                        cost = (int)nudGoldValue.Value,
                        description = txtDescription.Text,
                        name = txtItemName.Text,
                        id = itemNum,
                        usable = cbUseable.Checked
                    };

                    Program.items.Add(item);
                    Program.leftBehind.loot.Add(new ItemQty()
                    {
                        item = item,
                        qty = 0
                    });

                    Program.onHand.loot.Add(new ItemQty()
                    {
                        item = item,
                        qty = 0
                    });

                    Program.mainForm.updateItem(item);
                }
                else
                {
                    Item item = Program.findLootByID(itemNum);
                    item.name = txtItemName.Text;
                    item.description = txtDescription.Text;
                    item.cost = (int)nudGoldValue.Value;
                    item.usable = cbUseable.Checked;

                    Program.mainForm.updateItem(item);
                }
            }

            this.Close();
        }
    }
}
