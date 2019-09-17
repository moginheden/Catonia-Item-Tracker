namespace Catonia_Item_Tracker
{
    partial class FrmMods
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtItemName = new System.Windows.Forms.TextBox();
            this.lblItemName = new System.Windows.Forms.Label();
            this.lblModList = new System.Windows.Forms.Label();
            this.btnClose = new System.Windows.Forms.Button();
            this.cbSubType = new System.Windows.Forms.ComboBox();
            this.lblSubType = new System.Windows.Forms.Label();
            this.lblMod = new System.Windows.Forms.Label();
            this.cbMod = new System.Windows.Forms.ComboBox();
            this.lvCurrentMods = new System.Windows.Forms.ListView();
            this.chName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chType = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chSubType = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblType = new System.Windows.Forms.Label();
            this.txtType = new System.Windows.Forms.TextBox();
            this.btnCraft = new System.Windows.Forms.Button();
            this.btnRecover = new System.Windows.Forms.Button();
            this.lvMaterials = new System.Windows.Forms.ListView();
            this.chNewName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chNewQtyNeeded = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.label1 = new System.Windows.Forms.Label();
            this.lblSkill = new System.Windows.Forms.Label();
            this.chNewQtyAvailable = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // txtItemName
            // 
            this.txtItemName.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtItemName.Location = new System.Drawing.Point(191, 9);
            this.txtItemName.Name = "txtItemName";
            this.txtItemName.ReadOnly = true;
            this.txtItemName.Size = new System.Drawing.Size(332, 44);
            this.txtItemName.TabIndex = 0;
            // 
            // lblItemName
            // 
            this.lblItemName.AutoSize = true;
            this.lblItemName.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblItemName.Location = new System.Drawing.Point(12, 12);
            this.lblItemName.Name = "lblItemName";
            this.lblItemName.Size = new System.Drawing.Size(173, 37);
            this.lblItemName.TabIndex = 1;
            this.lblItemName.Text = "Item Name";
            // 
            // lblModList
            // 
            this.lblModList.AutoSize = true;
            this.lblModList.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblModList.Location = new System.Drawing.Point(15, 330);
            this.lblModList.Name = "lblModList";
            this.lblModList.Size = new System.Drawing.Size(147, 24);
            this.lblModList.TabIndex = 6;
            this.lblModList.Text = "Current Mod List";
            // 
            // btnClose
            // 
            this.btnClose.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClose.Location = new System.Drawing.Point(461, 521);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(62, 26);
            this.btnClose.TabIndex = 7;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // cbSubType
            // 
            this.cbSubType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbSubType.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F);
            this.cbSubType.FormattingEnabled = true;
            this.cbSubType.Items.AddRange(new object[] {
            "",
            "Raw Material",
            "Armor - Light",
            "Armor - Light - Mod",
            "Armour - Medium",
            "Armour - Medium - Mod",
            "Armour - Heavy",
            "Armour - Heavy - Mod",
            "Shield - Buckler",
            "Shield - Buckler - Mod",
            "Shield - Light",
            "Shield - Light - Mod",
            "Shield - Heavy",
            "Shield - Heavy - Mod",
            "Shield - Tower",
            "Shield - Tower - Mod",
            "Ammunition",
            "Ammunition - Mod",
            "Weapon - Light",
            "Weapon - Light - Mod",
            "Weapon - 1H",
            "Weapon - 1H - Mod",
            "Weapon - 2H",
            "Weapon - 2H - Mod",
            "Consumable",
            "Garments"});
            this.cbSubType.Location = new System.Drawing.Point(90, 110);
            this.cbSubType.Name = "cbSubType";
            this.cbSubType.Size = new System.Drawing.Size(151, 24);
            this.cbSubType.TabIndex = 8;
            this.cbSubType.SelectedIndexChanged += new System.EventHandler(this.CbType_SelectedIndexChanged);
            // 
            // lblSubType
            // 
            this.lblSubType.AutoSize = true;
            this.lblSubType.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F);
            this.lblSubType.Location = new System.Drawing.Point(16, 115);
            this.lblSubType.Name = "lblSubType";
            this.lblSubType.Size = new System.Drawing.Size(67, 16);
            this.lblSubType.TabIndex = 9;
            this.lblSubType.Text = "Sub Type";
            // 
            // lblMod
            // 
            this.lblMod.AutoSize = true;
            this.lblMod.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F);
            this.lblMod.Location = new System.Drawing.Point(247, 115);
            this.lblMod.Name = "lblMod";
            this.lblMod.Size = new System.Drawing.Size(35, 16);
            this.lblMod.TabIndex = 11;
            this.lblMod.Text = "Mod";
            // 
            // cbMod
            // 
            this.cbMod.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbMod.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F);
            this.cbMod.FormattingEnabled = true;
            this.cbMod.Location = new System.Drawing.Point(288, 109);
            this.cbMod.Name = "cbMod";
            this.cbMod.Size = new System.Drawing.Size(173, 24);
            this.cbMod.TabIndex = 10;
            this.cbMod.SelectedIndexChanged += new System.EventHandler(this.CbMod_SelectedIndexChanged);
            // 
            // lvCurrentMods
            // 
            this.lvCurrentMods.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.chName,
            this.chType,
            this.chSubType});
            this.lvCurrentMods.FullRowSelect = true;
            this.lvCurrentMods.Location = new System.Drawing.Point(16, 357);
            this.lvCurrentMods.MultiSelect = false;
            this.lvCurrentMods.Name = "lvCurrentMods";
            this.lvCurrentMods.Size = new System.Drawing.Size(504, 158);
            this.lvCurrentMods.TabIndex = 12;
            this.lvCurrentMods.UseCompatibleStateImageBehavior = false;
            this.lvCurrentMods.View = System.Windows.Forms.View.Details;
            // 
            // chName
            // 
            this.chName.Text = "Name";
            this.chName.Width = 265;
            // 
            // chType
            // 
            this.chType.Text = "Type";
            this.chType.Width = 125;
            // 
            // chSubType
            // 
            this.chSubType.Text = "Sub Type";
            this.chSubType.Width = 110;
            // 
            // lblType
            // 
            this.lblType.AutoSize = true;
            this.lblType.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblType.Location = new System.Drawing.Point(12, 62);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(157, 37);
            this.lblType.TabIndex = 14;
            this.lblType.Text = "Item Type";
            // 
            // txtType
            // 
            this.txtType.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtType.Location = new System.Drawing.Point(191, 59);
            this.txtType.Name = "txtType";
            this.txtType.ReadOnly = true;
            this.txtType.Size = new System.Drawing.Size(332, 44);
            this.txtType.TabIndex = 13;
            // 
            // btnCraft
            // 
            this.btnCraft.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCraft.Location = new System.Drawing.Point(467, 109);
            this.btnCraft.Name = "btnCraft";
            this.btnCraft.Size = new System.Drawing.Size(56, 26);
            this.btnCraft.TabIndex = 15;
            this.btnCraft.Text = "Craft";
            this.btnCraft.UseVisualStyleBackColor = true;
            this.btnCraft.Click += new System.EventHandler(this.btnCraft_Click);
            // 
            // btnRecover
            // 
            this.btnRecover.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRecover.Location = new System.Drawing.Point(19, 521);
            this.btnRecover.Name = "btnRecover";
            this.btnRecover.Size = new System.Drawing.Size(150, 26);
            this.btnRecover.TabIndex = 16;
            this.btnRecover.Text = "Recover Materials";
            this.btnRecover.UseVisualStyleBackColor = true;
            // 
            // lvMaterials
            // 
            this.lvMaterials.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.chNewName,
            this.chNewQtyNeeded,
            this.chNewQtyAvailable});
            this.lvMaterials.FullRowSelect = true;
            this.lvMaterials.Location = new System.Drawing.Point(16, 164);
            this.lvMaterials.MultiSelect = false;
            this.lvMaterials.Name = "lvMaterials";
            this.lvMaterials.Size = new System.Drawing.Size(504, 158);
            this.lvMaterials.TabIndex = 18;
            this.lvMaterials.UseCompatibleStateImageBehavior = false;
            this.lvMaterials.View = System.Windows.Forms.View.Details;
            // 
            // chNewName
            // 
            this.chNewName.Text = "Name";
            this.chNewName.Width = 364;
            // 
            // chNewQtyNeeded
            // 
            this.chNewQtyNeeded.Text = "# Needed";
            this.chNewQtyNeeded.Width = 65;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 137);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(205, 24);
            this.label1.TabIndex = 17;
            this.label1.Text = "Materials For New Mod";
            // 
            // lblSkill
            // 
            this.lblSkill.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblSkill.AutoSize = true;
            this.lblSkill.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F);
            this.lblSkill.Location = new System.Drawing.Point(292, 143);
            this.lblSkill.Name = "lblSkill";
            this.lblSkill.Size = new System.Drawing.Size(228, 16);
            this.lblSkill.TabIndex = 19;
            this.lblSkill.Text = "Requires Apprentice (2) Stonemason";
            this.lblSkill.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // chNewQtyAvailable
            // 
            this.chNewQtyAvailable.Text = "# Available";
            this.chNewQtyAvailable.Width = 71;
            // 
            // FrmMods
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(527, 559);
            this.Controls.Add(this.lblSkill);
            this.Controls.Add(this.lvMaterials);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnRecover);
            this.Controls.Add(this.btnCraft);
            this.Controls.Add(this.lblType);
            this.Controls.Add(this.txtType);
            this.Controls.Add(this.lvCurrentMods);
            this.Controls.Add(this.lblMod);
            this.Controls.Add(this.cbMod);
            this.Controls.Add(this.lblSubType);
            this.Controls.Add(this.cbSubType);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.lblModList);
            this.Controls.Add(this.lblItemName);
            this.Controls.Add(this.txtItemName);
            this.MaximumSize = new System.Drawing.Size(543, 598);
            this.MinimumSize = new System.Drawing.Size(543, 598);
            this.Name = "FrmMods";
            this.Text = "Mods";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtItemName;
        private System.Windows.Forms.Label lblItemName;
        private System.Windows.Forms.Label lblModList;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.ComboBox cbSubType;
        private System.Windows.Forms.Label lblSubType;
        private System.Windows.Forms.Label lblMod;
        private System.Windows.Forms.ComboBox cbMod;
        private System.Windows.Forms.ListView lvCurrentMods;
        private System.Windows.Forms.ColumnHeader chName;
        private System.Windows.Forms.ColumnHeader chType;
        private System.Windows.Forms.ColumnHeader chSubType;
        private System.Windows.Forms.Label lblType;
        private System.Windows.Forms.TextBox txtType;
        private System.Windows.Forms.Button btnCraft;
        private System.Windows.Forms.Button btnRecover;
        private System.Windows.Forms.ListView lvMaterials;
        private System.Windows.Forms.ColumnHeader chNewName;
        private System.Windows.Forms.ColumnHeader chNewQtyNeeded;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblSkill;
        private System.Windows.Forms.ColumnHeader chNewQtyAvailable;
    }
}