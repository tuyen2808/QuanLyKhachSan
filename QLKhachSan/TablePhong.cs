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
        public static bool flag = false;
        public static string maphong = "";
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
                        btn.BackColor = Color.BlueViolet;
                        btn.Click += new EventHandler(sukienclick3);
                        break;
                }
                flowLayoutPanel1.Controls.Add(btn);
            }
        }
        private void TablePhong_Load(object sender, EventArgs e)
        {
            cbbLoaiDV.DataSource = dal_dv.LayLoaiDV();
            cbbLoaiDV.DisplayMember = "Tên Loại Dịch Vụ";
            cbbLoaiDV.ValueMember = "Mã Loại Dịch Vụ";
            var listP = n.loadcbbP();
            cbbPhongDoi.DataSource = listP;
            cbbPhongDoi.DisplayMember = "GhiChu";
            cbbPhongDoi.ValueMember = "MaPhong";
        }
        private void sukienclick(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            maphong = btn.Name;
            flag = false;
            frmNhanPhong frm = new frmNhanPhong();
            frm.Show();
            this.Hide();
        }
        
        private void sukienclick2(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            maphong = btn.Name;
            flag = true;
            frmNhanPhong frm = new frmNhanPhong();
            frm.Show();
            this.Hide();
        }

        private void sukienclick3(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            txtPCD.Text = btn.Text;
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

        private void textBox1_TextChanged(object sender, EventArgs e)
        {


        }
    }
}
