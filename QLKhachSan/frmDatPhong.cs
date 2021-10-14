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
        String MaPhong;
        public frmDatPhong()
        {
            InitializeComponent();
            
        }
        public String NhanMaPhong
        {
            get {return MaPhong;}

            set { MaPhong = value;}
        }

        DAL_DatPhong d = new DAL_DatPhong();
        BLThongBao bltb = new BLThongBao();
        public string maphong { get; set; }
        public string madatphong { get; set; }
        public string maKhachHang { get; set; }
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
            txtTenKH.ResetText();

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
            

            //cbbKhachHang.Properties.DataSource = d.loadcbbKH();
            //cbbKhachHang.Properties.DisplayMember = "TenKhachHang";
            //cbbKhachHang.Properties.ValueMember = "MaKhachHang";


            
            txtPhong.Text = MaPhong;

			dtNgayTao.EditValue = DateTime.Now;
            dtNgayNhan.EditValue = DateTime.Now;
            dtNgayTra.EditValue = DateTime.Now;
            txtMaDP.Text = d.LayMaDP();

            

        }

        private void cbbKhachHang_EditValueChanged(object sender, EventArgs e)
        {
            //txtSDT.Text = d.LaySDTKH(cbbKhachHang.EditValue.ToString());
            //txtDiaChi.Text = d.LayDCKH(cbbKhachHang.EditValue.ToString());
            //txtNgaySinh.Text = d.LayNgaySinh(cbbKhachHang.EditValue.ToString());
            //txtQuocTich.Text = d.LayQuocTich(cbbKhachHang.EditValue.ToString());
            //txtCMND.Text = d.LaySoCMND(cbbKhachHang.EditValue.ToString());
            //if (d.LayGTKH(cbbKhachHang.EditValue.ToString()) == "Nam")
            //    rdoNam.Checked = true;
            //else
            //    rdoNu.Checked = true;
         
        }

        private void txtSDT_EditValueChanged(object sender, EventArgs e)
        {
            //cbbKhachHang.EditValue = d.LayMaKH(txtSDT.Text);
            
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }

		private void cbbPhong_EditValueChanged(object sender, EventArgs e)
		{
			maphong = txtPhong.EditValue.ToString();
		}

		private void btnXacNhan_Click(object sender, EventArgs e)
        {
			try
			{
				var phieuDP = new PHIEUDATPHONG();
				var chiTietDP = new CHITIETDATPHONG();

				phieuDP.MaPhieuDat = txtMaDP.Text;
                phieuDP.MaKhachHang = maKhachHang; ;

				chiTietDP.MaPhieuDat = txtMaDP.Text;
                chiTietDP.MaPhong = txtPhong.Text;
				chiTietDP.NgayLap = dtNgayTao.DateTime;
				chiTietDP.NgayNhan = dtNgayNhan.DateTime;
				chiTietDP.NgayTra = dtNgayTra.DateTime;
				chiTietDP.SoNguoi = Convert.ToInt32(numericUpDown1.Value);

				d.ThemPD(phieuDP, chiTietDP);
				bltb.Show("Thêm Phiếu Thành Công!");
                var listpd = d.LayListPhieuDat(maKhachHang);
                dtgvPDP.Rows.Clear();
                foreach (var item in listpd)
                {
                    dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
                }
			}
			catch(Exception ex)
			{
				Console.WriteLine(ex);
				bltb.Show("Lỗi !");
			}

            
		}

        private void dtNgayTra_DateTimeChanged(object sender, EventArgs e)
        {
            if(dtNgayTra.DateTime < dtNgayNhan.DateTime){
                bltb.Show("Ngày tả phải lớn hơn ngày nhận");
            }
        }

        private void dtgvPDP_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnTimKH_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtSDT.Text))
            {
                var khachHang = d.LayThongTinKhachHang(txtSDT.Text);
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


                    var listpd = d.LayListPhieuDat(maKhachHang);
                    dtgvPDP.Rows.Clear();
                    foreach (var item in listpd)
                    {
                        dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
                    }
                    dtgvPDP.ClearSelection();
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

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Chắc chắn xóa?", "Thông báo!",
                                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (result == DialogResult.Yes)
            {
                d.XoaPhieuDP(madatphong);
                var listpd = d.LayListPhieuDat(maKhachHang);
                dtgvPDP.Rows.Clear();
                foreach (var item in listpd)
                {
                    dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
                }
            }
        }

        private void dtgvPDP_Click(object sender, EventArgs e)
        {

        }

        private void dtgvPDP_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            madatphong = dtgvPDP.SelectedRows[0].Cells[0].Value.ToString();
        }

	}
}