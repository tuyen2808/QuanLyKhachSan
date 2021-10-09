using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyKhachSan.BSlayer
{
    class BLThongBao
    {
        public void Show(string ss)
        {
            QLKhachSan.MessageBoxThongBao msg = new QLKhachSan.MessageBoxThongBao();
            msg.ThongBao = ss;
            msg.ShowDialog();
        }
    }
}
