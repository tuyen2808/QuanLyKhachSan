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
        String MaPhong;// m gọi nhận phòng chi á
        public frmDatPhong()
        {
            InitializeComponent();

        }
        public String NhanMaPhong
        {
            get { return MaPhong; }

            set { MaPhong = value; }
        }

        DAL_DatPhong d = new DAL_DatPhong();
        BLThongBao bltb = new BLThongBao();
        DAL_Phong p = new DAL_Phong();
        public string maphong { get; set; }
        public string madatphong { get; set; }

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

            cbbPhong.DataSource = p.loadPhongTrong();
            cbbPhong.DisplayMember = "GhiChu";
            cbbPhong.ValueMember = "MaPhong";

            //var listpd = d.LayListPhieuDat(cbbKhachHang.Selected.va());

            //dtgvPDP.Rows.Clear();
            //foreach (var item in listpd)
            //{
            //    dtgvPDP.Rows.Add(item.MaPhieuDat, item.MaKhachHang);
            //}

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

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            try
            {
                var phieuDP = new PHIEUDATPHONG();
                var chiTietDP = new CHITIETDATPHONG();

                phieuDP.MaPhieuDat = txtMaDP.Text;
                phieuDP.MaKhachHang = cbbKhachHang.EditValue.ToString();

                chiTietDP.MaPhieuDat = txtMaDP.Text;
                chiTietDP.MaPhong = cbbPhong.SelectedValue.ToString();
                chiTietDP.NgayLap = dtNgayTao.DateTime;
                chiTietDP.NgayNhan = dtNgayNhan.DateTime;
                chiTietDP.NgayTra = null;
                chiTietDP.SoNguoi = Convert.ToInt32(numericUpDown1.Value);

                d.ThemDP(phieuDP, chiTietDP);
                bltb.Show("Thêm Phiếu Thành Công!");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                bltb.Show("Lỗi !");
            }


        }

        private void dtNgayTra_DateTimeChanged(object sender, EventArgs e)
        {
            if (dtNgayTra.DateTime < dtNgayNhan.DateTime)
            {
                bltb.Show("Ngày tả phải lớn hơn ngày nhận");
            }
        }

        private void dtgvPDP_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

    }
}