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
    public partial class FrmMods : Form
    {
        private readonly InventoryItem ii = null;
        private readonly int defaultSkillRight;

        public readonly bool valid;

        public FrmMods(InventoryItem ii)
        {
            InitializeComponent();

            this.ii = ii;

            txtItemName.Text = ii.item.name;
            txtType.Text = ii.item.type;

            //save the right of the skill label to adjust when we re-word it
            defaultSkillRight = lblSkill.Right;
            lblSkill.Text = "";

            loadCurrentMods();

            valid = loadSubTypes();

            if (valid)
            {
                CbType_SelectedIndexChanged(null, null);
            }
        }

        /// <summary>
        /// loads the current mods into the bottom listview
        /// </summary>
        private void loadCurrentMods()
        {
            lvCurrentMods.BeginUpdate();
            lvCurrentMods.Items.Clear();

            foreach(int mod in ii.modsAttached)
            {
                string[] columns = { Program.items[mod].name, Program.items[mod].type, Program.items[mod].subType };
                ListViewItem lvi = new ListViewItem(columns);
                lvCurrentMods.Items.Add(lvi);
            }

            lvCurrentMods.EndUpdate();
        }

        /// <summary>
        /// loads the valid mod sub types for the current item
        /// </summary>
        /// <returns>If the item has any valid mods</returns>
        private bool loadSubTypes()
        {
            cbSubType.Items.Clear();
            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();

                string selectSql = @"SELECT DISTINCT subType
                                        FROM items
                                        WHERE type = '" + ii.item.type.Replace("'", "") + @" - Mod'";
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

            if(cbSubType.Items.Count == 0)
            {
                MessageBox.Show("Item has no possible mods", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                this.Close();
                return false;
            }

            return true;
        }

        /// <summary>
        /// loads the mods for the selected type
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbMod.BeginUpdate();
            cbMod.Items.Clear();

            lblSkill.Text = "";

            if (cbSubType.Items.Count == 0)
            {
                cbMod.EndUpdate();
                return;
            }

            string modType = txtType.Text + " - Mod";
            string subType = "";
            if (cbSubType.SelectedIndex == -1)
            {
                subType = cbSubType.Items[0].ToString();
            }
            else
            {
                subType = cbSubType.SelectedItem.ToString();
            }
            foreach (KeyValuePair<int, Item> kvp in Program.items)
            {
                if((kvp.Value.type == modType)
                    && (kvp.Value.subType == subType))
                {
                    cbMod.Items.Add(kvp.Value);
                }
            }

            cbMod.EndUpdate();
        }

        /// <summary>
        /// loads the ingerdients for the selected mod
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CbMod_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnCraft.Text = "Craft";

            Item modItem = (Item)cbMod.SelectedItem;

            lvMaterials.BeginUpdate();
            lvMaterials.Items.Clear();

            ///TODO: check what happens if there has never been any of the mod in the current inventory
            InventoryItem mod = Program.mainForm.inventory.findLoot(modItem);
            foreach (Recipie r in Program.recipies)
            {
                if (r.result.id == modItem.id)
                {
                    if (mod.qty != 0)
                    {
                        btnCraft.Text = "Apply";
                        lvMaterials.Items.Add(new ListViewItem(new string[] { mod.item.name,
                                                                              "1",
                                                                              mod.qty.ToString() }));
                    }
                    else
                    {
                        foreach(InventoryItem ingredient in r.ingredients)
                        {
                            InventoryItem ingredientInInventory = Program.mainForm.inventory.findLoot(ingredient.item);
                            lvMaterials.Items.Add(new ListViewItem(new string[] { ingredient.item.name,
                                                                                  ingredient.qty.ToString(),
                                                                                  ingredientInInventory.qty.ToString() }));
                        }
                    }
                    lblSkill.Text = "Requires level " + r.crafterLevel.Substring(0,2) + "(" + r.crafterLevel.Substring(2) + ") " + r.profession;
                    lblSkill.Left = defaultSkillRight - lblSkill.Width;
                    break;
                }
            }

            lvMaterials.EndUpdate();
        }

        /// <summary>
        /// event handler for the craft/apply button being clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCraft_Click(object sender, EventArgs e)
        {
            Item modItem = (Item)cbMod.SelectedItem;

            //make the mod, (if we are applying the mod the button will say "Apply")
            if (btnCraft.Text == "Craft")
            {
                foreach (Recipie r in Program.recipies)
                {
                    if (r.result.id == modItem.id)
                    {
                        //make sure we have enough
                        foreach (InventoryItem ingredient in r.ingredients)
                        {
                            InventoryItem ingredientInInventory = Program.mainForm.inventory.findLoot(ingredient.item);
                            if(ingredientInInventory.qty < ingredient.qty)
                            {
                                MessageBox.Show("You need " + (ingredient.qty - ingredientInInventory.qty) + " more " + ingredient.item.name, 
                                                "Error", 
                                                MessageBoxButtons.OK, 
                                                MessageBoxIcon.Error);
                                return;
                            }
                        }

                        //reduce qty of materials
                        foreach (InventoryItem ingredient in r.ingredients)
                        {
                            InventoryItem ingredientInInventory = Program.mainForm.inventory.findLoot(ingredient.item);
                            
                            ///TODO: implement this
                        }
                        break;
                    }
                }
            }



            string sql;
            sql = @"
update inventory
set qty = qty-1
where id = '475'

insert into inventoryHistory
select '475' as inventoryId, '1518' as itemId, GETDATE() as modificationDate, 'On Hand' as location, -1 as qty, 'Split into modded inventory id 476' as note, 'DESKTOP-586K34K' as clientName

insert into inventory (itemid, location, qty)
			   values ('1518', 'On Hand', 1)

select max(id) from inventory where itemId = '1518'

insert into inventoryHistory
select '476' as inventoryId, '1518' as itemId, GETDATE() as modificationDate, 'On Hand' as location, 1 as qty, 'Created from inventory id 475' as note, 'DESKTOP-586K34K' as clientName

update inventory
set qty = qty-1
where id = '474'

insert into mods (inventoryId, subItemId)
		  values ('476', '1919')

insert into inventoryHistory
select '474' as inventoryId, '1919' as itemId, GETDATE() as modificationDate, 'On Hand' as location, -1 as qty, 'Applied to inventory id 476' as note, 'DESKTOP-586K34K' as clientName

insert into inventoryHistory
select '476' as inventoryId, '1518' as itemId, GETDATE() as modificationDate, 'On Hand' as location, 0 as qty, 'Mod 1919 Applied' as note, 'DESKTOP-586K34K' as clientName
";

            using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
            {
                dataConnection.Open();
                using (SqlCommand comm = new SqlCommand(sql, dataConnection))
                {
                    //comm.ExecuteNonQuery();
                }

                //Program.mainForm.updateItem(item);
            }

            this.Close();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
