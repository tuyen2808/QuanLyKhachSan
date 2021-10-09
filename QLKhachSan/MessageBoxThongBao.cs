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
    public partial class MessageBoxThongBao : DevExpress.XtraEditors.XtraForm
    {
        public MessageBoxThongBao()
        {
            InitializeComponent();
        }
        public string ThongBao { get; set; }
        private void btnOke_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void MessageBoxThongBao_Load(object sender, EventArgs e)
        {
            lblThongBao.Text = ThongBao;
        }
    }
}