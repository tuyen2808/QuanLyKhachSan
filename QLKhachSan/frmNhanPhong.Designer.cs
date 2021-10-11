namespace QLKhachSan
{
    partial class frmNhanPhong
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmNhanPhong));
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.dtNgayNhan = new DevExpress.XtraEditors.DateEdit();
            this.txtMaNhanPhong = new DevExpress.XtraEditors.TextEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.rdoNu = new System.Windows.Forms.RadioButton();
            this.rdoNam = new System.Windows.Forms.RadioButton();
            this.txtQuocTich = new DevExpress.XtraEditors.TextEdit();
            this.txtSDT = new DevExpress.XtraEditors.TextEdit();
            this.txtDiaChi = new DevExpress.XtraEditors.TextEdit();
            this.txtNgaySinh = new DevExpress.XtraEditors.TextEdit();
            this.txtCMND = new DevExpress.XtraEditors.TextEdit();
            this.btnThemKH = new DevExpress.XtraEditors.SimpleButton();
            this.cbbKhachHang = new DevExpress.XtraEditors.LookUpEdit();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl9 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.dtgvPDP = new System.Windows.Forms.DataGridView();
            this.colMaPD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colMaKH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.btnHuy = new DevExpress.XtraEditors.SimpleButton();
            this.btnXoa = new DevExpress.XtraEditors.SimpleButton();
            this.btnLuu = new DevExpress.XtraEditors.SimpleButton();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.groupControl4 = new DevExpress.XtraEditors.GroupControl();
            this.dtgvCTPD = new System.Windows.Forms.DataGridView();
            this.colMPD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colMP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNN = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSN = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dtNgayNhan.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtNgayNhan.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaNhanPhong.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtQuocTich.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSDT.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDiaChi.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNgaySinh.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCMND.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbKhachHang.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvPDP)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).BeginInit();
            this.groupControl4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvCTPD)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(2, 1);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(93, 23);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Ngày Nhận";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Location = new System.Drawing.Point(389, 1);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(134, 23);
            this.labelControl2.TabIndex = 1;
            this.labelControl2.Text = "Mã Nhận Phòng";
            // 
            // dtNgayNhan
            // 
            this.dtNgayNhan.EditValue = null;
            this.dtNgayNhan.Location = new System.Drawing.Point(112, 3);
            this.dtNgayNhan.Name = "dtNgayNhan";
            this.dtNgayNhan.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtNgayNhan.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dtNgayNhan.Size = new System.Drawing.Size(243, 22);
            this.dtNgayNhan.TabIndex = 2;
            // 
            // txtMaNhanPhong
            // 
            this.txtMaNhanPhong.Location = new System.Drawing.Point(554, 3);
            this.txtMaNhanPhong.Name = "txtMaNhanPhong";
            this.txtMaNhanPhong.Size = new System.Drawing.Size(197, 22);
            this.txtMaNhanPhong.TabIndex = 3;
            this.txtMaNhanPhong.EditValueChanged += new System.EventHandler(this.txtMaNhanPhong_EditValueChanged);
            // 
            // groupControl1
            // 
            this.groupControl1.CaptionImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("groupControl1.CaptionImageOptions.Image")));
            this.groupControl1.Controls.Add(this.rdoNu);
            this.groupControl1.Controls.Add(this.rdoNam);
            this.groupControl1.Controls.Add(this.txtQuocTich);
            this.groupControl1.Controls.Add(this.txtSDT);
            this.groupControl1.Controls.Add(this.txtDiaChi);
            this.groupControl1.Controls.Add(this.txtNgaySinh);
            this.groupControl1.Controls.Add(this.txtCMND);
            this.groupControl1.Controls.Add(this.btnThemKH);
            this.groupControl1.Controls.Add(this.cbbKhachHang);
            this.groupControl1.Controls.Add(this.labelControl7);
            this.groupControl1.Controls.Add(this.labelControl6);
            this.groupControl1.Controls.Add(this.labelControl5);
            this.groupControl1.Controls.Add(this.labelControl4);
            this.groupControl1.Controls.Add(this.labelControl3);
            this.groupControl1.Controls.Add(this.labelControl8);
            this.groupControl1.Controls.Add(this.labelControl9);
            this.groupControl1.Location = new System.Drawing.Point(12, 42);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(589, 454);
            this.groupControl1.TabIndex = 4;
            this.groupControl1.Text = "THÔNG TIN KHÁCH HÀNG";
            // 
            // rdoNu
            // 
            this.rdoNu.AutoSize = true;
            this.rdoNu.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.rdoNu.Location = new System.Drawing.Point(362, 173);
            this.rdoNu.Name = "rdoNu";
            this.rdoNu.Size = new System.Drawing.Size(57, 27);
            this.rdoNu.TabIndex = 15;
            this.rdoNu.TabStop = true;
            this.rdoNu.Text = "Nữ";
            this.rdoNu.UseVisualStyleBackColor = true;
            // 
            // rdoNam
            // 
            this.rdoNam.AutoSize = true;
            this.rdoNam.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.rdoNam.Location = new System.Drawing.Point(191, 173);
            this.rdoNam.Name = "rdoNam";
            this.rdoNam.Size = new System.Drawing.Size(70, 27);
            this.rdoNam.TabIndex = 14;
            this.rdoNam.TabStop = true;
            this.rdoNam.Text = "Nam";
            this.rdoNam.UseVisualStyleBackColor = true;
            // 
            // txtQuocTich
            // 
            this.txtQuocTich.Location = new System.Drawing.Point(191, 413);
            this.txtQuocTich.Name = "txtQuocTich";
            this.txtQuocTich.Size = new System.Drawing.Size(291, 22);
            this.txtQuocTich.TabIndex = 13;
            // 
            // txtSDT
            // 
            this.txtSDT.Location = new System.Drawing.Point(191, 360);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.Size = new System.Drawing.Size(291, 22);
            this.txtSDT.TabIndex = 12;
            // 
            // txtDiaChi
            // 
            this.txtDiaChi.Location = new System.Drawing.Point(191, 302);
            this.txtDiaChi.Name = "txtDiaChi";
            this.txtDiaChi.Size = new System.Drawing.Size(291, 22);
            this.txtDiaChi.TabIndex = 11;
            // 
            // txtNgaySinh
            // 
            this.txtNgaySinh.Location = new System.Drawing.Point(191, 235);
            this.txtNgaySinh.Name = "txtNgaySinh";
            this.txtNgaySinh.Size = new System.Drawing.Size(291, 22);
            this.txtNgaySinh.TabIndex = 10;
            // 
            // txtCMND
            // 
            this.txtCMND.Location = new System.Drawing.Point(191, 115);
            this.txtCMND.Name = "txtCMND";
            this.txtCMND.Size = new System.Drawing.Size(291, 22);
            this.txtCMND.TabIndex = 9;
            // 
            // btnThemKH
            // 
            this.btnThemKH.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnThemKH.ImageOptions.Image")));
            this.btnThemKH.ImageOptions.ImageIndex = 1;
            this.btnThemKH.ImageOptions.Location = DevExpress.XtraEditors.ImageLocation.BottomCenter;
            this.btnThemKH.Location = new System.Drawing.Point(502, 44);
            this.btnThemKH.Name = "btnThemKH";
            this.btnThemKH.Size = new System.Drawing.Size(38, 41);
            this.btnThemKH.TabIndex = 8;
            this.btnThemKH.Text = "simpleButton1";
            this.btnThemKH.Click += new System.EventHandler(this.btnThemKH_Click);
            // 
            // cbbKhachHang
            // 
            this.cbbKhachHang.Location = new System.Drawing.Point(191, 59);
            this.cbbKhachHang.Name = "cbbKhachHang";
            this.cbbKhachHang.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbKhachHang.Size = new System.Drawing.Size(291, 22);
            this.cbbKhachHang.TabIndex = 7;
            this.cbbKhachHang.EditValueChanged += new System.EventHandler(this.cbbKhachHang_EditValueChanged);
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl7.Appearance.Options.UseFont = true;
            this.labelControl7.Location = new System.Drawing.Point(6, 416);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(87, 23);
            this.labelControl7.TabIndex = 6;
            this.labelControl7.Text = "Quốc Tịch";
            // 
            // labelControl6
            // 
            this.labelControl6.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl6.Appearance.Options.UseFont = true;
            this.labelControl6.Location = new System.Drawing.Point(6, 363);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(118, 23);
            this.labelControl6.TabIndex = 5;
            this.labelControl6.Text = "Số Điện Thoại";
            // 
            // labelControl5
            // 
            this.labelControl5.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl5.Appearance.Options.UseFont = true;
            this.labelControl5.Location = new System.Drawing.Point(6, 305);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(68, 23);
            this.labelControl5.TabIndex = 4;
            this.labelControl5.Text = "Địa Chỉ ";
            // 
            // labelControl4
            // 
            this.labelControl4.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl4.Appearance.Options.UseFont = true;
            this.labelControl4.Location = new System.Drawing.Point(6, 238);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(85, 23);
            this.labelControl4.TabIndex = 3;
            this.labelControl4.Text = "Ngày Sinh";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Location = new System.Drawing.Point(6, 173);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(80, 23);
            this.labelControl3.TabIndex = 2;
            this.labelControl3.Text = "Giới Tinh";
            // 
            // labelControl8
            // 
            this.labelControl8.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.labelControl8.Appearance.Options.UseFont = true;
            this.labelControl8.Location = new System.Drawing.Point(6, 113);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(86, 23);
            this.labelControl8.TabIndex = 1;
            this.labelControl8.Text = "Số CMND";
            // 
            // labelControl9
            // 
            this.labelControl9.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl9.Appearance.Options.UseFont = true;
            this.labelControl9.Location = new System.Drawing.Point(6, 62);
            this.labelControl9.Name = "labelControl9";
            this.labelControl9.Size = new System.Drawing.Size(140, 23);
            this.labelControl9.TabIndex = 0;
            this.labelControl9.Text = "Tên Khách Hàng";
            // 
            // groupControl2
            // 
            this.groupControl2.CaptionImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("groupControl2.CaptionImageOptions.Image")));
            this.groupControl2.Controls.Add(this.dtgvPDP);
            this.groupControl2.Location = new System.Drawing.Point(617, 42);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(338, 454);
            this.groupControl2.TabIndex = 5;
            this.groupControl2.Text = "PHIẾU ĐẶT PHÒNG";
            // 
            // dtgvPDP
            // 
            this.dtgvPDP.AllowUserToAddRows = false;
            this.dtgvPDP.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvPDP.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colMaPD,
            this.colMaKH});
            this.dtgvPDP.Location = new System.Drawing.Point(5, 44);
            this.dtgvPDP.Name = "dtgvPDP";
            this.dtgvPDP.RowHeadersWidth = 51;
            this.dtgvPDP.RowTemplate.Height = 24;
            this.dtgvPDP.Size = new System.Drawing.Size(328, 410);
            this.dtgvPDP.TabIndex = 0;
            this.dtgvPDP.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgvPDP_CellClick);
            // 
            // colMaPD
            // 
            this.colMaPD.HeaderText = "Mã phiếu đặt";
            this.colMaPD.MinimumWidth = 6;
            this.colMaPD.Name = "colMaPD";
            this.colMaPD.ReadOnly = true;
            this.colMaPD.Width = 135;
            // 
            // colMaKH
            // 
            this.colMaKH.HeaderText = "Mã khách hàng";
            this.colMaKH.MinimumWidth = 6;
            this.colMaKH.Name = "colMaKH";
            this.colMaKH.ReadOnly = true;
            this.colMaKH.Width = 135;
            // 
            // groupControl3
            // 
            this.groupControl3.Controls.Add(this.btnHuy);
            this.groupControl3.Controls.Add(this.btnXoa);
            this.groupControl3.Controls.Add(this.btnLuu);
            this.groupControl3.Controls.Add(this.btnThem);
            this.groupControl3.Location = new System.Drawing.Point(12, 503);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(1224, 81);
            this.groupControl3.TabIndex = 6;
            this.groupControl3.Text = "XỬ LÝ";
            // 
            // btnHuy
            // 
            this.btnHuy.Location = new System.Drawing.Point(1001, 39);
            this.btnHuy.Name = "btnHuy";
            this.btnHuy.Size = new System.Drawing.Size(75, 23);
            this.btnHuy.TabIndex = 4;
            this.btnHuy.Text = "Hủy";
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(647, 39);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(75, 23);
            this.btnXoa.TabIndex = 3;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(318, 39);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(75, 23);
            this.btnLuu.TabIndex = 1;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(6, 39);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 23);
            this.btnThem.TabIndex = 0;
            this.btnThem.Text = "Thêm";
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // groupControl4
            // 
            this.groupControl4.CaptionImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("groupControl4.CaptionImageOptions.Image")));
            this.groupControl4.Controls.Add(this.dtgvCTPD);
            this.groupControl4.Location = new System.Drawing.Point(961, 42);
            this.groupControl4.Name = "groupControl4";
            this.groupControl4.Size = new System.Drawing.Size(275, 454);
            this.groupControl4.TabIndex = 7;
            this.groupControl4.Text = "Chi Tiết Đặt Phòng";
            this.groupControl4.Paint += new System.Windows.Forms.PaintEventHandler(this.groupControl4_Paint);
            // 
            // dtgvCTPD
            // 
            this.dtgvCTPD.AllowUserToAddRows = false;
            this.dtgvCTPD.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvCTPD.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colMPD,
            this.colMP,
            this.colNL,
            this.colNN,
            this.colNT,
            this.colSN});
            this.dtgvCTPD.Location = new System.Drawing.Point(14, 45);
            this.dtgvCTPD.Name = "dtgvCTPD";
            this.dtgvCTPD.RowHeadersWidth = 51;
            this.dtgvCTPD.RowTemplate.Height = 24;
            this.dtgvCTPD.Size = new System.Drawing.Size(256, 404);
            this.dtgvCTPD.TabIndex = 0;
            // 
            // colMPD
            // 
            this.colMPD.HeaderText = "Mã phiếu đặt";
            this.colMPD.MinimumWidth = 6;
            this.colMPD.Name = "colMPD";
            this.colMPD.Width = 125;
            // 
            // colMP
            // 
            this.colMP.HeaderText = "Mã phòng";
            this.colMP.MinimumWidth = 6;
            this.colMP.Name = "colMP";
            this.colMP.Width = 125;
            // 
            // colNL
            // 
            this.colNL.HeaderText = "Ngày lập";
            this.colNL.MinimumWidth = 6;
            this.colNL.Name = "colNL";
            this.colNL.Width = 125;
            // 
            // colNN
            // 
            this.colNN.HeaderText = "Ngày nhận";
            this.colNN.MinimumWidth = 6;
            this.colNN.Name = "colNN";
            this.colNN.Width = 125;
            // 
            // colNT
            // 
            this.colNT.HeaderText = "Ngày trả";
            this.colNT.MinimumWidth = 6;
            this.colNT.Name = "colNT";
            this.colNT.Width = 125;
            // 
            // colSN
            // 
            this.colSN.HeaderText = "Số người";
            this.colSN.MinimumWidth = 6;
            this.colSN.Name = "colSN";
            this.colSN.Width = 125;
            // 
            // frmNhanPhong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1259, 596);
            this.Controls.Add(this.groupControl4);
            this.Controls.Add(this.groupControl3);
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.txtMaNhanPhong);
            this.Controls.Add(this.dtNgayNhan);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.labelControl1);
            this.Name = "frmNhanPhong";
            this.Text = "Nhận Phòng";
            this.Load += new System.EventHandler(this.frmNhanPhong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtNgayNhan.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtNgayNhan.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtMaNhanPhong.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtQuocTich.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSDT.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDiaChi.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNgaySinh.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCMND.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbKhachHang.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgvPDP)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).EndInit();
            this.groupControl4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgvCTPD)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit dtNgayNhan;
        private DevExpress.XtraEditors.TextEdit txtMaNhanPhong;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private System.Windows.Forms.RadioButton rdoNu;
        private System.Windows.Forms.RadioButton rdoNam;
        private DevExpress.XtraEditors.TextEdit txtQuocTich;
        private DevExpress.XtraEditors.TextEdit txtSDT;
        private DevExpress.XtraEditors.TextEdit txtDiaChi;
        private DevExpress.XtraEditors.TextEdit txtNgaySinh;
        private DevExpress.XtraEditors.TextEdit txtCMND;
        private DevExpress.XtraEditors.SimpleButton btnThemKH;
        private DevExpress.XtraEditors.LookUpEdit cbbKhachHang;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.LabelControl labelControl9;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private System.Windows.Forms.DataGridView dtgvPDP;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.SimpleButton btnHuy;
        private DevExpress.XtraEditors.SimpleButton btnXoa;
        private DevExpress.XtraEditors.SimpleButton btnLuu;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.GroupControl groupControl4;
		private System.Windows.Forms.DataGridView dtgvCTPD;
		private System.Windows.Forms.DataGridViewTextBoxColumn colMaPD;
		private System.Windows.Forms.DataGridViewTextBoxColumn colMaKH;
		private System.Windows.Forms.DataGridViewTextBoxColumn colMPD;
		private System.Windows.Forms.DataGridViewTextBoxColumn colMP;
		private System.Windows.Forms.DataGridViewTextBoxColumn colNL;
		private System.Windows.Forms.DataGridViewTextBoxColumn colNN;
		private System.Windows.Forms.DataGridViewTextBoxColumn colNT;
		private System.Windows.Forms.DataGridViewTextBoxColumn colSN;
	}
}