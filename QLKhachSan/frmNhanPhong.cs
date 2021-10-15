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
        bool flag = TablePhong.flag;
        string maphong = TablePhong.maphong;
        DAL_NhanPhong n = new DAL_NhanPhong();
        DAL_DatPhong d = new DAL_DatPhong();
        BLThongBao bltb = new BLThongBao();

        public string maPhieuDat { get; set; }
        public string maPhieuNhan { get; set; }
        public string maPhong { get; set; }
        public string maKhachHang { get; set; }
        public DateTime? ngayTra { get; set; }
        public frmNhanPhong()
        {
            InitializeComponent();
        }
        public bool kiemtra()
        {
            if (n.LayThongTinKhachHang(txtSDT.Text) == null)
            {
                return false;
            }
            return true;
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                if (flag == false && kiemtra() == true)
                {
                    NHANPHONG np = new NHANPHONG();
                    CHITETNHANPHONG ctnp = new CHITETNHANPHONG();
                    PHIEUDATPHONG dp = new PHIEUDATPHONG();
                    CHITIETDATPHONG ctdp = new CHITIETDATPHONG();
                    ////
                    dp.MaPhieuDat = d.LayMaDP();
                    dp.MaKhachHang = n.LayThongTinKhachHang(txtSDT.Text).MaKhachHang;

                    ctdp.MaPhieuDat = dp.MaPhieuDat;
                    ctdp.MaPhong = cbbChonPhong.SelectedValue.ToString();
                    ctdp.NgayLap = dtNgayNhan.DateTime;
                    ctdp.NgayNhan = dtNgayNhan.DateTime;
                    ctdp.SoNguoi = int.Parse(txtSL.Value.ToString());
                    ctdp.NgayTra = null;
                    if (d.ThemDP(dp, ctdp) == true)
                    {
                        ////
                        np.MaNhanPhong = txtMaNhanPhong.Text;
                        np.MaPhieuDat = dp.MaPhieuDat;
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

                        var listPn = n.LayListPhieuNhan(maKhachHang);
                        dtgvPNP.Rows.Clear();
                        foreach (var item in listPn)
                        {
                            dtgvPNP.Rows.Add(item.MaNhanPhong, item.MaPhieuDat, item.MaKhachHang);
                        }
                    }
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
            if (flag == false)
            {
                txtMaNhanPhong.Enabled = false;
                dtNgayNhan.EditValue = DateTime.Now;
                dtNgaytradukien.EditValue = DateTime.Now;

                txtMaNhanPhong.Text = n.LayMaNP();

                var listP = n.loadcbbP();
                cbbChonPhong.DataSource = listP;
                cbbChonPhong.DisplayMember = "GhiChu";
                cbbChonPhong.ValueMember = "MaPhong";
                cbbChonPhong.SelectedValue = maphong;
            }
            else
            {
                var khachHang = n.LayDSDatPhong(maphong);
                if (khachHang != null)
                {
                    maKhachHang = khachHang.MaKhachHang;
                    txtSDT.Text = khachHang.DienThoai;
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
                    this.Close();
                }
                txtTenKH.Enabled = false;
                txtDiaChi.Enabled = false;
                txtSDT.Enabled = false;
                txtNgaySinh.Enabled = false;
                txtQuocTich.Enabled = false;
                txtCMND.Enabled = false;
                rdoNam.Enabled = false;
                rdoNu.Enabled = false;
                txtMaNhanPhong.Enabled = false;
                dtNgayNhan.Enabled = false;
                dtNgayNhan.EditValue = DateTime.Now;
                dtNgaytradukien.EditValue = DateTime.Now;

                txtMaNhanPhong.Text = n.LayMaNP();

                var listP = n.loadcbbP();
                cbbChonPhong.DataSource = listP;
                cbbChonPhong.DisplayMember = "GhiChu";
                cbbChonPhong.ValueMember = "MaPhong";
                cbbChonPhong.SelectedValue = maphong;
            }
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

        private void dtgvPNP_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int rowSelect = dtgvPDP.CurrentCell.RowIndex;
            var maPn = dtgvPNP.Rows[rowSelect].Cells[0].Value.ToString();
            maPhieuNhan = maPn;
        }

        private void btnTimKH_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtSDT.Text) && txtSDT.Text.Length >= 10)
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
                    if (MessageBox.Show("Bạn có muốn thêm thông tin khách hàng?", "Không tìm thấy khách hàng!", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2) == DialogResult.No)
                    {
                        txtSDT.ResetText();
                    }
                    else
                    {
                        new frmQLKhachHang().Show();
                    }
                }
            }
            else
            {
                MessageBox.Show("Bạn chưa nhập số điện thoại! Hoặc nhập chưa đúng!", "Thông báo");
            }
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dtNgaytradukien_EditValueChanged(object sender, EventArgs e)
        {
            if (DateTime.Parse(dtNgaytradukien.Text).Date < DateTime.Now.Date)
            {
                MessageBox.Show("Ngày trả không thoả điều kiện!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                dtNgaytradukien.EditValue = DateTime.Now;
            }
        }

        private void txtSDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void frmNhanPhong_FormClosed(object sender, FormClosedEventArgs e)
        {
            Program.phong.Show();
        }

        private void txtSL_ValueChanged(object sender, EventArgs e)
        {
            if (txtSL.Value <= 0)
            {
                txtSL.Value = 1;
            }
        }

    }

}