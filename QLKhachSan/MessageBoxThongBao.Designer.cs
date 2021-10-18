namespace QLKhachSan
{
    partial class MessageBoxThongBao
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MessageBoxThongBao));
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.lblThongBao = new DevExpress.XtraEditors.LabelControl();
            this.btnOke = new DevExpress.XtraEditors.SimpleButton();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Times New Roman", 25.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseBackColor = true;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(-117, -3);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(769, 49);
            this.labelControl1.TabIndex = 2;
            this.labelControl1.Text = "                      THÔNG BÁO                        ";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Times New Roman", 25.8F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.Options.UseBackColor = true;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Location = new System.Drawing.Point(-157, 249);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(792, 49);
            this.labelControl4.TabIndex = 5;
            this.labelControl4.Text = "                                                                        ";
            // 
            // lblThongBao
            // 
            this.lblThongBao.Appearance.BackColor = System.Drawing.Color.White;
            this.lblThongBao.Appearance.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblThongBao.Appearance.Options.UseBackColor = true;
            this.lblThongBao.Appearance.Options.UseFont = true;
            this.lblThongBao.Location = new System.Drawing.Point(175, 94);
            this.lblThongBao.Name = "lblThongBao";
            this.lblThongBao.Size = new System.Drawing.Size(128, 31);
            this.lblThongBao.TabIndex = 6;
            this.lblThongBao.Text = "Thông Báo";
            // 
            // btnOke
            // 
            this.btnOke.Appearance.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold);
            this.btnOke.Appearance.Options.UseFont = true;
            this.btnOke.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnOke.ImageOptions.Image")));
            this.btnOke.Location = new System.Drawing.Point(186, 175);
            this.btnOke.Name = "btnOke";
            this.btnOke.Size = new System.Drawing.Size(108, 47);
            this.btnOke.TabIndex = 7;
            this.btnOke.Text = "OK";
            this.btnOke.Click += new System.EventHandler(this.btnOke_Click);
            // 
            // MessageBoxThongBao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(481, 294);
            this.ControlBox = false;
            this.Controls.Add(this.btnOke);
            this.Controls.Add(this.lblThongBao);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.labelControl1);
            this.Name = "MessageBoxThongBao";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.MessageBoxThongBao_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl lblThongBao;
        private DevExpress.XtraEditors.SimpleButton btnOke;
    }
}