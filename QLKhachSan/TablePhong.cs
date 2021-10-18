using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyKhachSan.BSlayer;
using DAL_KhachSan;


namespace QLKhachSan
{
    public partial class TablePhong : Form
    {
        DAL_DichVu dal_dv = new DAL_DichVu();
        DAL_NhanPhong n = new DAL_NhanPhong();
        DAL_Phong p = new DAL_Phong();
        BLThongBao bltb = new BLThongBao();
        public static bool flag = false;
        public static string maphong = "";
        string manhanphong = "";
        string masudungdichvu = "";
        int thoigian = 0;
        public TablePhong()
        {
            InitializeComponent();
            loadtable();
        }

        void loadtable()
        {
            List<Table> tablelist = TableDAO.Instance.loadtablelist();

            foreach (Table item in tablelist)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
                btn.Name = item.MaPhong1;
               

                //btn.Click +=btn_Click;
                //btn.Tag = item;
                switch (item.MaLoaiTinhTrangPhong1)
                {
                    case "TT01":
                        btn.BackColor = Color.LightGreen;
                        btn.Click += new EventHandler(sukienclick);
                        break;

                    case "TT02":
                        btn.BackColor = Color.Aqua;
                        btn.Click += new EventHandler(sukienclick2);
                        break;
                    default:
                        if (p.layNgayTraDuKien(item.MaPhong1).Date >= DateTime.Now.Date)
                        {
                            btn.BackColor = Color.BlueViolet;
                            btn.Click += new EventHandler(sukienclick3);
                            break;
                        }
                        else
                        {
                            btn.BackColor = Color.Red;
                            btn.Click += new EventHandler(sukienclick3);
                            break;
                        }
                }
                flowLayoutPanel1.Controls.Add(btn);
                lbKH.Text = "";
                lbNN.Text = "";
                lbNT.Text = "";
                lbTG.Text = "";
                lbPhong.Text = "0";
                lbDichVu.Text = "0";
                lbThanhTien.Text = "0";
            }
        }

        public void load()
        {
            btnGiaHan.Enabled = false;
            btnThemDV.Enabled = false;
            btnDoiPhong.Enabled = false;
            btnThanhToan.Enabled = false;
            txtPCD.Text = "";
            flowLayoutPanel1.Controls.Clear();
            loadtable();
            while (gridDV.Rows.Count > 0)
            {
                gridDV.Rows.RemoveAt(gridDV.Rows[0].Index);
            }
            cbbPhongDoi.DataSource = null;
            ktra();
        }

        private void TablePhong_Load(object sender, EventArgs e)
        {
            cbbLoaiDV.DataSource = dal_dv.LayLoaiDV();
            cbbLoaiDV.DisplayMember = "Tên Loại Dịch Vụ";
            cbbLoaiDV.ValueMember = "Mã Loại Dịch Vụ";
            ktra();
        }

        public void laythongtin()
        {
            try
            {
                DataTable dt = p.ThongTinPhong(maphong);
                double time = Convert.ToDouble((DateTime.Now - DateTime.Parse(dt.Rows[0]["Ngày nhận"].ToString())).TotalHours.ToString());
                thoigian = int.Parse(Math.Round(time, 0).ToString());
                lbKH.Text = dt.Rows[0]["Khách hàng"].ToString();
                lbNN.Text = dt.Rows[0]["Ngày nhận"].ToString();
                lbNT.Text = dt.Rows[0]["Ngày trả dự kiến"].ToString();
                lbTG.Text = Math.Round(time, 0).ToString() + "h";
                lbPhong.Text = dt.Rows[0]["Tiền phòng"].ToString();
                lbDichVu.Text = dt.Rows[0]["Tiền dịch vụ"].ToString();
                lbThanhTien.Text = dt.Rows[0]["Thành tiền"].ToString();
            }
            catch
            {
                DataTable dt = p.ThongTinPhong(maphong);
                double time = Convert.ToDouble((DateTime.Now - DateTime.Parse(dt.Rows[0]["Ngày nhận"].ToString())).TotalHours.ToString());
                thoigian = int.Parse(Math.Round(time, 0).ToString());
                lbKH.Text = dt.Rows[0]["Khách hàng"].ToString();
                lbNN.Text = dt.Rows[0]["Ngày nhận"].ToString();
                lbNT.Text = dt.Rows[0]["Ngày trả dự kiến"].ToString();
                lbTG.Text = Math.Round(time, 0).ToString() + "h";
                lbPhong.Text = dt.Rows[0]["Tiền phòng"].ToString();
                lbThanhTien.Text = dt.Rows[0]["Thành tiền"].ToString();
                lbDichVu.Text = "0";
            }
        }

        public void ktra()
        {
            if (gridDV.Rows.Count > 0)
            {
                xoáToolStripMenuItem.Enabled = true;
                cậpNhậtToolStripMenuItem.Enabled = true;
            }
            else
            {
                xoáToolStripMenuItem.Enabled = false;
                cậpNhậtToolStripMenuItem.Enabled = false;
            }
        }

        private void sukienclick(object sender, EventArgs e)
        {
            load();
            btnThemDV.Enabled = false;
            btnDoiPhong.Enabled = false;
            btnThanhToan.Enabled = false;
            Button btn = (Button)sender;
            maphong = btn.Name;
            flag = false;
            frmNhanPhong frm = new frmNhanPhong();
            frm.Show();
            this.Hide();
        }

        private void sukienclick2(object sender, EventArgs e)
        {
            load();
            btnThemDV.Enabled = false;
            btnDoiPhong.Enabled = false;
            btnThanhToan.Enabled = false;
            Button btn = (Button)sender;
            maphong = btn.Name;
            flag = true;
            frmNhanPhong frm = new frmNhanPhong();
            frm.Show();
            this.Hide();
        }

        public void loadPhong()
        {
            var listP = p.loadPhongTrong(maphong);
            cbbPhongDoi.DataSource = listP;
            cbbPhongDoi.DisplayMember = "GhiChu";
            cbbPhongDoi.ValueMember = "MaPhong";
        }

        private void sukienclick3(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            if (btn.BackColor == Color.Red)
            {
                btnGiaHan.Enabled = true;
            }
            else { btnGiaHan.Enabled = false; }
            txtPCD.Text = btn.Text;
            maphong = btn.Name;
            manhanphong = n.laymanhanphong(maphong);
            btnThemDV.Enabled = true;
            btnDoiPhong.Enabled = true;
            btnThanhToan.Enabled = true;
            masudungdichvu = dal_dv.laymasudung(manhanphong);
            laythongtin();
            loadPhong();
            
            try { gridDV.DataSource = dal_dv.LayListSDDV(masudungdichvu); }
            catch { }
            ktra();
        }

        private void cbbLoaiDV_SelectedValueChanged(object sender, EventArgs e)
        {
            try
            {
                cbbDV.DataSource = dal_dv.LayDVTheoLoai(cbbLoaiDV.SelectedValue.ToString());
                cbbDV.DisplayMember = "Tên Dịch Vụ";
                cbbDV.ValueMember = "Mã Dịch Vụ";
            }
            catch { }
        }

        private void txtSL_ValueChanged(object sender, EventArgs e)
        {
            if (txtSL.Value <= 0)
            {
                txtSL.Value = 1;
            }
        }

        
        private void btn_Load_Click(object sender, EventArgs e)
        {
            load();
        }

        private void btnThemDV_Click(object sender, EventArgs e)
        {
            DANHSACHSUDUNGDICHVU dv = new DANHSACHSUDUNGDICHVU();
            SUDUNGDICHVU sd = new SUDUNGDICHVU();
            dv.MaSuDungDichVu = dal_dv.LayMaSDDV();
            dv.MaNhanPhong = manhanphong;


            sd.MaDichVu = cbbDV.SelectedValue.ToString();
            sd.SoLuong = int.Parse(txtSL.Value.ToString());

            if (masudungdichvu == null)
            {
                sd.MaSuDungDichVu = dv.MaSuDungDichVu;
                dal_dv.ThemDSDV(dv, sd);
            }
            else
            {
                sd.MaSuDungDichVu = masudungdichvu;
                dal_dv.themSDDV(sd);
            }
            load();
        }

        private void btnDoiPhong_Click(object sender, EventArgs e)
        {
            while (gridDV.Rows.Count > 0)
            {
                gridDV.Rows.RemoveAt(gridDV.Rows[0].Index);
            }
            p.DoiPhong(maphong, cbbPhongDoi.SelectedValue.ToString());
            txtPCD.Text = "";
            flowLayoutPanel1.Controls.Clear();
            loadtable();
            cbbPhongDoi.DataSource = null;
        }

        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            if (p.thanhtoan(maphong, thoigian) == true)
            {
                bltb.Show("Số tiền cần thanh toán "+lbThanhTien.Text);
                load();
                cbbPhongDoi.DataSource = null;
            }
        }

        private void xoáToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string madv = dal_dv.laymadv(gridDV.CurrentRow.Cells[0].Value.ToString());
            dal_dv.xoaDV(madv, masudungdichvu);
            load();
        }

        private void cậpNhậtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string madv = dal_dv.laymadv(gridDV.CurrentRow.Cells[0].Value.ToString());
            int soluong = int.Parse(gridDV.CurrentRow.Cells[1].Value.ToString());
            dal_dv.suaDV(madv, masudungdichvu,soluong);
            load();
        }

        private void btnGiaHan_Click(object sender, EventArgs e)
        {
            p.giahan(maphong);
            load();
        }


    }
}
