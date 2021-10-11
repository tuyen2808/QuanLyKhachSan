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
                //btn.Click +=btn_Click;
                //btn.Tag = item;
                switch (item.MaLoaiTinhTrangPhong1)
                {
                    case "TT01":
                        btn.BackColor = Color.LightGreen;
                        break;

                    case "TT02":
                        btn.BackColor = Color.Aqua;
                        break;
                    default:
                        btn.BackColor = Color.BlueViolet;
                        break;
                }
                flowLayoutPanel1.Controls.Add(btn);
            }
        }
        private void TablePhong_Load(object sender, EventArgs e)
        {

        }
    }
}
