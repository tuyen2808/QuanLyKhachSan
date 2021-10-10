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
    public partial class Table_Phong : Form
    {
        public Table_Phong()
        {
            InitializeComponent();
            loadtable();
            loadtable2();
            loadtable3();
            loadtable4();
            loadtable5();
            loadtable6();
            loadtable7();
        }
        void loadtable()
        {
            List<Table> tablelist = TableDAO.Instance.loadtablelist1();

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
        void loadtable2()
        {
            List<Table> tablelist2 = TableDAO.Instance.loadtablelist2();

            foreach (Table item in tablelist2)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
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
                flowLayoutPanel2.Controls.Add(btn);
            }
        }
        void loadtable3()
        {
            List<Table> tablelist3 = TableDAO.Instance.loadtablelist3();

            foreach (Table item in tablelist3)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
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
                flowLayoutPanel3.Controls.Add(btn);
            }
        }
        void loadtable4()
        {
            List<Table> tablelist4 = TableDAO.Instance.loadtablelist4();

            foreach (Table item in tablelist4)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
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
                flowLayoutPanel4.Controls.Add(btn);
            }
        }
        void loadtable5()
        {
            List<Table> tablelist5 = TableDAO.Instance.loadtablelist5();

            foreach (Table item in tablelist5)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
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
                flowLayoutPanel5.Controls.Add(btn);
            }
        }
        void loadtable6()
        {
            List<Table> tablelist6 = TableDAO.Instance.loadtablelist6();

            foreach (Table item in tablelist6)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
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
                flowLayoutPanel6.Controls.Add(btn);
            }
        }
        void loadtable7()
        {
            List<Table> tablelist7 = TableDAO.Instance.loadtablelist7();

            foreach (Table item in tablelist7)
            {
                Button btn = new Button() { Width = TableDAO.TableWidth, Height = TableDAO.TableHeight };
                btn.Text = item.GhiChu1;
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
                flowLayoutPanel7.Controls.Add(btn);
            }
        }
        private void Table_Phong_Load(object sender, EventArgs e)
        {

        }
    }
}
