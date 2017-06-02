namespace Catonia_Item_Tracker
{
    partial class FrmLoading
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
            this.lblStatic = new System.Windows.Forms.Label();
            this.lblCurrent = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblStatic
            // 
            this.lblStatic.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStatic.Location = new System.Drawing.Point(12, 9);
            this.lblStatic.Name = "lblStatic";
            this.lblStatic.Size = new System.Drawing.Size(385, 32);
            this.lblStatic.TabIndex = 0;
            this.lblStatic.Text = "Initializing Catonia Item Tracker";
            this.lblStatic.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblCurrent
            // 
            this.lblCurrent.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCurrent.Location = new System.Drawing.Point(12, 54);
            this.lblCurrent.Name = "lblCurrent";
            this.lblCurrent.Size = new System.Drawing.Size(385, 42);
            this.lblCurrent.TabIndex = 1;
            this.lblCurrent.Text = "Starting...";
            this.lblCurrent.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // FrmLoading
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(409, 117);
            this.ControlBox = false;
            this.Controls.Add(this.lblCurrent);
            this.Controls.Add(this.lblStatic);
            this.Name = "FrmLoading";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblStatic;
        private System.Windows.Forms.Label lblCurrent;
    }
}