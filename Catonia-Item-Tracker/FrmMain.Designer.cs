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
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.lblSearch = new System.Windows.Forms.Label();
            this.lvItems = new System.Windows.Forms.ListView();
            this.itemName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numOwned = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.value = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.valueTotal = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.professions = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.usable = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmsItemList = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.editItemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.createNewItemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.lvFilteredItems = new System.Windows.Forms.ListView();
            this.itemNameFiltered = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numOwnedFiltered = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.valueFiltered = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.valueTotalFiltered = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.professionsFiltered = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.usableFiltered = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.nudOwned = new System.Windows.Forms.NumericUpDown();
            this.lblNumOwned = new System.Windows.Forms.Label();
            this.lblGold = new System.Windows.Forms.Label();
            this.nudGold = new System.Windows.Forms.NumericUpDown();
            this.btnAddGold = new System.Windows.Forms.Button();
            this.nudAddGold = new System.Windows.Forms.NumericUpDown();
            this.gbGold = new System.Windows.Forms.GroupBox();
            this.gbItemManagment = new System.Windows.Forms.GroupBox();
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
            this.rbOnHand = new System.Windows.Forms.RadioButton();
            this.rbLeftBehind = new System.Windows.Forms.RadioButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtDescription = new System.Windows.Forms.RichTextBox();
            this.cbSearchDescriptions = new System.Windows.Forms.CheckBox();
            this.btnCreateNew = new System.Windows.Forms.Button();
            this.cmsItemList.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudOwned)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudGold)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddGold)).BeginInit();
            this.gbGold.SuspendLayout();
            this.gbItemManagment.SuspendLayout();
            this.cmsRecipieList.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtSearch
            // 
            this.txtSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearch.ImeMode = System.Windows.Forms.ImeMode.On;
            this.txtSearch.Location = new System.Drawing.Point(12, 28);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(367, 44);
            this.txtSearch.TabIndex = 1;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
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
            this.lvItems.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.itemName,
            this.numOwned,
            this.value,
            this.valueTotal,
            this.professions,
            this.usable});
            this.lvItems.ContextMenuStrip = this.cmsItemList;
            this.lvItems.FullRowSelect = true;
            this.lvItems.HideSelection = false;
            this.lvItems.Location = new System.Drawing.Point(12, 78);
            this.lvItems.Name = "lvItems";
            this.lvItems.Size = new System.Drawing.Size(494, 776);
            this.lvItems.TabIndex = 3;
            this.lvItems.UseCompatibleStateImageBehavior = false;
            this.lvItems.View = System.Windows.Forms.View.Details;
            this.lvItems.ColumnClick += new System.Windows.Forms.ColumnClickEventHandler(this.lvItems_ColumnClick);
            this.lvItems.SelectedIndexChanged += new System.EventHandler(this.lvItems_SelectedIndexChanged);
            // 
            // itemName
            // 
            this.itemName.Text = "Item Name";
            this.itemName.Width = 143;
            // 
            // numOwned
            // 
            this.numOwned.Text = "#";
            this.numOwned.Width = 45;
            // 
            // value
            // 
            this.value.Text = "Value";
            this.value.Width = 42;
            // 
            // valueTotal
            // 
            this.valueTotal.Text = "Total";
            this.valueTotal.Width = 42;
            // 
            // professions
            // 
            this.professions.Text = "Professions";
            this.professions.Width = 70;
            // 
            // usable
            // 
            this.usable.Text = "Usable";
            // 
            // cmsItemList
            // 
            this.cmsItemList.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.editItemToolStripMenuItem,
            this.createNewItemToolStripMenuItem});
            this.cmsItemList.Name = "cmsItemList";
            this.cmsItemList.Size = new System.Drawing.Size(163, 48);
            this.cmsItemList.Opening += new System.ComponentModel.CancelEventHandler(this.cmsItemList_Opening);
            // 
            // editItemToolStripMenuItem
            // 
            this.editItemToolStripMenuItem.Name = "editItemToolStripMenuItem";
            this.editItemToolStripMenuItem.Size = new System.Drawing.Size(162, 22);
            this.editItemToolStripMenuItem.Text = "Edit Item";
            this.editItemToolStripMenuItem.Click += new System.EventHandler(this.editItemToolStripMenuItem_Click);
            // 
            // createNewItemToolStripMenuItem
            // 
            this.createNewItemToolStripMenuItem.Name = "createNewItemToolStripMenuItem";
            this.createNewItemToolStripMenuItem.Size = new System.Drawing.Size(162, 22);
            this.createNewItemToolStripMenuItem.Text = "Create New Item";
            this.createNewItemToolStripMenuItem.Click += new System.EventHandler(this.createNewItemToolStripMenuItem_Click);
            // 
            // lvFilteredItems
            // 
            this.lvFilteredItems.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.itemNameFiltered,
            this.numOwnedFiltered,
            this.valueFiltered,
            this.valueTotalFiltered,
            this.professionsFiltered,
            this.usableFiltered});
            this.lvFilteredItems.ContextMenuStrip = this.cmsItemList;
            this.lvFilteredItems.FullRowSelect = true;
            this.lvFilteredItems.HideSelection = false;
            this.lvFilteredItems.Location = new System.Drawing.Point(12, 78);
            this.lvFilteredItems.Name = "lvFilteredItems";
            this.lvFilteredItems.Size = new System.Drawing.Size(494, 776);
            this.lvFilteredItems.TabIndex = 3;
            this.lvFilteredItems.UseCompatibleStateImageBehavior = false;
            this.lvFilteredItems.View = System.Windows.Forms.View.Details;
            this.lvFilteredItems.Visible = false;
            this.lvFilteredItems.ColumnClick += new System.Windows.Forms.ColumnClickEventHandler(this.lvItems_ColumnClick);
            this.lvFilteredItems.SelectedIndexChanged += new System.EventHandler(this.lvItems_SelectedIndexChanged);
            // 
            // itemNameFiltered
            // 
            this.itemNameFiltered.Text = "Item Name";
            this.itemNameFiltered.Width = 143;
            // 
            // numOwnedFiltered
            // 
            this.numOwnedFiltered.Text = "#";
            this.numOwnedFiltered.Width = 45;
            // 
            // valueFiltered
            // 
            this.valueFiltered.Text = "Value";
            this.valueFiltered.Width = 42;
            // 
            // valueTotalFiltered
            // 
            this.valueTotalFiltered.Text = "Total";
            this.valueTotalFiltered.Width = 42;
            // 
            // professionsFiltered
            // 
            this.professionsFiltered.Text = "Professions";
            this.professionsFiltered.Width = 70;
            // 
            // usableFiltered
            // 
            this.usableFiltered.Text = "Usable";
            // 
            // nudOwned
            // 
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
            // lvRecipiesUsingItem
            // 
            this.lvRecipiesUsingItem.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.professionUsing,
            this.crafterLevelUsing,
            this.resultUsing,
            this.numMadeUsing,
            this.numCanMakeUsing});
            this.lvRecipiesUsingItem.ContextMenuStrip = this.cmsRecipieList;
            this.lvRecipiesUsingItem.FullRowSelect = true;
            this.lvRecipiesUsingItem.HideSelection = false;
            this.lvRecipiesUsingItem.Location = new System.Drawing.Point(9, 296);
            this.lvRecipiesUsingItem.MultiSelect = false;
            this.lvRecipiesUsingItem.Name = "lvRecipiesUsingItem";
            this.lvRecipiesUsingItem.Size = new System.Drawing.Size(369, 272);
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
            this.cmsRecipieList.Size = new System.Drawing.Size(177, 48);
            this.cmsRecipieList.Opening += new System.ComponentModel.CancelEventHandler(this.cmsRecipieList_Opening);
            // 
            // editRecipieToolStripMenuItem
            // 
            this.editRecipieToolStripMenuItem.Name = "editRecipieToolStripMenuItem";
            this.editRecipieToolStripMenuItem.Size = new System.Drawing.Size(176, 22);
            this.editRecipieToolStripMenuItem.Text = "Edit Recipie";
            this.editRecipieToolStripMenuItem.Click += new System.EventHandler(this.editRecipieToolStripMenuItem_Click);
            // 
            // createNewRecipieToolStripMenuItem
            // 
            this.createNewRecipieToolStripMenuItem.Name = "createNewRecipieToolStripMenuItem";
            this.createNewRecipieToolStripMenuItem.Size = new System.Drawing.Size(176, 22);
            this.createNewRecipieToolStripMenuItem.Text = "Create New Recipie";
            this.createNewRecipieToolStripMenuItem.Click += new System.EventHandler(this.createNewRecipieToolStripMenuItem_Click);
            // 
            // lblUsingItem
            // 
            this.lblUsingItem.AutoSize = true;
            this.lblUsingItem.Location = new System.Drawing.Point(6, 280);
            this.lblUsingItem.Name = "lblUsingItem";
            this.lblUsingItem.Size = new System.Drawing.Size(124, 13);
            this.lblUsingItem.TabIndex = 16;
            this.lblUsingItem.Text = "Recipies Using This Item";
            // 
            // btnBuy
            // 
            this.btnBuy.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBuy.Location = new System.Drawing.Point(88, 82);
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
            this.nudAddItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudAddItems.Location = new System.Drawing.Point(159, 82);
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
            // 
            // btnAddItems
            // 
            this.btnAddItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddItems.Location = new System.Drawing.Point(9, 82);
            this.btnAddItems.Name = "btnAddItems";
            this.btnAddItems.Size = new System.Drawing.Size(73, 53);
            this.btnAddItems.TabIndex = 10;
            this.btnAddItems.Text = "Add";
            this.btnAddItems.UseVisualStyleBackColor = true;
            this.btnAddItems.Click += new System.EventHandler(this.btnAddItems_Click);
            // 
            // btnMake
            // 
            this.btnMake.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMake.Location = new System.Drawing.Point(318, 264);
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
            this.lvRecipiesMakingItem.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.professionMaking,
            this.crafterLevelMaking,
            this.numMadeMaking,
            this.numCanMakeMaking});
            this.lvRecipiesMakingItem.ContextMenuStrip = this.cmsRecipieList;
            this.lvRecipiesMakingItem.FullRowSelect = true;
            this.lvRecipiesMakingItem.HideSelection = false;
            this.lvRecipiesMakingItem.Location = new System.Drawing.Point(9, 167);
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
            this.lblItemHistory.AutoSize = true;
            this.lblItemHistory.Location = new System.Drawing.Point(9, 586);
            this.lblItemHistory.Name = "lblItemHistory";
            this.lblItemHistory.Size = new System.Drawing.Size(39, 13);
            this.lblItemHistory.TabIndex = 9;
            this.lblItemHistory.Text = "History";
            // 
            // lvItemHistory
            // 
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
            this.lblMakingItem.AutoSize = true;
            this.lblMakingItem.Location = new System.Drawing.Point(6, 151);
            this.lblMakingItem.Name = "lblMakingItem";
            this.lblMakingItem.Size = new System.Drawing.Size(132, 13);
            this.lblMakingItem.TabIndex = 7;
            this.lblMakingItem.Text = "Recipies Making This Item";
            // 
            // rbOnHand
            // 
            this.rbOnHand.AutoSize = true;
            this.rbOnHand.Checked = true;
            this.rbOnHand.Location = new System.Drawing.Point(3, 3);
            this.rbOnHand.Name = "rbOnHand";
            this.rbOnHand.Size = new System.Drawing.Size(115, 17);
            this.rbOnHand.TabIndex = 12;
            this.rbOnHand.TabStop = true;
            this.rbOnHand.Text = "Inventory On Hand";
            this.rbOnHand.UseVisualStyleBackColor = true;
            this.rbOnHand.CheckedChanged += new System.EventHandler(this.rbOnHand_CheckedChanged);
            // 
            // rbLeftBehind
            // 
            this.rbLeftBehind.AutoSize = true;
            this.rbLeftBehind.Location = new System.Drawing.Point(120, 3);
            this.rbLeftBehind.Name = "rbLeftBehind";
            this.rbLeftBehind.Size = new System.Drawing.Size(124, 17);
            this.rbLeftBehind.TabIndex = 13;
            this.rbLeftBehind.Text = "Inventory With NPCs";
            this.rbLeftBehind.UseVisualStyleBackColor = true;
            this.rbLeftBehind.CheckedChanged += new System.EventHandler(this.rbLeftBehind_CheckedChanged);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.rbOnHand);
            this.panel1.Controls.Add(this.rbLeftBehind);
            this.panel1.Location = new System.Drawing.Point(106, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(250, 26);
            this.panel1.TabIndex = 14;
            // 
            // txtDescription
            // 
            this.txtDescription.BackColor = System.Drawing.SystemColors.Window;
            this.txtDescription.Location = new System.Drawing.Point(12, 860);
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.ReadOnly = true;
            this.txtDescription.Size = new System.Drawing.Size(494, 104);
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
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(900, 961);
            this.Controls.Add(this.btnCreateNew);
            this.Controls.Add(this.cbSearchDescriptions);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.gbItemManagment);
            this.Controls.Add(this.lvItems);
            this.Controls.Add(this.lvFilteredItems);
            this.Controls.Add(this.gbGold);
            this.Controls.Add(this.lblSearch);
            this.Controls.Add(this.txtSearch);
            this.Location = new System.Drawing.Point(-8, 0);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(916, 1000);
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
            this.cmsRecipieList.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label lblSearch;
        private System.Windows.Forms.ListView lvItems;
        private System.Windows.Forms.ColumnHeader itemName;
        private System.Windows.Forms.ColumnHeader numOwned;
        private System.Windows.Forms.ColumnHeader value;
        private System.Windows.Forms.ColumnHeader valueTotal;
        private System.Windows.Forms.ColumnHeader professions;
        private System.Windows.Forms.ColumnHeader usable;
        private System.Windows.Forms.ListView lvFilteredItems;
        private System.Windows.Forms.ColumnHeader itemNameFiltered;
        private System.Windows.Forms.ColumnHeader numOwnedFiltered;
        private System.Windows.Forms.ColumnHeader valueFiltered;
        private System.Windows.Forms.ColumnHeader valueTotalFiltered;
        private System.Windows.Forms.ColumnHeader professionsFiltered;
        private System.Windows.Forms.ColumnHeader usableFiltered;
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
        private System.Windows.Forms.RadioButton rbOnHand;
        private System.Windows.Forms.RadioButton rbLeftBehind;
        private System.Windows.Forms.Panel panel1;
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
        private System.Windows.Forms.ToolStripMenuItem createNewItemToolStripMenuItem;
        private System.Windows.Forms.ContextMenuStrip cmsRecipieList;
        private System.Windows.Forms.ToolStripMenuItem editRecipieToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem createNewRecipieToolStripMenuItem;
        private System.Windows.Forms.ColumnHeader resultUsing;
        private System.Windows.Forms.ColumnHeader numCanMakeUsing;
        private System.Windows.Forms.ColumnHeader numCanMakeMaking;
        private System.Windows.Forms.Button btnCreateNew;
    }
}