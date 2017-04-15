namespace Catonia_Item_Tracker
{
    partial class FrmItem
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
            this.lblGoldValue = new System.Windows.Forms.Label();
            this.nudGoldValue = new System.Windows.Forms.NumericUpDown();
            this.txtDescription = new System.Windows.Forms.RichTextBox();
            this.lblNotes = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.cbUseable = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.nudGoldValue)).BeginInit();
            this.SuspendLayout();
            // 
            // txtItemName
            // 
            this.txtItemName.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtItemName.Location = new System.Drawing.Point(191, 9);
            this.txtItemName.Name = "txtItemName";
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
            // lblGoldValue
            // 
            this.lblGoldValue.AutoSize = true;
            this.lblGoldValue.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGoldValue.Location = new System.Drawing.Point(12, 62);
            this.lblGoldValue.Name = "lblGoldValue";
            this.lblGoldValue.Size = new System.Drawing.Size(176, 37);
            this.lblGoldValue.TabIndex = 3;
            this.lblGoldValue.Text = "Gold Value";
            // 
            // nudGoldValue
            // 
            this.nudGoldValue.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nudGoldValue.Location = new System.Drawing.Point(191, 62);
            this.nudGoldValue.Maximum = new decimal(new int[] {
            -1593835521,
            466537709,
            54210,
            0});
            this.nudGoldValue.Name = "nudGoldValue";
            this.nudGoldValue.Size = new System.Drawing.Size(332, 44);
            this.nudGoldValue.TabIndex = 4;
            // 
            // txtDescription
            // 
            this.txtDescription.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDescription.Location = new System.Drawing.Point(19, 132);
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.Vertical;
            this.txtDescription.Size = new System.Drawing.Size(504, 199);
            this.txtDescription.TabIndex = 5;
            this.txtDescription.Text = "";
            // 
            // lblNotes
            // 
            this.lblNotes.AutoSize = true;
            this.lblNotes.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNotes.Location = new System.Drawing.Point(15, 105);
            this.lblNotes.Name = "lblNotes";
            this.lblNotes.Size = new System.Drawing.Size(59, 24);
            this.lblNotes.TabIndex = 6;
            this.lblNotes.Text = "Notes";
            // 
            // btnSave
            // 
            this.btnSave.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSave.Location = new System.Drawing.Point(362, 337);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(161, 33);
            this.btnSave.TabIndex = 7;
            this.btnSave.Text = "Save && Close";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // cbUseable
            // 
            this.cbUseable.AutoSize = true;
            this.cbUseable.Location = new System.Drawing.Point(19, 338);
            this.cbUseable.Name = "cbUseable";
            this.cbUseable.Size = new System.Drawing.Size(59, 17);
            this.cbUseable.TabIndex = 8;
            this.cbUseable.Text = "Usable";
            this.cbUseable.UseVisualStyleBackColor = true;
            // 
            // FrmItem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(535, 374);
            this.Controls.Add(this.cbUseable);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.lblNotes);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(this.nudGoldValue);
            this.Controls.Add(this.lblGoldValue);
            this.Controls.Add(this.lblItemName);
            this.Controls.Add(this.txtItemName);
            this.Name = "FrmItem";
            this.Text = "Item #";
            ((System.ComponentModel.ISupportInitialize)(this.nudGoldValue)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtItemName;
        private System.Windows.Forms.Label lblItemName;
        private System.Windows.Forms.Label lblGoldValue;
        private System.Windows.Forms.NumericUpDown nudGoldValue;
        private System.Windows.Forms.RichTextBox txtDescription;
        private System.Windows.Forms.Label lblNotes;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.CheckBox cbUseable;
    }
}