using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DAL_KhachSan;
using QuanLyKhachSan.BSlayer;
namespace QLKhachSan
{
    public partial class frmDatPhong : DevExpress.XtraEditors.XtraForm
    {
        public frmDatPhong()
        {
            InitializeComponent();
        }
        DAL_DatPhong d = new DAL_DatPhong();
        BLThongBao bltb = new BLThongBao();
        public string maphong { get; set; }
        public string madatphong { get; set; }
        private void labelControl5_Click(object sender, EventArgs e)
        {

        }

        private void textEdit2_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void txtNgaySinh_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void btnThemKH_Click(object sender, EventArgs e)
        {
            frmQLKhachHang qlncc = new frmQLKhachHang();
            qlncc.ShowDialog();
            qlncc.Hide();
            cbbKhachHang.Properties.DataSource = d.loadcbbKH();

            txtDiaChi.ResetText();
            txtSDT.ResetText();
            txtNgaySinh.ResetText();
            txtQuocTich.ResetText();
            rdoNam.Checked = false;
            rdoNu.Checked = false;
        }

        private void frmDatPhong_Load(object sender, EventArgs e)
        {
            dtNgayTao.Enabled = false;
            txtMaDP.Enabled = false;
            cbbTinhTrang.Enabled = false;

            cbbKhachHang.Properties.DataSource = d.loadcbbKH();
            cbbKhachHang.Properties.DisplayMember = "TenKhachHang";
            cbbKhachHang.Properties.ValueMember = "MaKhachHang";

			cbbPhong.Properties.DataSource = d.loadcbbP();
			cbbPhong.Properties.DisplayMember = "MaPhong";
			cbbPhong.Properties.ValueMember = "MaPhong";

			dtNgayTao.EditValue = DateTime.Now;
            dtNgayNhan.EditValue = DateTime.Now;
            dtNgayTra.EditValue = DateTime.Now;
            txtMaDP.Text = d.LayMaDP();
        }

        private void cbbKhachHang_EditValueChanged(object sender, EventArgs e)
        {
            txtSDT.Text = d.LaySDTKH(cbbKhachHang.EditValue.ToString());
            txtDiaChi.Text = d.LayDCKH(cbbKhachHang.EditValue.ToString());
            txtNgaySinh.Text = d.LayNgaySinh(cbbKhachHang.EditValue.ToString());
            txtQuocTich.Text = d.LayQuocTich(cbbKhachHang.EditValue.ToString());
            txtCMND.Text = d.LaySoCMND(cbbKhachHang.EditValue.ToString());
            if (d.LayGTKH(cbbKhachHang.EditValue.ToString()) == "Nam")
                rdoNam.Checked = true;
            else
                rdoNu.Checked = true;
         
        }

        private void txtSDT_EditValueChanged(object sender, EventArgs e)
        {
            cbbKhachHang.EditValue = d.LayMaKH(txtSDT.Text);
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }

		private void cbbPhong_EditValueChanged(object sender, EventArgs e)
		{
			maphong = cbbPhong.EditValue.ToString();
		}

		private void btnXacNhan_Click(object sender, EventArgs e)
        {
			try
			{
				var phieuDP = new PHIEUDATPHONG();
				var chiTietDP = new CHITIETDATPHONG();

				phieuDP.MaPhieuDat = txtMaDP.Text;
				phieuDP.MaKhachHang = cbbKhachHang.EditValue.ToString();

				chiTietDP.MaPhieuDat = txtMaDP.Text;
				chiTietDP.MaPhong = maphong;
				chiTietDP.NgayLap = dtNgayTao.DateTime;
				chiTietDP.NgayNhan = dtNgayNhan.DateTime;
				chiTietDP.NgayTra = dtNgayTra.DateTime;
				chiTietDP.SoNguoi = Convert.ToInt32(numericUpDown1.Value);

				d.ThemPD(phieuDP, chiTietDP);
				bltb.Show("Thêm Phiếu Thành Công!");
			}
			catch(Exception ex)
			{
				Console.WriteLine(ex);
				bltb.Show("Lỗi !");
			}
		}

	}
}