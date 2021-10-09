namespace QLKhachSan
{
    partial class MessageBoxYesNo
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MessageBoxYesNo));
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.lblThongBao = new DevExpress.XtraEditors.LabelControl();
            this.btnCo = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.btnKhong = new DevExpress.XtraEditors.SimpleButton();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Times New Roman", 25.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseBackColor = true;
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(-80, -1);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(769, 49);
            this.labelControl1.TabIndex = 1;
            this.labelControl1.Text = "                      THÔNG BÁO                        ";
            // 
            // lblThongBao
            // 
            this.lblThongBao.Appearance.BackColor = System.Drawing.Color.White;
            this.lblThongBao.Appearance.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblThongBao.Appearance.Options.UseBackColor = true;
            this.lblThongBao.Appearance.Options.UseFont = true;
            this.lblThongBao.Location = new System.Drawing.Point(204, 97);
            this.lblThongBao.Name = "lblThongBao";
            this.lblThongBao.Size = new System.Drawing.Size(128, 31);
            this.lblThongBao.TabIndex = 2;
            this.lblThongBao.Text = "Thông Báo";
            // 
            // btnCo
            // 
            this.btnCo.Appearance.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold);
            this.btnCo.Appearance.Options.UseFont = true;
            this.btnCo.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnCo.ImageOptions.Image")));
            this.btnCo.Location = new System.Drawing.Point(61, 207);
            this.btnCo.Name = "btnCo";
            this.btnCo.Size = new System.Drawing.Size(97, 48);
            this.btnCo.TabIndex = 5;
            this.btnCo.Text = "Có";
            this.btnCo.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Times New Roman", 25.8F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.Options.UseBackColor = true;
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Location = new System.Drawing.Point(-126, 301);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(792, 49);
            this.labelControl4.TabIndex = 6;
            this.labelControl4.Text = "                                                                        ";
            // 
            // btnKhong
            // 
            this.btnKhong.Appearance.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold);
            this.btnKhong.Appearance.Options.UseFont = true;
            this.btnKhong.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnKhong.ImageOptions.Image")));
            this.btnKhong.Location = new System.Drawing.Point(369, 207);
            this.btnKhong.Name = "btnKhong";
            this.btnKhong.Size = new System.Drawing.Size(122, 48);
            this.btnKhong.TabIndex = 7;
            this.btnKhong.Text = "Không";
            this.btnKhong.Click += new System.EventHandler(this.btnKhong_Click);
            // 
            // MessageBoxYesNo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(562, 348);
            this.ControlBox = false;
            this.Controls.Add(this.btnKhong);
            this.Controls.Add(this.labelControl4);
            this.Controls.Add(this.btnCo);
            this.Controls.Add(this.lblThongBao);
            this.Controls.Add(this.labelControl1);
            this.Name = "MessageBoxYesNo";
            this.Load += new System.EventHandler(this.MessageBoxYesNo_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl lblThongBao;
        private DevExpress.XtraEditors.SimpleButton btnCo;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.SimpleButton btnKhong;
    }
}