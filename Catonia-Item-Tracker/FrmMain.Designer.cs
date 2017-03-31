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
            this.nudOwned = new System.Windows.Forms.NumericUpDown();
            this.lblNumOwned = new System.Windows.Forms.Label();
            this.lblGold = new System.Windows.Forms.Label();
            this.nudGold = new System.Windows.Forms.NumericUpDown();
            this.btnAddGold = new System.Windows.Forms.Button();
            this.nudAddGold = new System.Windows.Forms.NumericUpDown();
            this.gbGold = new System.Windows.Forms.GroupBox();
            this.gbItemManagment = new System.Windows.Forms.GroupBox();
            this.lvCreationPaths = new System.Windows.Forms.ListView();
            this.lblCreationPaths = new System.Windows.Forms.Label();
            this.numMade = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblItemHistory = new System.Windows.Forms.Label();
            this.lvItemHistory = new System.Windows.Forms.ListView();
            this.dateTime = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.btnUndo = new System.Windows.Forms.Button();
            this.btnMake = new System.Windows.Forms.Button();
            this.professions = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.nudAddItems = new System.Windows.Forms.NumericUpDown();
            this.btnAddItems = new System.Windows.Forms.Button();
            this.numAdded = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.note = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.usable = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            ((System.ComponentModel.ISupportInitialize)(this.nudOwned)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudGold)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddGold)).BeginInit();
            this.gbGold.SuspendLayout();
            this.gbItemManagment.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).BeginInit();
            this.SuspendLayout();
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(12, 28);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(344, 20);
            this.txtSearch.TabIndex = 1;
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
            this.lvItems.Location = new System.Drawing.Point(12, 54);
            this.lvItems.Name = "lvItems";
            this.lvItems.Size = new System.Drawing.Size(344, 555);
            this.lvItems.TabIndex = 3;
            this.lvItems.UseCompatibleStateImageBehavior = false;
            // 
            // itemName
            // 
            this.itemName.Text = "Item Name";
            // 
            // numOwned
            // 
            this.numOwned.Text = "# Owned";
            this.numOwned.Width = 30;
            // 
            // value
            // 
            this.value.Text = "Value Each";
            this.value.Width = 30;
            // 
            // valueTotal
            // 
            this.valueTotal.Text = "Value Total";
            this.valueTotal.Width = 30;
            // 
            // nudOwned
            // 
            this.nudOwned.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudOwned.Location = new System.Drawing.Point(159, 19);
            this.nudOwned.Name = "nudOwned";
            this.nudOwned.Size = new System.Drawing.Size(131, 53);
            this.nudOwned.TabIndex = 4;
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
            this.nudGold.Size = new System.Drawing.Size(131, 53);
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
            this.nudAddGold.Size = new System.Drawing.Size(131, 53);
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
            this.gbGold.Size = new System.Drawing.Size(298, 144);
            this.gbGold.TabIndex = 10;
            this.gbGold.TabStop = false;
            this.gbGold.Text = "Gold";
            // 
            // gbItemManagment
            // 
            this.gbItemManagment.Controls.Add(this.nudAddItems);
            this.gbItemManagment.Controls.Add(this.btnAddItems);
            this.gbItemManagment.Controls.Add(this.btnMake);
            this.gbItemManagment.Controls.Add(this.btnUndo);
            this.gbItemManagment.Controls.Add(this.lblItemHistory);
            this.gbItemManagment.Controls.Add(this.lvItemHistory);
            this.gbItemManagment.Controls.Add(this.lblCreationPaths);
            this.gbItemManagment.Controls.Add(this.lvCreationPaths);
            this.gbItemManagment.Controls.Add(this.nudOwned);
            this.gbItemManagment.Controls.Add(this.lblNumOwned);
            this.gbItemManagment.Location = new System.Drawing.Point(362, 162);
            this.gbItemManagment.Name = "gbItemManagment";
            this.gbItemManagment.Size = new System.Drawing.Size(298, 447);
            this.gbItemManagment.TabIndex = 11;
            this.gbItemManagment.TabStop = false;
            this.gbItemManagment.Text = "Item";
            // 
            // lvCreationPaths
            // 
            this.lvCreationPaths.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.numMade});
            this.lvCreationPaths.Location = new System.Drawing.Point(9, 155);
            this.lvCreationPaths.Name = "lvCreationPaths";
            this.lvCreationPaths.Size = new System.Drawing.Size(281, 70);
            this.lvCreationPaths.TabIndex = 6;
            this.lvCreationPaths.UseCompatibleStateImageBehavior = false;
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
            // numMade
            // 
            this.numMade.Text = "# Made";
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
            this.note});
            this.lvItemHistory.Location = new System.Drawing.Point(6, 265);
            this.lvItemHistory.Name = "lvItemHistory";
            this.lvItemHistory.Size = new System.Drawing.Size(281, 119);
            this.lvItemHistory.TabIndex = 8;
            this.lvItemHistory.UseCompatibleStateImageBehavior = false;
            // 
            // dateTime
            // 
            this.dateTime.Text = "Date/Time";
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
            // btnMake
            // 
            this.btnMake.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMake.Location = new System.Drawing.Point(184, 400);
            this.btnMake.Name = "btnMake";
            this.btnMake.Size = new System.Drawing.Size(103, 41);
            this.btnMake.TabIndex = 11;
            this.btnMake.Text = "Make";
            this.btnMake.UseVisualStyleBackColor = true;
            // 
            // professions
            // 
            this.professions.Text = "Professions";
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
            this.nudAddItems.Size = new System.Drawing.Size(131, 53);
            this.nudAddItems.TabIndex = 11;
            this.nudAddItems.ThousandsSeparator = true;
            // 
            // btnAddItems
            // 
            this.btnAddItems.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddItems.Location = new System.Drawing.Point(9, 90);
            this.btnAddItems.Name = "btnAddItems";
            this.btnAddItems.Size = new System.Drawing.Size(144, 41);
            this.btnAddItems.TabIndex = 10;
            this.btnAddItems.Text = "Add Items";
            this.btnAddItems.UseVisualStyleBackColor = true;
            // 
            // numAdded
            // 
            this.numAdded.Text = "#";
            // 
            // note
            // 
            this.note.Text = "Note";
            // 
            // usable
            // 
            this.usable.Text = "Directly Usable";
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(664, 621);
            this.Controls.Add(this.gbItemManagment);
            this.Controls.Add(this.gbGold);
            this.Controls.Add(this.lvItems);
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
            ((System.ComponentModel.ISupportInitialize)(this.nudAddItems)).EndInit();
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
    }
}