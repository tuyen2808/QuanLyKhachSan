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
    public partial class frmNhanPhong : DevExpress.XtraEditors.XtraForm
    {
		DAL_NhanPhong n = new DAL_NhanPhong();
		DAL_DatPhong d = new DAL_DatPhong();
		BLThongBao bltb = new BLThongBao();

		public string maPhieuDat { get; set; }
		public string maPhong { get; set; }
		public DateTime? ngayTra { get; set; }
        public frmNhanPhong()
        {
            InitializeComponent();
        }

        private void groupControl4_Paint(object sender, PaintEventArgs e)
        {

        }

		private void btnLuu_Click(object sender, EventArgs e)
		{

		}

		private void btnThem_Click(object sender, EventArgs e)
		{
			try
			{

				NHANPHONG np = new NHANPHONG();
				CHITETNHANPHONG ctnp = new CHITETNHANPHONG();

				np.MaNhanPhong = txtMaNhanPhong.Text;
				np.MaPhieuDat = maPhieuDat;
				np.MaKhachHang = cbbKhachHang.EditValue.ToString();

				ctnp.MaNhanPhong = txtMaNhanPhong.Text;
				ctnp.MaPhong = maPhong;
				ctnp.HoTenKhachHang = n.LayTenKH(cbbKhachHang.EditValue.ToString());
				ctnp.CMND = txtCMND.Text;
				ctnp.NgayNhan = dtNgayNhan.DateTime;
				ctnp.NgayTraDuKien = ngayTra;

				n.ThemNhanPhong(np, ctnp);
				bltb.Show("Nhận phòng thành công!");
				txtMaNhanPhong.Text = n.LayMaNP();
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex);
				bltb.Show("Lõi!");
			}
		}

		private void frmNhanPhong_Load(object sender, EventArgs e)
		{
			txtMaNhanPhong.Enabled = false;
			dtNgayNhan.EditValue = DateTime.Now;

			cbbKhachHang.Properties.DataSource = d.loadcbbKH();
			cbbKhachHang.Properties.DisplayMember = "TenKhachHang";
			cbbKhachHang.Properties.ValueMember = "MaKhachHang";

			txtMaNhanPhong.Text = n.LayMaNP();
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

			var listpd = n.LayListPhieuDat(cbbKhachHang.EditValue.ToString());

			dtgvPDP.Rows.Clear();
			foreach(var item in listpd)
			{
				dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
			}
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

		private void dtgvPDP_CellClick(object sender, DataGridViewCellEventArgs e)
		{
			try
			{
				int rowSelect = dtgvPDP.CurrentCell.RowIndex;
				var maPd = dtgvPDP.Rows[rowSelect].Cells[0].Value.ToString();

				dtgvCTPD.Rows.Clear();
				var ctdp = n.LayCTDP(maPd);
				dtgvCTPD.Rows.Add(ctdp.MaPhieuDat, ctdp.MaPhong, ctdp.NgayLap, ctdp.NgayNhan, ctdp.NgayTra, ctdp.SoNguoi);

				ngayTra = ctdp.NgayTra;
				maPhong = ctdp.MaPhong;
				maPhieuDat = maPd;
			}
			catch(Exception ex)
			{
				Console.WriteLine(ex);
			}
		}

		private void btnXoa_Click(object sender, EventArgs e)
		{
			DialogResult result = MessageBox.Show("Chắc chắn xóa?", "Thông báo!", 
									MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
			if(result == DialogResult.Yes)
			{
				n.XoaPhieuDP(maPhieuDat);

				var listpd = n.LayListPhieuDat(cbbKhachHang.EditValue.ToString());
				dtgvPDP.Rows.Clear();
				foreach (var item in listpd)
				{
					dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
				}
			}
		}

        private void txtMaNhanPhong_EditValueChanged(object sender, EventArgs e)
        {

        }
	}
}