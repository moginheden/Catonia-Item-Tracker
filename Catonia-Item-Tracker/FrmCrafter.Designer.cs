namespace Catonia_Item_Tracker
{
    partial class FrmCrafter
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
            this.lblCrafterLevel = new System.Windows.Forms.Label();
            this.cbCrafterLevel = new System.Windows.Forms.ComboBox();
            this.lblProfession = new System.Windows.Forms.Label();
            this.cbProfession = new System.Windows.Forms.ComboBox();
            this.lvRecipies = new System.Windows.Forms.ListView();
            this.result = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numMade = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.numCanMake = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lblRecipies = new System.Windows.Forms.Label();
            this.txtDescription = new System.Windows.Forms.TextBox();
            this.lblDescription = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblCrafterLevel
            // 
            this.lblCrafterLevel.AutoSize = true;
            this.lblCrafterLevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCrafterLevel.Location = new System.Drawing.Point(309, 9);
            this.lblCrafterLevel.Name = "lblCrafterLevel";
            this.lblCrafterLevel.Size = new System.Drawing.Size(114, 24);
            this.lblCrafterLevel.TabIndex = 44;
            this.lblCrafterLevel.Text = "Crafter Level";
            // 
            // cbCrafterLevel
            // 
            this.cbCrafterLevel.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCrafterLevel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbCrafterLevel.FormattingEnabled = true;
            this.cbCrafterLevel.Location = new System.Drawing.Point(429, 6);
            this.cbCrafterLevel.Name = "cbCrafterLevel";
            this.cbCrafterLevel.Size = new System.Drawing.Size(175, 32);
            this.cbCrafterLevel.TabIndex = 43;
            this.cbCrafterLevel.SelectedIndexChanged += new System.EventHandler(this.CbProfession_SelectedIndexChanged);
            // 
            // lblProfession
            // 
            this.lblProfession.AutoSize = true;
            this.lblProfession.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProfession.Location = new System.Drawing.Point(12, 9);
            this.lblProfession.Name = "lblProfession";
            this.lblProfession.Size = new System.Drawing.Size(98, 24);
            this.lblProfession.TabIndex = 42;
            this.lblProfession.Text = "Profession";
            // 
            // cbProfession
            // 
            this.cbProfession.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbProfession.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbProfession.FormattingEnabled = true;
            this.cbProfession.Location = new System.Drawing.Point(116, 6);
            this.cbProfession.Name = "cbProfession";
            this.cbProfession.Size = new System.Drawing.Size(175, 32);
            this.cbProfession.TabIndex = 41;
            this.cbProfession.SelectedIndexChanged += new System.EventHandler(this.CbProfession_SelectedIndexChanged);
            // 
            // lvRecipies
            // 
            this.lvRecipies.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvRecipies.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.result,
            this.numMade,
            this.numCanMake});
            this.lvRecipies.FullRowSelect = true;
            this.lvRecipies.HideSelection = false;
            this.lvRecipies.Location = new System.Drawing.Point(16, 60);
            this.lvRecipies.MultiSelect = false;
            this.lvRecipies.Name = "lvRecipies";
            this.lvRecipies.Size = new System.Drawing.Size(774, 354);
            this.lvRecipies.TabIndex = 45;
            this.lvRecipies.UseCompatibleStateImageBehavior = false;
            this.lvRecipies.View = System.Windows.Forms.View.Details;
            this.lvRecipies.SelectedIndexChanged += new System.EventHandler(this.LvRecipies_SelectedIndexChanged);
            this.lvRecipies.DoubleClick += new System.EventHandler(this.LvRecipies_DoubleClick);
            // 
            // result
            // 
            this.result.Text = "Result";
            // 
            // numMade
            // 
            this.numMade.Text = "Makes";
            // 
            // numCanMake
            // 
            this.numCanMake.Text = "Can Do";
            this.numCanMake.Width = 48;
            // 
            // lblRecipies
            // 
            this.lblRecipies.AutoSize = true;
            this.lblRecipies.Location = new System.Drawing.Point(13, 44);
            this.lblRecipies.Name = "lblRecipies";
            this.lblRecipies.Size = new System.Drawing.Size(51, 13);
            this.lblRecipies.TabIndex = 46;
            this.lblRecipies.Text = "Recipies:";
            // 
            // txtDescription
            // 
            this.txtDescription.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtDescription.Location = new System.Drawing.Point(16, 433);
            this.txtDescription.Multiline = true;
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.Size = new System.Drawing.Size(774, 95);
            this.txtDescription.TabIndex = 47;
            // 
            // lblDescription
            // 
            this.lblDescription.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.lblDescription.AutoSize = true;
            this.lblDescription.Location = new System.Drawing.Point(13, 417);
            this.lblDescription.Name = "lblDescription";
            this.lblDescription.Size = new System.Drawing.Size(105, 13);
            this.lblDescription.TabIndex = 48;
            this.lblDescription.Text = "Description of Result";
            // 
            // FrmCrafter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(802, 540);
            this.Controls.Add(this.lblDescription);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(this.lvRecipies);
            this.Controls.Add(this.lblRecipies);
            this.Controls.Add(this.lblCrafterLevel);
            this.Controls.Add(this.cbCrafterLevel);
            this.Controls.Add(this.lblProfession);
            this.Controls.Add(this.cbProfession);
            this.Name = "FrmCrafter";
            this.Text = "Crafting Recipies By Profession";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblCrafterLevel;
        private System.Windows.Forms.ComboBox cbCrafterLevel;
        private System.Windows.Forms.Label lblProfession;
        private System.Windows.Forms.ComboBox cbProfession;
        private System.Windows.Forms.ListView lvRecipies;
        private System.Windows.Forms.ColumnHeader result;
        private System.Windows.Forms.ColumnHeader numMade;
        private System.Windows.Forms.ColumnHeader numCanMake;
        private System.Windows.Forms.Label lblRecipies;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.Label lblDescription;
    }
}