namespace Catonia_Item_Tracker
{
    partial class FrmMain
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
            this.components = new System.ComponentModel.Container();
            this.txtSearch = new System.Windows.Forms.ComboBox();
            this.lblSearch = new System.Windows.Forms.Label();
            this.lvItems = new System.Windows.Forms.ListView();
            this.colItemName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colNumOwned = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colValue = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colValueTotal = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colCraft = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colUsable = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.colLastUpdated = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmsItemList = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.editItemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.createNewRecipieItemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addOrRemoveModToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nudOwned = new System.Windows.Forms.NumericUpDown();
            this.lblNumOwned = new System.Windows.Forms.Label();
            this.lblGold = new System.Windows.Forms.Label();
            this.nudGold = new System.Windows.Forms.NumericUpDown();
            this.btnAddGold = new System.Windows.Forms.Button();
            this.nudAddGold = new System.Windows.Forms.NumericUpDown();
            this.gbGold = new System.Windows.Forms.GroupBox();
            this.gbItemManagment = new System.Windows.Forms.GroupBox();
            this.lblDeal = new System.Windows.Forms.Label();
            this.nudDeal = new System.Windows.Forms.NumericUpDown();
            this.lvRecipiesUsingItem = new System.Windows.Forms.ListView();
            this.professionUsing = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.crafterLevelUsing = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.resultUsing = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numMadeUsing = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numCanMakeUsing = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmsRecipieList = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.editRecipieToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.createNewRecipieToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.lblUsingItem = new System.Windows.Forms.Label();
            this.btnBuy = new System.Windows.Forms.Button();
            this.nudAddItems = new System.Windows.Forms.NumericUpDown();
            this.btnAddItems = new System.Windows.Forms.Button();
            this.btnMake = new System.Windows.Forms.Button();
            this.lvRecipiesMakingItem = new System.Windows.Forms.ListView();
            this.professionMaking = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.crafterLevelMaking = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numMadeMaking = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numCanMakeMaking = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblItemHistory = new System.Windows.Forms.Label();
            this.lvItemHistory = new System.Windows.Forms.ListView();
            this.dateTime = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numAdded = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.item = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.note = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblMakingItem = new System.Windows.Forms.Label();
            this.txtDescription = new System.Windows.Forms.RichTextBox();
            this.cbSearchDescriptions = new System.Windows.Forms.CheckBox();
            this.btnCreateNew = new System.Windows.Forms.Button();
            this.ddlInventories = new System.Windows.Forms.ComboBox();
            this.btnCrafter = new System.Windows.Forms.Button();
            this.btnMods = new System.Windows.Forms.Button();
            this.cmsItemList.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudOwned)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudGold)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddGold)).BeginInit();
            this.gbGold.SuspendLayout();
            this.gbItemManagment.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudDeal)).BeginInit();
            this.cmsRecipieList.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).BeginInit();
            this.SuspendLayout();
            // 
            // txtSearch
            // 
            this.txtSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearch.FormattingEnabled = true;
            this.txtSearch.ImeMode = System.Windows.Forms.ImeMode.On;
            this.txtSearch.Location = new System.Drawing.Point(12, 28);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(367, 45);
            this.txtSearch.TabIndex = 1;
            this.txtSearch.SelectedIndexChanged += new System.EventHandler(this.TxtSearch_SelectedIndexChanged);
            this.txtSearch.KeyUp += new System.Windows.Forms.KeyEventHandler(this.TxtSearch_KeyUp);
            // 
            // lblSearch
            // 
            this.lblSearch.AutoSize = true;
            this.lblSearch.Location = new System.Drawing.Point(12, 9);
            this.lblSearch.Name = "lblSearch";
            this.lblSearch.Size = new System.Drawing.Size(90, 13);
            this.lblSearch.TabIndex = 2;
            this.lblSearch.Text = "Items in Inventory";
            // 
            // lvItems
            // 
            this.lvItems.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvItems.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.colItemName,
            this.colNumOwned,
            this.colValue,
            this.colValueTotal,
            this.colCraft,
            this.colUsable,
            this.colLastUpdated});
            this.lvItems.ContextMenuStrip = this.cmsItemList;
            this.lvItems.FullRowSelect = true;
            this.lvItems.HideSelection = false;
            this.lvItems.Location = new System.Drawing.Point(12, 79);
            this.lvItems.Name = "lvItems";
            this.lvItems.Size = new System.Drawing.Size(494, 776);
            this.lvItems.TabIndex = 3;
            this.lvItems.UseCompatibleStateImageBehavior = false;
            this.lvItems.View = System.Windows.Forms.View.Details;
            this.lvItems.ColumnClick += new System.Windows.Forms.ColumnClickEventHandler(this.lvItems_ColumnClick);
            this.lvItems.SelectedIndexChanged += new System.EventHandler(this.lvItems_SelectedIndexChanged);
            // 
            // colItemName
            // 
            this.colItemName.Text = "Item Name";
            this.colItemName.Width = 143;
            // 
            // colNumOwned
            // 
            this.colNumOwned.Text = "#";
            this.colNumOwned.Width = 40;
            // 
            // colValue
            // 
            this.colValue.Text = "Value";
            this.colValue.Width = 42;
            // 
            // colValueTotal
            // 
            this.colValueTotal.Text = "Total";
            this.colValueTotal.Width = 42;
            // 
            // colCraft
            // 
            this.colCraft.Text = "Craft";
            this.colCraft.Width = 34;
            // 
            // colUsable
            // 
            this.colUsable.Text = "Type";
            this.colUsable.Width = 38;
            // 
            // colLastUpdated
            // 
            this.colLastUpdated.Text = "Updated";
            this.colLastUpdated.Width = 75;
            // 
            // cmsItemList
            // 
            this.cmsItemList.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.editItemToolStripMenuItem,
            this.createNewRecipieItemToolStripMenuItem,
            this.addOrRemoveModToolStripMenuItem});
            this.cmsItemList.Name = "cmsItemList";
            this.cmsItemList.ShowImageMargin = false;
            this.cmsItemList.Size = new System.Drawing.Size(160, 70);
            this.cmsItemList.Closing += new System.Windows.Forms.ToolStripDropDownClosingEventHandler(this.CmsItemList_Closing);
            this.cmsItemList.Opening += new System.ComponentModel.CancelEventHandler(this.cmsItemList_Opening);
            // 
            // editItemToolStripMenuItem
            // 
            this.editItemToolStripMenuItem.Name = "editItemToolStripMenuItem";
            this.editItemToolStripMenuItem.Size = new System.Drawing.Size(159, 22);
            this.editItemToolStripMenuItem.Text = "Edit Item";
            this.editItemToolStripMenuItem.Click += new System.EventHandler(this.editItemToolStripMenuItem_Click);
            // 
            // createNewRecipieItemToolStripMenuItem
            // 
            this.createNewRecipieItemToolStripMenuItem.Name = "createNewRecipieItemToolStripMenuItem";
            this.createNewRecipieItemToolStripMenuItem.Size = new System.Drawing.Size(159, 22);
            this.createNewRecipieItemToolStripMenuItem.Text = "Create New Recipie";
            this.createNewRecipieItemToolStripMenuItem.Click += new System.EventHandler(this.createNewRecipieItemToolStripMenuItem_Click);
            // 
            // addOrRemoveModToolStripMenuItem
            // 
            this.addOrRemoveModToolStripMenuItem.Name = "addOrRemoveModToolStripMenuItem";
            this.addOrRemoveModToolStripMenuItem.Size = new System.Drawing.Size(159, 22);
            this.addOrRemoveModToolStripMenuItem.Text = "Add or Remove Mod";
            this.addOrRemoveModToolStripMenuItem.Click += new System.EventHandler(this.AddOrRemoveModToolStripMenuItem_Click);
            // 
            // nudOwned
            // 
            this.nudOwned.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.nudOwned.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudOwned.Location = new System.Drawing.Point(159, 19);
            this.nudOwned.Maximum = new decimal(new int[] {
            -1486618625,
            232830643,
            0,
            0});
            this.nudOwned.Name = "nudOwned";
            this.nudOwned.Size = new System.Drawing.Size(219, 53);
            this.nudOwned.TabIndex = 4;
            this.nudOwned.ThousandsSeparator = true;
            this.nudOwned.ValueChanged += new System.EventHandler(this.nudOwned_ValueChanged);
            // 
            // lblNumOwned
            // 
            this.lblNumOwned.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblNumOwned.AutoSize = true;
            this.lblNumOwned.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNumOwned.Location = new System.Drawing.Point(31, 32);
            this.lblNumOwned.Name = "lblNumOwned";
            this.lblNumOwned.Size = new System.Drawing.Size(122, 31);
            this.lblNumOwned.TabIndex = 5;
            this.lblNumOwned.Text = "# Owned";
            // 
            // lblGold
            // 
            this.lblGold.AutoSize = true;
            this.lblGold.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGold.Location = new System.Drawing.Point(14, 29);
            this.lblGold.Name = "lblGold";
            this.lblGold.Size = new System.Drawing.Size(139, 31);
            this.lblGold.TabIndex = 7;
            this.lblGold.Text = "Gold Total";
            // 
            // nudGold
            // 
            this.nudGold.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudGold.InterceptArrowKeys = false;
            this.nudGold.Location = new System.Drawing.Point(159, 19);
            this.nudGold.Maximum = new decimal(new int[] {
            -1486618625,
            232830643,
            0,
            0});
            this.nudGold.Name = "nudGold";
            this.nudGold.Size = new System.Drawing.Size(219, 53);
            this.nudGold.TabIndex = 6;
            this.nudGold.ThousandsSeparator = true;
            this.nudGold.ValueChanged += new System.EventHandler(this.nudGold_ValueChanged);
            // 
            // btnAddGold
            // 
            this.btnAddGold.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddGold.Location = new System.Drawing.Point(9, 88);
            this.btnAddGold.Name = "btnAddGold";
            this.btnAddGold.Size = new System.Drawing.Size(144, 41);
            this.btnAddGold.TabIndex = 8;
            this.btnAddGold.Text = "Add Gold";
            this.btnAddGold.UseVisualStyleBackColor = true;
            this.btnAddGold.Click += new System.EventHandler(this.btnAddGold_Click);
            // 
            // nudAddGold
            // 
            this.nudAddGold.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudAddGold.Location = new System.Drawing.Point(159, 80);
            this.nudAddGold.Maximum = new decimal(new int[] {
            -559939585,
            902409669,
            54,
            0});
            this.nudAddGold.Minimum = new decimal(new int[] {
            -559939585,
            902409669,
            54,
            -2147483648});
            this.nudAddGold.Name = "nudAddGold";
            this.nudAddGold.Size = new System.Drawing.Size(219, 53);
            this.nudAddGold.TabIndex = 9;
            this.nudAddGold.ThousandsSeparator = true;
            // 
            // gbGold
            // 
            this.gbGold.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.gbGold.Controls.Add(this.nudGold);
            this.gbGold.Controls.Add(this.lblGold);
            this.gbGold.Controls.Add(this.nudAddGold);
            this.gbGold.Controls.Add(this.btnAddGold);
            this.gbGold.Location = new System.Drawing.Point(512, 12);
            this.gbGold.Name = "gbGold";
            this.gbGold.Size = new System.Drawing.Size(384, 144);
            this.gbGold.TabIndex = 10;
            this.gbGold.TabStop = false;
            this.gbGold.Text = "Gold";
            // 
            // gbItemManagment
            // 
            this.gbItemManagment.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gbItemManagment.Controls.Add(this.lblDeal);
            this.gbItemManagment.Controls.Add(this.nudDeal);
            this.gbItemManagment.Controls.Add(this.lvRecipiesUsingItem);
            this.gbItemManagment.Controls.Add(this.lblUsingItem);
            this.gbItemManagment.Controls.Add(this.btnBuy);
            this.gbItemManagment.Controls.Add(this.nudAddItems);
            this.gbItemManagment.Controls.Add(this.btnAddItems);
            this.gbItemManagment.Controls.Add(this.btnMake);
            this.gbItemManagment.Controls.Add(this.lvRecipiesMakingItem);
            this.gbItemManagment.Controls.Add(this.lblItemHistory);
            this.gbItemManagment.Controls.Add(this.lvItemHistory);
            this.gbItemManagment.Controls.Add(this.lblMakingItem);
            this.gbItemManagment.Controls.Add(this.nudOwned);
            this.gbItemManagment.Controls.Add(this.lblNumOwned);
            this.gbItemManagment.Location = new System.Drawing.Point(512, 162);
            this.gbItemManagment.Name = "gbItemManagment";
            this.gbItemManagment.Size = new System.Drawing.Size(384, 802);
            this.gbItemManagment.TabIndex = 11;
            this.gbItemManagment.TabStop = false;
            this.gbItemManagment.Text = "Item";
            // 
            // lblDeal
            // 
            this.lblDeal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblDeal.AutoSize = true;
            this.lblDeal.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDeal.Location = new System.Drawing.Point(19, 150);
            this.lblDeal.Name = "lblDeal";
            this.lblDeal.Size = new System.Drawing.Size(134, 31);
            this.lblDeal.TabIndex = 18;
            this.lblDeal.Text = "% of price";
            // 
            // nudDeal
            // 
            this.nudDeal.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.nudDeal.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudDeal.Location = new System.Drawing.Point(159, 137);
            this.nudDeal.Maximum = new decimal(new int[] {
            9999,
            0,
            0,
            0});
            this.nudDeal.Name = "nudDeal";
            this.nudDeal.Size = new System.Drawing.Size(219, 53);
            this.nudDeal.TabIndex = 17;
            this.nudDeal.ThousandsSeparator = true;
            this.nudDeal.Value = new decimal(new int[] {
            100,
            0,
            0,
            0});
            // 
            // lvRecipiesUsingItem
            // 
            this.lvRecipiesUsingItem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lvRecipiesUsingItem.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.professionUsing,
            this.crafterLevelUsing,
            this.resultUsing,
            this.numMadeUsing,
            this.numCanMakeUsing});
            this.lvRecipiesUsingItem.ContextMenuStrip = this.cmsRecipieList;
            this.lvRecipiesUsingItem.FullRowSelect = true;
            this.lvRecipiesUsingItem.HideSelection = false;
            this.lvRecipiesUsingItem.Location = new System.Drawing.Point(9, 346);
            this.lvRecipiesUsingItem.MultiSelect = false;
            this.lvRecipiesUsingItem.Name = "lvRecipiesUsingItem";
            this.lvRecipiesUsingItem.Size = new System.Drawing.Size(369, 237);
            this.lvRecipiesUsingItem.TabIndex = 15;
            this.lvRecipiesUsingItem.UseCompatibleStateImageBehavior = false;
            this.lvRecipiesUsingItem.View = System.Windows.Forms.View.Details;
            this.lvRecipiesUsingItem.SelectedIndexChanged += new System.EventHandler(this.lvRecipies_SelectedIndexChanged);
            // 
            // professionUsing
            // 
            this.professionUsing.Text = "Profession";
            this.professionUsing.Width = 68;
            // 
            // crafterLevelUsing
            // 
            this.crafterLevelUsing.Text = "Crafter Level";
            this.crafterLevelUsing.Width = 77;
            // 
            // resultUsing
            // 
            this.resultUsing.Text = "Result";
            // 
            // numMadeUsing
            // 
            this.numMadeUsing.Text = "Makes";
            // 
            // numCanMakeUsing
            // 
            this.numCanMakeUsing.Text = "Can Do";
            this.numCanMakeUsing.Width = 48;
            // 
            // cmsRecipieList
            // 
            this.cmsRecipieList.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.editRecipieToolStripMenuItem,
            this.createNewRecipieToolStripMenuItem});
            this.cmsRecipieList.Name = "cmsRecipieList";
            this.cmsRecipieList.ShowImageMargin = false;
            this.cmsRecipieList.Size = new System.Drawing.Size(152, 48);
            this.cmsRecipieList.Opening += new System.ComponentModel.CancelEventHandler(this.cmsRecipieList_Opening);
            // 
            // editRecipieToolStripMenuItem
            // 
            this.editRecipieToolStripMenuItem.Name = "editRecipieToolStripMenuItem";
            this.editRecipieToolStripMenuItem.Size = new System.Drawing.Size(151, 22);
            this.editRecipieToolStripMenuItem.Text = "Edit Recipie";
            this.editRecipieToolStripMenuItem.Click += new System.EventHandler(this.editRecipieToolStripMenuItem_Click);
            // 
            // createNewRecipieToolStripMenuItem
            // 
            this.createNewRecipieToolStripMenuItem.Name = "createNewRecipieToolStripMenuItem";
            this.createNewRecipieToolStripMenuItem.Size = new System.Drawing.Size(151, 22);
            this.createNewRecipieToolStripMenuItem.Text = "Create New Recipie";
            this.createNewRecipieToolStripMenuItem.Click += new System.EventHandler(this.createNewRecipieToolStripMenuItem_Click);
            // 
            // lblUsingItem
            // 
            this.lblUsingItem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lblUsingItem.AutoSize = true;
            this.lblUsingItem.Location = new System.Drawing.Point(6, 330);
            this.lblUsingItem.Name = "lblUsingItem";
            this.lblUsingItem.Size = new System.Drawing.Size(124, 13);
            this.lblUsingItem.TabIndex = 16;
            this.lblUsingItem.Text = "Recipies Using This Item";
            // 
            // btnBuy
            // 
            this.btnBuy.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnBuy.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBuy.Location = new System.Drawing.Point(88, 78);
            this.btnBuy.Margin = new System.Windows.Forms.Padding(3, 1, 3, 1);
            this.btnBuy.Name = "btnBuy";
            this.btnBuy.Size = new System.Drawing.Size(65, 53);
            this.btnBuy.TabIndex = 12;
            this.btnBuy.Text = "Buy";
            this.btnBuy.UseVisualStyleBackColor = true;
            this.btnBuy.Click += new System.EventHandler(this.btnBuy_Click);
            // 
            // nudAddItems
            // 
            this.nudAddItems.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.nudAddItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudAddItems.Location = new System.Drawing.Point(159, 78);
            this.nudAddItems.Maximum = new decimal(new int[] {
            -559939585,
            902409669,
            54,
            0});
            this.nudAddItems.Minimum = new decimal(new int[] {
            -559939585,
            902409669,
            54,
            -2147483648});
            this.nudAddItems.Name = "nudAddItems";
            this.nudAddItems.Size = new System.Drawing.Size(219, 53);
            this.nudAddItems.TabIndex = 11;
            this.nudAddItems.ThousandsSeparator = true;
            this.nudAddItems.ValueChanged += new System.EventHandler(this.NudAddItems_ValueChanged);
            // 
            // btnAddItems
            // 
            this.btnAddItems.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAddItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddItems.Location = new System.Drawing.Point(9, 78);
            this.btnAddItems.Name = "btnAddItems";
            this.btnAddItems.Size = new System.Drawing.Size(73, 53);
            this.btnAddItems.TabIndex = 10;
            this.btnAddItems.Text = "Add";
            this.btnAddItems.UseVisualStyleBackColor = true;
            this.btnAddItems.Click += new System.EventHandler(this.btnAddItems_Click);
            // 
            // btnMake
            // 
            this.btnMake.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMake.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMake.Location = new System.Drawing.Point(318, 314);
            this.btnMake.Margin = new System.Windows.Forms.Padding(3, 0, 3, 0);
            this.btnMake.Name = "btnMake";
            this.btnMake.Size = new System.Drawing.Size(63, 28);
            this.btnMake.TabIndex = 11;
            this.btnMake.Text = "Make";
            this.btnMake.UseVisualStyleBackColor = true;
            this.btnMake.Click += new System.EventHandler(this.btnMake_Click);
            // 
            // lvRecipiesMakingItem
            // 
            this.lvRecipiesMakingItem.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvRecipiesMakingItem.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.professionMaking,
            this.crafterLevelMaking,
            this.numMadeMaking,
            this.numCanMakeMaking});
            this.lvRecipiesMakingItem.ContextMenuStrip = this.cmsRecipieList;
            this.lvRecipiesMakingItem.FullRowSelect = true;
            this.lvRecipiesMakingItem.HideSelection = false;
            this.lvRecipiesMakingItem.Location = new System.Drawing.Point(9, 217);
            this.lvRecipiesMakingItem.MultiSelect = false;
            this.lvRecipiesMakingItem.Name = "lvRecipiesMakingItem";
            this.lvRecipiesMakingItem.Size = new System.Drawing.Size(369, 94);
            this.lvRecipiesMakingItem.TabIndex = 6;
            this.lvRecipiesMakingItem.UseCompatibleStateImageBehavior = false;
            this.lvRecipiesMakingItem.View = System.Windows.Forms.View.Details;
            this.lvRecipiesMakingItem.SelectedIndexChanged += new System.EventHandler(this.lvRecipies_SelectedIndexChanged);
            // 
            // professionMaking
            // 
            this.professionMaking.Text = "Profession";
            this.professionMaking.Width = 71;
            // 
            // crafterLevelMaking
            // 
            this.crafterLevelMaking.Text = "Crafter Level";
            this.crafterLevelMaking.Width = 81;
            // 
            // numMadeMaking
            // 
            this.numMadeMaking.Text = "Makes";
            this.numMadeMaking.Width = 44;
            // 
            // numCanMakeMaking
            // 
            this.numCanMakeMaking.Text = "Can Do";
            this.numCanMakeMaking.Width = 49;
            // 
            // lblItemHistory
            // 
            this.lblItemHistory.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lblItemHistory.AutoSize = true;
            this.lblItemHistory.Location = new System.Drawing.Point(9, 586);
            this.lblItemHistory.Name = "lblItemHistory";
            this.lblItemHistory.Size = new System.Drawing.Size(39, 13);
            this.lblItemHistory.TabIndex = 9;
            this.lblItemHistory.Text = "History";
            // 
            // lvItemHistory
            // 
            this.lvItemHistory.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.lvItemHistory.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.dateTime,
            this.numAdded,
            this.item,
            this.note});
            this.lvItemHistory.FullRowSelect = true;
            this.lvItemHistory.HideSelection = false;
            this.lvItemHistory.Location = new System.Drawing.Point(9, 602);
            this.lvItemHistory.Name = "lvItemHistory";
            this.lvItemHistory.Size = new System.Drawing.Size(372, 194);
            this.lvItemHistory.TabIndex = 8;
            this.lvItemHistory.UseCompatibleStateImageBehavior = false;
            this.lvItemHistory.View = System.Windows.Forms.View.Details;
            // 
            // dateTime
            // 
            this.dateTime.Text = "Date/Time";
            this.dateTime.Width = 150;
            // 
            // numAdded
            // 
            this.numAdded.Text = "#";
            // 
            // item
            // 
            this.item.Text = "Item";
            this.item.Width = 98;
            // 
            // note
            // 
            this.note.Text = "Note";
            this.note.Width = 175;
            // 
            // lblMakingItem
            // 
            this.lblMakingItem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblMakingItem.AutoSize = true;
            this.lblMakingItem.Location = new System.Drawing.Point(6, 201);
            this.lblMakingItem.Name = "lblMakingItem";
            this.lblMakingItem.Size = new System.Drawing.Size(132, 13);
            this.lblMakingItem.TabIndex = 7;
            this.lblMakingItem.Text = "Recipies Making This Item";
            // 
            // txtDescription
            // 
            this.txtDescription.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtDescription.BackColor = System.Drawing.SystemColors.Window;
            this.txtDescription.Location = new System.Drawing.Point(12, 860);
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.ReadOnly = true;
            this.txtDescription.Size = new System.Drawing.Size(494, 98);
            this.txtDescription.TabIndex = 15;
            this.txtDescription.Text = "";
            // 
            // cbSearchDescriptions
            // 
            this.cbSearchDescriptions.AutoSize = true;
            this.cbSearchDescriptions.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbSearchDescriptions.Location = new System.Drawing.Point(385, 55);
            this.cbSearchDescriptions.Name = "cbSearchDescriptions";
            this.cbSearchDescriptions.Size = new System.Drawing.Size(121, 17);
            this.cbSearchDescriptions.TabIndex = 16;
            this.cbSearchDescriptions.Text = "Search Descriptions";
            this.cbSearchDescriptions.UseVisualStyleBackColor = true;
            this.cbSearchDescriptions.CheckedChanged += new System.EventHandler(this.cbSearchDescriptions_CheckedChanged);
            // 
            // btnCreateNew
            // 
            this.btnCreateNew.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCreateNew.Location = new System.Drawing.Point(385, 28);
            this.btnCreateNew.Name = "btnCreateNew";
            this.btnCreateNew.Size = new System.Drawing.Size(121, 24);
            this.btnCreateNew.TabIndex = 17;
            this.btnCreateNew.Text = "Create New";
            this.btnCreateNew.UseVisualStyleBackColor = true;
            this.btnCreateNew.Click += new System.EventHandler(this.btnCreateNew_Click);
            // 
            // ddlInventories
            // 
            this.ddlInventories.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.ddlInventories.FormattingEnabled = true;
            this.ddlInventories.Location = new System.Drawing.Point(108, 4);
            this.ddlInventories.Name = "ddlInventories";
            this.ddlInventories.Size = new System.Drawing.Size(171, 21);
            this.ddlInventories.TabIndex = 18;
            this.ddlInventories.SelectedIndexChanged += new System.EventHandler(this.DdlInventories_SelectedIndexChanged);
            // 
            // btnCrafter
            // 
            this.btnCrafter.Location = new System.Drawing.Point(304, 4);
            this.btnCrafter.Name = "btnCrafter";
            this.btnCrafter.Size = new System.Drawing.Size(75, 21);
            this.btnCrafter.TabIndex = 19;
            this.btnCrafter.Text = "Crafter Guide";
            this.btnCrafter.UseVisualStyleBackColor = true;
            this.btnCrafter.Click += new System.EventHandler(this.BtnCrafter_Click);
            // 
            // btnMods
            // 
            this.btnMods.Location = new System.Drawing.Point(385, 4);
            this.btnMods.Name = "btnMods";
            this.btnMods.Size = new System.Drawing.Size(121, 21);
            this.btnMods.TabIndex = 20;
            this.btnMods.Text = "Mods";
            this.btnMods.UseVisualStyleBackColor = true;
            this.btnMods.Click += new System.EventHandler(this.BtnMods_Click);
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(900, 961);
            this.Controls.Add(this.btnMods);
            this.Controls.Add(this.btnCrafter);
            this.Controls.Add(this.ddlInventories);
            this.Controls.Add(this.btnCreateNew);
            this.Controls.Add(this.lvItems);
            this.Controls.Add(this.cbSearchDescriptions);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(this.gbItemManagment);
            this.Controls.Add(this.gbGold);
            this.Controls.Add(this.lblSearch);
            this.Controls.Add(this.txtSearch);
            this.Location = new System.Drawing.Point(-8, 0);
            this.MinimumSize = new System.Drawing.Size(916, 1000);
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Catonia Item Tracker v";
            this.Shown += new System.EventHandler(this.FrmMain_Shown);
            this.cmsItemList.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.nudOwned)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudGold)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddGold)).EndInit();
            this.gbGold.ResumeLayout(false);
            this.gbGold.PerformLayout();
            this.gbItemManagment.ResumeLayout(false);
            this.gbItemManagment.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudDeal)).EndInit();
            this.cmsRecipieList.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox txtSearch;
        private System.Windows.Forms.Label lblSearch;
        private System.Windows.Forms.ListView lvItems;
        private System.Windows.Forms.ColumnHeader colItemName;
        private System.Windows.Forms.ColumnHeader colNumOwned;
        private System.Windows.Forms.ColumnHeader colValue;
        private System.Windows.Forms.ColumnHeader colValueTotal;
        private System.Windows.Forms.ColumnHeader colCraft;
        private System.Windows.Forms.ColumnHeader colUsable;
        private System.Windows.Forms.NumericUpDown nudOwned;
        private System.Windows.Forms.Label lblNumOwned;
        private System.Windows.Forms.Label lblGold;
        private System.Windows.Forms.NumericUpDown nudGold;
        private System.Windows.Forms.Button btnAddGold;
        private System.Windows.Forms.NumericUpDown nudAddGold;
        private System.Windows.Forms.GroupBox gbGold;
        private System.Windows.Forms.GroupBox gbItemManagment;
        private System.Windows.Forms.Button btnMake;
        private System.Windows.Forms.Label lblItemHistory;
        private System.Windows.Forms.ListView lvItemHistory;
        private System.Windows.Forms.ColumnHeader dateTime;
        private System.Windows.Forms.Label lblMakingItem;
        private System.Windows.Forms.ListView lvRecipiesMakingItem;
        private System.Windows.Forms.ColumnHeader numMadeMaking;
        private System.Windows.Forms.NumericUpDown nudAddItems;
        private System.Windows.Forms.Button btnAddItems;
        private System.Windows.Forms.ColumnHeader numAdded;
        private System.Windows.Forms.ColumnHeader note;
        private System.Windows.Forms.ColumnHeader item;
        private System.Windows.Forms.Button btnBuy;
        private System.Windows.Forms.ColumnHeader professionMaking;
        private System.Windows.Forms.ColumnHeader crafterLevelMaking;
        private System.Windows.Forms.RichTextBox txtDescription;
        private System.Windows.Forms.ListView lvRecipiesUsingItem;
        private System.Windows.Forms.ColumnHeader professionUsing;
        private System.Windows.Forms.ColumnHeader crafterLevelUsing;
        private System.Windows.Forms.ColumnHeader numMadeUsing;
        private System.Windows.Forms.Label lblUsingItem;
        private System.Windows.Forms.CheckBox cbSearchDescriptions;
        private System.Windows.Forms.ContextMenuStrip cmsItemList;
        private System.Windows.Forms.ToolStripMenuItem editItemToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem createNewRecipieItemToolStripMenuItem;
        private System.Windows.Forms.ContextMenuStrip cmsRecipieList;
        private System.Windows.Forms.ToolStripMenuItem editRecipieToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem createNewRecipieToolStripMenuItem;
        private System.Windows.Forms.ColumnHeader resultUsing;
        private System.Windows.Forms.ColumnHeader numCanMakeUsing;
        private System.Windows.Forms.ColumnHeader numCanMakeMaking;
        private System.Windows.Forms.Button btnCreateNew;
        private System.Windows.Forms.ComboBox ddlInventories;
        private System.Windows.Forms.ColumnHeader colLastUpdated;
        private System.Windows.Forms.Button btnCrafter;
        private System.Windows.Forms.Button btnMods;
        private System.Windows.Forms.ToolStripMenuItem addOrRemoveModToolStripMenuItem;
        private System.Windows.Forms.Label lblDeal;
        private System.Windows.Forms.NumericUpDown nudDeal;
    }
}