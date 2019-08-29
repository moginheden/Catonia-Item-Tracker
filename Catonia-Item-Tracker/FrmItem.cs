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
            CbType_SelectedIndexChanged(null, null);
        }

        public FrmItem(Item item)
        {
            InitializeComponent();

            this.Text += item.id;

            itemNum = item.id;
            txtItemName.Text = item.name;
            txtDescription.Text = item.description;
            nudGoldValue.Value = item.cost;
            cbType.SelectedItem = item.type;
            cbSubType.Text = item.subType;

            CbType_SelectedIndexChanged(null, null);
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
                                     type,
                                     subType)
                        VALUES ('" + txtItemName.Text.Replace("'", "") + @"',
                                '" + txtDescription.Text.Replace("'", "") + @"',
                                '" + nudGoldValue.Value.ToString() + @"',
                                '" + ((string)cbType.SelectedItem).Replace("'", "") + @"',
                                '" + ((string)cbSubType.Text).Replace("'", "") + @"')";
            }
            else
            {
                sql = @"UPDATE items
                        SET name = '" + txtItemName.Text.Replace("'", "") + @"',
                            description = '" + txtDescription.Text.Replace("'", "") + @"',
                            cost = '" + nudGoldValue.Value.ToString() + @"',
                            type = '" + ((string)cbType.SelectedItem).Replace("'", "") + @"',
                            subType = '" + ((string)cbSubType.Text).Replace("'", "") + @"'
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
                        type = ((string)cbType.SelectedItem),
                        subType = ((string)cbSubType.Text)
                    };

                    Program.items.Add(item.id, item);
                    foreach (KeyValuePair<string, Inventory> i in Program.inventories)
                    {
                        i.Value.loot.Add(item.id *-1, new InventoryItem()
                        {
                            item = item,
                            qty = 0
                        });
                    }

                    Program.mainForm.updateItem(item);
                }
                else
                {
                    Item item = Program.items[itemNum];
                    item.name = txtItemName.Text;
                    item.description = txtDescription.Text;
                    item.cost = (int)nudGoldValue.Value;
                    item.type = ((string)cbType.SelectedItem);
                    item.subType = ((string)cbSubType.Text);

                    Program.mainForm.updateItem(item);
                }
            }

            this.Close();
        }

        private void CbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            string type = (string)cbType.SelectedItem;

            cbSubType.Visible = false;
            cbSubType.Text = "";
            lblSubType.Visible = false;
            if (type.EndsWith(" - Mod"))
            {
                cbSubType.Items.Clear();

                using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                {
                    dataConnection.Open();

                    string selectSql = @"SELECT DISTINCT subType
                                         FROM items
                                         WHERE type = '" + type.Replace("'", "") + @"'";
                    using (SqlCommand comm = new SqlCommand(selectSql, dataConnection))
                    {
                        using (SqlDataReader reader = comm.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                cbSubType.Items.Add(reader.GetString(0));
                            }
                        }
                    }
                }
                cbSubType.Visible = true;
                lblSubType.Visible = true;
            }
        }
    }
}
