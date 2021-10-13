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
        public string maPhieuNhan { get; set; }
        public string maPhong { get; set; }
        public string maKhachHang { get; set; }
        public DateTime? ngayTra { get; set; }
        String MaPhong;
        public String NhanMaPhong
        {
            get { return MaPhong; }

            set { MaPhong = value; }
        }
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
                np.MaKhachHang = maKhachHang;

                ctnp.MaNhanPhong = txtMaNhanPhong.Text;
                ctnp.MaPhong = maPhong != null ? maPhong : cbbChonPhong.SelectedValue.ToString();
                ctnp.NgayNhan = dtNgayNhan.DateTime;
                ctnp.NgayTraDuKien = dtNgaytradukien.DateTime;
                ctnp.NgayTraThucTe = null;

                n.ThemNhanPhong(np, ctnp);
                bltb.Show("Nhận phòng thành công!");
                txtMaNhanPhong.Text = n.LayMaNP();

                dtNgaytradukien.EditValue = DateTime.Now;
                dtNgaytrathucte.EditValue = DateTime.Now;

                var listPn = n.LayListPhieuNhan(maKhachHang);
                dtgvPNP.Rows.Clear();
                foreach (var item in listPn)
                {
                    dtgvPNP.Rows.Add(item.MaNhanPhong, item.MaPhieuDat, item.MaKhachHang);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                bltb.Show("Lõi!");
            }
		}

		private void frmNhanPhong_Load(object sender, EventArgs e)
		{
            dtNgaytrathucte.Enabled = false;
            txtMaNhanPhong.Enabled = false;
            dtNgayNhan.EditValue = DateTime.Now;
            dtNgaytradukien.EditValue = DateTime.Now;
            dtNgaytrathucte.EditValue = DateTime.Now;

            txtMaNhanPhong.Text = n.LayMaNP();

            var listP = n.loadcbbP();
            cbbChonPhong.DataSource = listP;
            cbbChonPhong.DisplayMember = "MaPhong";
            cbbChonPhong.ValueMember = "MaPhong";
            cbbChonPhong.Text = "Chọn phòng";
		}

		private void cbbKhachHang_EditValueChanged(object sender, EventArgs e)
		{
			
		}

		private void btnThemKH_Click(object sender, EventArgs e)
		{
            frmQLKhachHang qlncc = new frmQLKhachHang();
            qlncc.ShowDialog();
            qlncc.Hide();
            txtTenKH.ResetText();

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
                cbbChonPhong.Enabled = false;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
		}

		private void btnXoa_Click(object sender, EventArgs e)
		{
            DialogResult result = MessageBox.Show("Chắc chắn xóa?", "Thông báo!",
                                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (result == DialogResult.Yes)
            {
                n.XoaPhieuNP(maPhieuNhan);

                var listpn = n.LayListPhieuNhan(maKhachHang);
                dtgvPNP.Rows.Clear();
                foreach (var item in listpn)
                {
                    dtgvPNP.Rows.Add(item.MaNhanPhong, item.MaPhieuDat, item.MaKhachHang);
                }
            }
		}

        private void txtMaNhanPhong_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void dtgvPNP_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int rowSelect = dtgvPDP.CurrentCell.RowIndex;
            var maPn = dtgvPNP.Rows[rowSelect].Cells[0].Value.ToString();
            maPhieuNhan = maPn;
        }

        private void btnTimKH_Click(object sender, EventArgs e)
        {
            if(!String.IsNullOrEmpty(txtSDT.Text))
			{
				var khachHang = n.LayThongTinKhachHang(txtSDT.Text);
				if (khachHang != null)
				{
					maKhachHang = khachHang.MaKhachHang;
					txtTenKH.Text = khachHang.TenKhachHang;
					txtCMND.Text = khachHang.CMND;
					if (khachHang.GioiTinh == "Nam")
					{
						rdoNam.Checked = true;
					}
					else
					{
						rdoNu.Checked = true;
					}
					txtNgaySinh.Text = khachHang.NgaySinh.ToString();
					txtDiaChi.Text = khachHang.DiaChi;
					txtQuocTich.Text = khachHang.QuocTich;

					cbbChonPhong.Enabled = true;

					var listpd = n.LayListPhieuDat(maKhachHang);
					dtgvPDP.Rows.Clear();
					foreach (var item in listpd)
					{
						dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
					}

					var listPn = n.LayListPhieuNhan(maKhachHang);
					dtgvPNP.Rows.Clear();
					foreach (var item in listPn)
					{
						dtgvPNP.Rows.Add(item.MaNhanPhong, item.MaPhieuDat, item.MaKhachHang);
					}
				}
				else
				{
					MessageBox.Show("Không tìm thấy khách hàng!");
					txtSDT.ResetText();
				}
			}
			else
			{
				MessageBox.Show("Bạn chưa nhập số điện thoại!");
			}
		}

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnXoa_Click_1(object sender, EventArgs e)
        {

        }

       }
	
}