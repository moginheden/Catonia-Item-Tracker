namespace Catonia_Item_Tracker
{
    partial class FrmRecipie
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
            this.cbSearchDescriptions = new System.Windows.Forms.CheckBox();
            this.txtDescription = new System.Windows.Forms.RichTextBox();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lbItemSearch = new System.Windows.Forms.ListBox();
            this.nudNumProduced = new System.Windows.Forms.NumericUpDown();
            this.lblGoldValue = new System.Windows.Forms.Label();
            this.txtResultName = new System.Windows.Forms.TextBox();
            this.btnSetResult = new System.Windows.Forms.Button();
            this.btnIngredients = new System.Windows.Forms.Button();
            this.nudAddIngredient = new System.Windows.Forms.NumericUpDown();
            this.btnRemoveIngredient = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.cbProfession = new System.Windows.Forms.ComboBox();
            this.lblProfession = new System.Windows.Forms.Label();
            this.lblCrafterLevel = new System.Windows.Forms.Label();
            this.cbCrafterLevel = new System.Windows.Forms.ComboBox();
            this.lvIngredients = new System.Windows.Forms.ListView();
            this.ItemName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numUsed = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.btnSave = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.nudNumProduced)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddIngredient)).BeginInit();
            this.SuspendLayout();
            // 
            // cbSearchDescriptions
            // 
            this.cbSearchDescriptions.AutoSize = true;
            this.cbSearchDescriptions.Checked = true;
            this.cbSearchDescriptions.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSearchDescriptions.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbSearchDescriptions.Location = new System.Drawing.Point(258, 5);
            this.cbSearchDescriptions.Name = "cbSearchDescriptions";
            this.cbSearchDescriptions.Size = new System.Drawing.Size(121, 17);
            this.cbSearchDescriptions.TabIndex = 21;
            this.cbSearchDescriptions.Text = "Search Descriptions";
            this.cbSearchDescriptions.UseVisualStyleBackColor = true;
            // 
            // txtDescription
            // 
            this.txtDescription.BackColor = System.Drawing.SystemColors.Window;
            this.txtDescription.Location = new System.Drawing.Point(12, 509);
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.ReadOnly = true;
            this.txtDescription.Size = new System.Drawing.Size(367, 104);
            this.txtDescription.TabIndex = 20;
            this.txtDescription.Text = "";
            // 
            // txtSearch
            // 
            this.txtSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearch.ImeMode = System.Windows.Forms.ImeMode.On;
            this.txtSearch.Location = new System.Drawing.Point(12, 28);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(367, 44);
            this.txtSearch.TabIndex = 17;
            this.txtSearch.TextChanged += new System.EventHandler(this.txtSearch_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(64, 13);
            this.label1.TabIndex = 23;
            this.label1.Text = "Item Search";
            // 
            // lbItemSearch
            // 
            this.lbItemSearch.FormattingEnabled = true;
            this.lbItemSearch.Location = new System.Drawing.Point(16, 79);
            this.lbItemSearch.Name = "lbItemSearch";
            this.lbItemSearch.Size = new System.Drawing.Size(363, 420);
            this.lbItemSearch.TabIndex = 24;
            this.lbItemSearch.SelectedIndexChanged += new System.EventHandler(this.lbItemSearch_SelectedIndexChanged);
            // 
            // nudNumProduced
            // 
            this.nudNumProduced.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudNumProduced.Location = new System.Drawing.Point(586, 114);
            this.nudNumProduced.Maximum = new decimal(new int[] {
            -1593835521,
            466537709,
            54210,
            0});
            this.nudNumProduced.Name = "nudNumProduced";
            this.nudNumProduced.Size = new System.Drawing.Size(97, 44);
            this.nudNumProduced.TabIndex = 28;
            this.nudNumProduced.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // lblGoldValue
            // 
            this.lblGoldValue.AutoSize = true;
            this.lblGoldValue.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGoldValue.Location = new System.Drawing.Point(399, 116);
            this.lblGoldValue.Name = "lblGoldValue";
            this.lblGoldValue.Size = new System.Drawing.Size(181, 37);
            this.lblGoldValue.TabIndex = 27;
            this.lblGoldValue.Text = "# Produced";
            // 
            // txtResultName
            // 
            this.txtResultName.Location = new System.Drawing.Point(492, 88);
            this.txtResultName.Name = "txtResultName";
            this.txtResultName.ReadOnly = true;
            this.txtResultName.Size = new System.Drawing.Size(191, 20);
            this.txtResultName.TabIndex = 29;
            // 
            // btnSetResult
            // 
            this.btnSetResult.Location = new System.Drawing.Point(385, 88);
            this.btnSetResult.Name = "btnSetResult";
            this.btnSetResult.Size = new System.Drawing.Size(101, 23);
            this.btnSetResult.TabIndex = 30;
            this.btnSetResult.Text = "Set Result";
            this.btnSetResult.UseVisualStyleBackColor = true;
            this.btnSetResult.Click += new System.EventHandler(this.btnSetResult_Click);
            // 
            // btnIngredients
            // 
            this.btnIngredients.Location = new System.Drawing.Point(385, 162);
            this.btnIngredients.Name = "btnIngredients";
            this.btnIngredients.Size = new System.Drawing.Size(75, 46);
            this.btnIngredients.TabIndex = 33;
            this.btnIngredients.Text = "Add Ingredient";
            this.btnIngredients.UseVisualStyleBackColor = true;
            this.btnIngredients.Click += new System.EventHandler(this.btnIngredients_Click);
            // 
            // nudAddIngredient
            // 
            this.nudAddIngredient.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudAddIngredient.Location = new System.Drawing.Point(586, 164);
            this.nudAddIngredient.Maximum = new decimal(new int[] {
            -1593835521,
            466537709,
            54210,
            0});
            this.nudAddIngredient.Name = "nudAddIngredient";
            this.nudAddIngredient.Size = new System.Drawing.Size(97, 44);
            this.nudAddIngredient.TabIndex = 34;
            this.nudAddIngredient.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // btnRemoveIngredient
            // 
            this.btnRemoveIngredient.Location = new System.Drawing.Point(385, 569);
            this.btnRemoveIngredient.Name = "btnRemoveIngredient";
            this.btnRemoveIngredient.Size = new System.Drawing.Size(75, 44);
            this.btnRemoveIngredient.TabIndex = 35;
            this.btnRemoveIngredient.Text = "Remove Ingredient";
            this.btnRemoveIngredient.UseVisualStyleBackColor = true;
            this.btnRemoveIngredient.Click += new System.EventHandler(this.btnRemoveIngredient_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(462, 166);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(118, 37);
            this.label2.TabIndex = 36;
            this.label2.Text = "# Used";
            // 
            // cbProfession
            // 
            this.cbProfession.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbProfession.FormattingEnabled = true;
            this.cbProfession.Location = new System.Drawing.Point(508, 12);
            this.cbProfession.Name = "cbProfession";
            this.cbProfession.Size = new System.Drawing.Size(175, 32);
            this.cbProfession.TabIndex = 37;
            // 
            // lblProfession
            // 
            this.lblProfession.AutoSize = true;
            this.lblProfession.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProfession.Location = new System.Drawing.Point(404, 15);
            this.lblProfession.Name = "lblProfession";
            this.lblProfession.Size = new System.Drawing.Size(98, 24);
            this.lblProfession.TabIndex = 38;
            this.lblProfession.Text = "Profession";
            // 
            // lblCrafterLevel
            // 
            this.lblCrafterLevel.AutoSize = true;
            this.lblCrafterLevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCrafterLevel.Location = new System.Drawing.Point(388, 53);
            this.lblCrafterLevel.Name = "lblCrafterLevel";
            this.lblCrafterLevel.Size = new System.Drawing.Size(114, 24);
            this.lblCrafterLevel.TabIndex = 40;
            this.lblCrafterLevel.Text = "Crafter Level";
            // 
            // cbCrafterLevel
            // 
            this.cbCrafterLevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbCrafterLevel.FormattingEnabled = true;
            this.cbCrafterLevel.Location = new System.Drawing.Point(508, 50);
            this.cbCrafterLevel.Name = "cbCrafterLevel";
            this.cbCrafterLevel.Size = new System.Drawing.Size(175, 32);
            this.cbCrafterLevel.TabIndex = 39;
            // 
            // lvIngredients
            // 
            this.lvIngredients.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.ItemName,
            this.numUsed});
            this.lvIngredients.FullRowSelect = true;
            this.lvIngredients.HideSelection = false;
            this.lvIngredients.Location = new System.Drawing.Point(386, 214);
            this.lvIngredients.Name = "lvIngredients";
            this.lvIngredients.Size = new System.Drawing.Size(297, 349);
            this.lvIngredients.TabIndex = 41;
            this.lvIngredients.UseCompatibleStateImageBehavior = false;
            this.lvIngredients.View = System.Windows.Forms.View.Details;
            this.lvIngredients.ColumnClick += new System.Windows.Forms.ColumnClickEventHandler(this.lvIngredients_ColumnClick);
            // 
            // ItemName
            // 
            this.ItemName.Text = "Item Name";
            this.ItemName.Width = 237;
            // 
            // numUsed
            // 
            this.numUsed.Text = "# Used";
            // 
            // btnSave
            // 
            this.btnSave.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSave.Location = new System.Drawing.Point(522, 569);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(161, 44);
            this.btnSave.TabIndex = 42;
            this.btnSave.Text = "Save && Close";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // FrmRecipie
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(695, 619);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.lvIngredients);
            this.Controls.Add(this.lblCrafterLevel);
            this.Controls.Add(this.cbCrafterLevel);
            this.Controls.Add(this.lblProfession);
            this.Controls.Add(this.cbProfession);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnRemoveIngredient);
            this.Controls.Add(this.nudAddIngredient);
            this.Controls.Add(this.btnIngredients);
            this.Controls.Add(this.btnSetResult);
            this.Controls.Add(this.txtResultName);
            this.Controls.Add(this.nudNumProduced);
            this.Controls.Add(this.lblGoldValue);
            this.Controls.Add(this.lbItemSearch);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbSearchDescriptions);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(this.txtSearch);
            this.Name = "FrmRecipie";
            this.Text = "Recipie #";
            ((System.ComponentModel.ISupportInitialize)(this.nudNumProduced)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudAddIngredient)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox cbSearchDescriptions;
        private System.Windows.Forms.RichTextBox txtDescription;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox lbItemSearch;
        private System.Windows.Forms.NumericUpDown nudNumProduced;
        private System.Windows.Forms.Label lblGoldValue;
        private System.Windows.Forms.TextBox txtResultName;
        private System.Windows.Forms.Button btnSetResult;
        private System.Windows.Forms.Button btnIngredients;
        private System.Windows.Forms.NumericUpDown nudAddIngredient;
        private System.Windows.Forms.Button btnRemoveIngredient;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbProfession;
        private System.Windows.Forms.Label lblProfession;
        private System.Windows.Forms.Label lblCrafterLevel;
        private System.Windows.Forms.ComboBox cbCrafterLevel;
        private System.Windows.Forms.ListView lvIngredients;
        private System.Windows.Forms.ColumnHeader ItemName;
        private System.Windows.Forms.ColumnHeader numUsed;
        private System.Windows.Forms.Button btnSave;
    }
}