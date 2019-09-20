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
        private InventoryItem ii = null;
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
                lvi.Tag = Program.items[mod];
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

            //make sure a mod is selected
            if (modItem == null)
            {
                MessageBox.Show("Error: no mod selected to apply",
                                "Crafting",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
                return;
            }

            //check for pre-existing mods
            foreach (int currModId in ii.modsAttached)
            {
                Item currMod = Program.items[currModId];
                if (modItem.subType == currMod.subType)
                {
                    MessageBox.Show("Error: item already has a mod of type " + currMod.subType + ".\r\nRecover materials first before applying a new mod",
                                   "Crafting",
                                   MessageBoxButtons.OK,
                                   MessageBoxIcon.Error);
                    return;
                }
            }

            //make sure we have a base item to mod
            if (ii.qty <= 0)
            {
                MessageBox.Show("Error: no " + ii.item.name + " " + Program.mainForm.inventory.location,
                                "Crafting",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
                return;
            }

            //make the mod, (if we are applying the mod the button will say "Apply")
            if (btnCraft.Text == "Craft")
            {
                foreach (Recipie r in Program.recipies)
                {
                    if (r.result.id == modItem.id)
                    {
                        if(!Program.mainForm.craftRecipie(r))
                        {
                            return;
                        }
                        break;
                    }
                }
            }

            using (new TriggerLock())
            {
                InventoryItem mod = Program.mainForm.inventory.findLoot(modItem);
                if (Program.mainForm.updateItemQtyWithHistory(mod, -1))
                {
                    Program.mainForm.updateItemQtyWithHistory(ii, -1);

                    //look for an exact match in existing items
                    foreach(KeyValuePair<int, InventoryItem> currII in Program.mainForm.inventory.loot)
                    {
                        if((currII.Value.item.id == ii.item.id) && (currII.Value.modsAttached.Count == (ii.modsAttached.Count + 1)))
                        {
                            bool good = true;
                            foreach(int currMod in ii.modsAttached)
                            {
                                if(!currII.Value.modsAttached.Contains(currMod))
                                {
                                    good = false;
                                }
                            }

                            //we found an exact match to what we are trying to produce, use it
                            if(good)
                            {
                                //add one of the fully modded version
                                Program.mainForm.updateItemQtyWithHistory(currII.Value, 1);

                                //select the fully modded version
                                Program.mainForm.selectInventoryItem(currII.Value);

                                //update the form to use the fully modded item in the main window
                                ii = currII.Value;
                                loadCurrentMods();

                                return;
                            }
                        }
                    }

                    //no exact match found, make a new one
                    string sqlMakeInventoryItem = @"insert into inventory (itemid, location, qty)
			                                                       values ('" + ii.item.id + "', '" + Program.mainForm.inventory.location.Replace("'", "''") + "', 1)";
                    string sqlFindInventoryItem = @"select max(id) 
                                                    from inventory 
                                                    where itemId = '" + ii.item.id + @"'
                                                      and location = '" + Program.mainForm.inventory.location.Replace("'", "''") + "'";
                    using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                    {
                        dataConnection.Open();

                        //create the inventory item
                        using(SqlCommand comm = new SqlCommand(sqlMakeInventoryItem, dataConnection))
                        {
                            comm.ExecuteNonQuery();
                        }

                        //find the id of the inventory item
                        int newIIid = -1;
                        using(SqlCommand comm = new SqlCommand(sqlFindInventoryItem, dataConnection))
                        {
                            newIIid = (int)comm.ExecuteScalar();
                        }

                        //apply the new mod to the new item
                        string sqlApplyMod = @"insert into mods (inventoryId, subItemId)
		                                                 values ('" + newIIid + "', '" + modItem.id + "')";
                        using (SqlCommand comm = new SqlCommand(sqlApplyMod, dataConnection))
                        {
                            comm.ExecuteNonQuery();
                        }

                        InventoryItem iiNewItem = new InventoryItem();
                        iiNewItem.id = newIIid;
                        iiNewItem.item = ii.item;
                        iiNewItem.qty = 1;
                        iiNewItem.modsAttached.Add(modItem.id);

                        foreach(int oldMod in ii.modsAttached)
                        {
                            iiNewItem.modsAttached.Add(oldMod);
                            sqlApplyMod = @"insert into mods (inventoryId, subItemId)
		                                              values ('" + newIIid + "', '" + oldMod + "')";
                            using (SqlCommand comm = new SqlCommand(sqlApplyMod, dataConnection))
                            {
                                comm.ExecuteNonQuery();
                            }
                        }

                        Program.mainForm.inventory.loot.Add(newIIid, iiNewItem);

                        //update UI and 0 change history record to force change through to other clients
                        Program.mainForm.updateItem(ii.item);

                        //select the newly modded version in the main window
                        Program.mainForm.selectInventoryItem(iiNewItem);

                        //update the form to use the newly modded item
                        ii = iiNewItem;
                        loadCurrentMods();
                        CbMod_SelectedIndexChanged(null, null);
                    }
                }
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnRecover_Click(object sender, EventArgs e)
        {
            if(lvCurrentMods.SelectedItems.Count == 0)
            {
                MessageBox.Show("Error: no mod selected to recover from",
                                "Crafting",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Error);
                return;
            }

            using (new TriggerLock())
            {
                //find the mod we are removing
                Item modItem = (Item)lvCurrentMods.SelectedItems[0].Tag;

                //reduce the quantity of the fully modded version
                Program.mainForm.updateItemQtyWithHistory(ii, -1);

                //add the ingredients back
                foreach (Recipie r in Program.recipies)
                {
                    if (r.result.id == modItem.id)
                    {
                        foreach (InventoryItem i in r.ingredients)
                        {
                            InventoryItem ingredient = Program.mainForm.inventory.findLoot(i.item);
                            Program.mainForm.updateItemQtyWithHistory(ingredient, i.qty);
                        }

                        //only undo the first recipie that could have made this mod
                        break;
                    }
                }

                //find the version of this item without the given mod
                foreach (KeyValuePair<int, InventoryItem> currII in Program.mainForm.inventory.loot)
                {
                    if ((currII.Value.item.id == ii.item.id) && (currII.Value.modsAttached.Count == (ii.modsAttached.Count - 1)))
                    {
                        bool good = true;
                        foreach (int currMod in ii.modsAttached)
                        {
                            if ((currMod != modItem.id) && (!currII.Value.modsAttached.Contains(currMod)))
                            {
                                good = false;
                            }
                        }

                        //we found an exact match to what we are trying to produce, use it
                        if (good)
                        {
                            //add one of the less modded version
                            Program.mainForm.updateItemQtyWithHistory(currII.Value, 1);

                            //select the less modded version
                            Program.mainForm.selectInventoryItem(currII.Value);

                            //update the form to use the fully modded item in the main window
                            ii = currII.Value;
                            loadCurrentMods();
                            CbMod_SelectedIndexChanged(null, null);

                            return;
                        }
                    }
                }


                //if we got here then no version of the item has the given combination of mods.  We need to make it
                string sqlMakeInventoryItem = @"insert into inventory (itemid, location, qty)
			                                                       values ('" + ii.item.id + "', '" + Program.mainForm.inventory.location.Replace("'", "''") + "', 1)";
                string sqlFindInventoryItem = @"select max(id) 
                                                    from inventory 
                                                    where itemId = '" + ii.item.id + @"'
                                                      and location = '" + Program.mainForm.inventory.location.Replace("'", "''") + "'";
                using (SqlConnection dataConnection = new SqlConnection(Program.connectionString))
                {
                    dataConnection.Open();

                    //create the inventory item
                    using (SqlCommand comm = new SqlCommand(sqlMakeInventoryItem, dataConnection))
                    {
                        comm.ExecuteNonQuery();
                    }

                    //find the id of the inventory item
                    int newIIid = -1;
                    using (SqlCommand comm = new SqlCommand(sqlFindInventoryItem, dataConnection))
                    {
                        newIIid = (int)comm.ExecuteScalar();
                    }

                    //make the item in local classes
                    InventoryItem iiNewItem = new InventoryItem();
                    iiNewItem.id = newIIid;
                    iiNewItem.item = ii.item;
                    iiNewItem.qty = 1;

                    //apply the other mods
                    foreach (int oldMod in ii.modsAttached)
                    {
                        if (oldMod != modItem.id)
                        {
                            iiNewItem.modsAttached.Add(oldMod);
                            string sqlApplyMod = @"insert into mods (inventoryId, subItemId)
		                                                 values ('" + newIIid + "', '" + oldMod + "')";
                            using (SqlCommand comm = new SqlCommand(sqlApplyMod, dataConnection))
                            {
                                comm.ExecuteNonQuery();
                            }
                        }
                    }

                    //add the item to the list
                    Program.mainForm.inventory.loot.Add(newIIid, iiNewItem);

                    //update UI and 0 change history record to force change through to other clients
                    Program.mainForm.updateItem(ii.item);

                    //select the newly modded version in the main window
                    Program.mainForm.selectInventoryItem(iiNewItem);

                    //update the form to use the newly modded item
                    ii = iiNewItem;
                    loadCurrentMods();
                    CbMod_SelectedIndexChanged(null, null);
                }
            }
        }
    }
}
