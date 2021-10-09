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

namespace QLKhachSan
{
    public partial class MessageBoxYesNo : DevExpress.XtraEditors.XtraForm
    {
        public MessageBoxYesNo()
        {
            InitializeComponent();
        }
        public string Check { get; set; }
        public string ThongBao { get; set; }

        private void MessageBoxYesNo_Load(object sender, EventArgs e)
        {
            lblThongBao.Text = ThongBao;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            Check = "Có";
            this.Hide();
        }

        private void btnKhong_Click(object sender, EventArgs e)
        {
            Check = "Không";
            this.Hide();
        }
    }
}