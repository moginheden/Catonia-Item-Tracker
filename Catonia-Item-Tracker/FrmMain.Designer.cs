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
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.lblSearch = new System.Windows.Forms.Label();
            this.lvItems = new System.Windows.Forms.ListView();
            this.itemName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numOwned = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.value = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.valueTotal = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.professions = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.usable = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.nudOwned = new System.Windows.Forms.NumericUpDown();
            this.lblNumOwned = new System.Windows.Forms.Label();
            this.lblGold = new System.Windows.Forms.Label();
            this.nudGold = new System.Windows.Forms.NumericUpDown();
            this.btnAddGold = new System.Windows.Forms.Button();
            this.nudAddGold = new System.Windows.Forms.NumericUpDown();
            this.gbGold = new System.Windows.Forms.GroupBox();
            this.gbItemManagment = new System.Windows.Forms.GroupBox();
            this.gbNew = new System.Windows.Forms.GroupBox();
            this.btnRecipe = new System.Windows.Forms.Button();
            this.btnNewItem = new System.Windows.Forms.Button();
            this.btnTransfer = new System.Windows.Forms.Button();
            this.nudAddItems = new System.Windows.Forms.NumericUpDown();
            this.btnAddItems = new System.Windows.Forms.Button();
            this.btnMake = new System.Windows.Forms.Button();
            this.btnUndo = new System.Windows.Forms.Button();
            this.lblItemHistory = new System.Windows.Forms.Label();
            this.lvItemHistory = new System.Windows.Forms.ListView();
            this.dateTime = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numAdded = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.item = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.note = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblCreationPaths = new System.Windows.Forms.Label();
            this.lvCreationPaths = new System.Windows.Forms.ListView();
            this.profession = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.crafterLevel = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numMade = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.rbOnHand = new System.Windows.Forms.RadioButton();
            this.rbLeftBehind = new System.Windows.Forms.RadioButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtDescription = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.nudOwned)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudGold)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddGold)).BeginInit();
            this.gbGold.SuspendLayout();
            this.gbItemManagment.SuspendLayout();
            this.gbNew.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(12, 28);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(344, 20);
            this.txtSearch.TabIndex = 1;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            this.txtSearch.KeyUp += new System.Windows.Forms.KeyEventHandler(this.txtSearch_KeyUp);
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
            this.lvItems.FullRowSelect = true;
            this.lvItems.Location = new System.Drawing.Point(12, 54);
            this.lvItems.Name = "lvItems";
            this.lvItems.Size = new System.Drawing.Size(344, 444);
            this.lvItems.TabIndex = 3;
            this.lvItems.UseCompatibleStateImageBehavior = false;
            this.lvItems.View = System.Windows.Forms.View.Details;
            this.lvItems.SelectedIndexChanged += new System.EventHandler(this.lvItems_SelectedIndexChanged);
            // 
            // itemName
            // 
            this.itemName.Text = "Item Name";
            this.itemName.Width = 104;
            // 
            // numOwned
            // 
            this.numOwned.Text = "#";
            this.numOwned.Width = 45;
            // 
            // value
            // 
            this.value.Text = "Value";
            this.value.Width = 39;
            // 
            // valueTotal
            // 
            this.valueTotal.Text = "Total";
            this.valueTotal.Width = 38;
            // 
            // professions
            // 
            this.professions.Text = "Professions";
            this.professions.Width = 67;
            // 
            // usable
            // 
            this.usable.Text = "Usable";
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
            this.nudGold.Location = new System.Drawing.Point(159, 16);
            this.nudGold.Maximum = new decimal(new int[] {
            -1486618625,
            232830643,
            0,
            0});
            this.nudGold.Name = "nudGold";
            this.nudGold.Size = new System.Drawing.Size(219, 53);
            this.nudGold.TabIndex = 6;
            this.nudGold.ThousandsSeparator = true;
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
            this.gbGold.Controls.Add(this.lblGold);
            this.gbGold.Controls.Add(this.nudAddGold);
            this.gbGold.Controls.Add(this.nudGold);
            this.gbGold.Controls.Add(this.btnAddGold);
            this.gbGold.Location = new System.Drawing.Point(362, 12);
            this.gbGold.Name = "gbGold";
            this.gbGold.Size = new System.Drawing.Size(384, 144);
            this.gbGold.TabIndex = 10;
            this.gbGold.TabStop = false;
            this.gbGold.Text = "Gold";
            // 
            // gbItemManagment
            // 
            this.gbItemManagment.Controls.Add(this.gbNew);
            this.gbItemManagment.Controls.Add(this.btnTransfer);
            this.gbItemManagment.Controls.Add(this.nudAddItems);
            this.gbItemManagment.Controls.Add(this.btnAddItems);
            this.gbItemManagment.Controls.Add(this.btnMake);
            this.gbItemManagment.Controls.Add(this.lvCreationPaths);
            this.gbItemManagment.Controls.Add(this.btnUndo);
            this.gbItemManagment.Controls.Add(this.lblItemHistory);
            this.gbItemManagment.Controls.Add(this.lvItemHistory);
            this.gbItemManagment.Controls.Add(this.lblCreationPaths);
            this.gbItemManagment.Controls.Add(this.nudOwned);
            this.gbItemManagment.Controls.Add(this.lblNumOwned);
            this.gbItemManagment.Location = new System.Drawing.Point(362, 162);
            this.gbItemManagment.Name = "gbItemManagment";
            this.gbItemManagment.Size = new System.Drawing.Size(384, 447);
            this.gbItemManagment.TabIndex = 11;
            this.gbItemManagment.TabStop = false;
            this.gbItemManagment.Text = "Item";
            // 
            // gbNew
            // 
            this.gbNew.Controls.Add(this.btnRecipe);
            this.gbNew.Controls.Add(this.btnNewItem);
            this.gbNew.Location = new System.Drawing.Point(159, 386);
            this.gbNew.Name = "gbNew";
            this.gbNew.Size = new System.Drawing.Size(219, 61);
            this.gbNew.TabIndex = 14;
            this.gbNew.TabStop = false;
            this.gbNew.Text = "New Types";
            // 
            // btnRecipe
            // 
            this.btnRecipe.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRecipe.Location = new System.Drawing.Point(6, 14);
            this.btnRecipe.Name = "btnRecipe";
            this.btnRecipe.Size = new System.Drawing.Size(116, 41);
            this.btnRecipe.TabIndex = 14;
            this.btnRecipe.Text = "Recipe";
            this.btnRecipe.UseVisualStyleBackColor = true;
            // 
            // btnNewItem
            // 
            this.btnNewItem.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNewItem.Location = new System.Drawing.Point(136, 14);
            this.btnNewItem.Name = "btnNewItem";
            this.btnNewItem.Size = new System.Drawing.Size(77, 41);
            this.btnNewItem.TabIndex = 13;
            this.btnNewItem.Text = "Item";
            this.btnNewItem.UseVisualStyleBackColor = true;
            // 
            // btnTransfer
            // 
            this.btnTransfer.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTransfer.Location = new System.Drawing.Point(88, 82);
            this.btnTransfer.Margin = new System.Windows.Forms.Padding(3, 1, 3, 1);
            this.btnTransfer.Name = "btnTransfer";
            this.btnTransfer.Size = new System.Drawing.Size(65, 53);
            this.btnTransfer.TabIndex = 12;
            this.btnTransfer.Text = "To NPCs";
            this.btnTransfer.UseVisualStyleBackColor = true;
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
            this.btnAddItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
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
            this.btnMake.Location = new System.Drawing.Point(315, 228);
            this.btnMake.Margin = new System.Windows.Forms.Padding(3, 0, 3, 0);
            this.btnMake.Name = "btnMake";
            this.btnMake.Size = new System.Drawing.Size(63, 28);
            this.btnMake.TabIndex = 11;
            this.btnMake.Text = "Make";
            this.btnMake.UseVisualStyleBackColor = true;
            this.btnMake.Click += new System.EventHandler(this.btnMake_Click);
            // 
            // btnUndo
            // 
            this.btnUndo.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUndo.Location = new System.Drawing.Point(6, 400);
            this.btnUndo.Name = "btnUndo";
            this.btnUndo.Size = new System.Drawing.Size(97, 41);
            this.btnUndo.TabIndex = 10;
            this.btnUndo.Text = "Undo";
            this.btnUndo.UseVisualStyleBackColor = true;
            // 
            // lblItemHistory
            // 
            this.lblItemHistory.AutoSize = true;
            this.lblItemHistory.Location = new System.Drawing.Point(6, 249);
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
            this.lvItemHistory.Location = new System.Drawing.Point(6, 265);
            this.lvItemHistory.Name = "lvItemHistory";
            this.lvItemHistory.Size = new System.Drawing.Size(372, 119);
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
            // lblCreationPaths
            // 
            this.lblCreationPaths.AutoSize = true;
            this.lblCreationPaths.Location = new System.Drawing.Point(6, 139);
            this.lblCreationPaths.Name = "lblCreationPaths";
            this.lblCreationPaths.Size = new System.Drawing.Size(76, 13);
            this.lblCreationPaths.TabIndex = 7;
            this.lblCreationPaths.Text = "Creation Paths";
            // 
            // lvCreationPaths
            // 
            this.lvCreationPaths.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.profession,
            this.crafterLevel,
            this.numMade});
            this.lvCreationPaths.Location = new System.Drawing.Point(9, 155);
            this.lvCreationPaths.Name = "lvCreationPaths";
            this.lvCreationPaths.Size = new System.Drawing.Size(369, 70);
            this.lvCreationPaths.TabIndex = 6;
            this.lvCreationPaths.UseCompatibleStateImageBehavior = false;
            this.lvCreationPaths.View = System.Windows.Forms.View.Details;
            // 
            // profession
            // 
            this.profession.Text = "Profession";
            // 
            // crafterLevel
            // 
            this.crafterLevel.Text = "Crafter Level";
            // 
            // numMade
            // 
            this.numMade.Text = "# Made";
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
            this.txtDescription.Location = new System.Drawing.Point(12, 505);
            this.txtDescription.Multiline = true;
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.ReadOnly = true;
            this.txtDescription.Size = new System.Drawing.Size(344, 104);
            this.txtDescription.TabIndex = 15;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(758, 621);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.gbItemManagment);
            this.Controls.Add(this.lvItems);
            this.Controls.Add(this.gbGold);
            this.Controls.Add(this.lblSearch);
            this.Controls.Add(this.txtSearch);
            this.Name = "FrmMain";
            this.Text = "Catonia Item Tracker";
            ((System.ComponentModel.ISupportInitialize)(this.nudOwned)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudGold)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddGold)).EndInit();
            this.gbGold.ResumeLayout(false);
            this.gbGold.PerformLayout();
            this.gbItemManagment.ResumeLayout(false);
            this.gbItemManagment.PerformLayout();
            this.gbNew.ResumeLayout(false);
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
        private System.Windows.Forms.NumericUpDown nudOwned;
        private System.Windows.Forms.Label lblNumOwned;
        private System.Windows.Forms.Label lblGold;
        private System.Windows.Forms.NumericUpDown nudGold;
        private System.Windows.Forms.Button btnAddGold;
        private System.Windows.Forms.NumericUpDown nudAddGold;
        private System.Windows.Forms.GroupBox gbGold;
        private System.Windows.Forms.GroupBox gbItemManagment;
        private System.Windows.Forms.Button btnMake;
        private System.Windows.Forms.Button btnUndo;
        private System.Windows.Forms.Label lblItemHistory;
        private System.Windows.Forms.ListView lvItemHistory;
        private System.Windows.Forms.ColumnHeader dateTime;
        private System.Windows.Forms.Label lblCreationPaths;
        private System.Windows.Forms.ListView lvCreationPaths;
        private System.Windows.Forms.ColumnHeader numMade;
        private System.Windows.Forms.NumericUpDown nudAddItems;
        private System.Windows.Forms.Button btnAddItems;
        private System.Windows.Forms.ColumnHeader numAdded;
        private System.Windows.Forms.ColumnHeader note;
        private System.Windows.Forms.ColumnHeader usable;
        private System.Windows.Forms.ColumnHeader item;
        private System.Windows.Forms.RadioButton rbOnHand;
        private System.Windows.Forms.RadioButton rbLeftBehind;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnTransfer;
        private System.Windows.Forms.GroupBox gbNew;
        private System.Windows.Forms.Button btnRecipe;
        private System.Windows.Forms.Button btnNewItem;
        private System.Windows.Forms.ColumnHeader profession;
        private System.Windows.Forms.ColumnHeader crafterLevel;
        private System.Windows.Forms.TextBox txtDescription;
    }
}