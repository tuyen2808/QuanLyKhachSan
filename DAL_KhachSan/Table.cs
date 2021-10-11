using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL_KhachSan
{
    public class Table
    {
        public Table(string MaPhong, string MaLoaiPhong, string MaLoaiTinhTrangPhong, string Tang, string DienTich, string GhiChu)
        {
            this.MaPhong1 = MaPhong;
            this.MaLoaiPhong1 = MaLoaiPhong;
            this.MaLoaiTinhTrangPhong1 = MaLoaiTinhTrangPhong;
            this.Tang1 = Tang;
            this.DienTich1 = DienTich;
            this.GhiChu1 = GhiChu;
        }
        public Table(DataRow row)
        {
            this.MaPhong1 = row["MaPhong"].ToString();
            this.MaLoaiPhong1 = row["MaLoaiPhong"].ToString();
            this.MaLoaiTinhTrangPhong1 = row["MaLoaiTinhTrangPhong"].ToString();
            this.Tang1 = row["Tang"].ToString();
            this.DienTich1 = row["DienTich"].ToString();
            this.GhiChu1 = row["GhiChu"].ToString();
        }

        private string GhiChu;

        public string GhiChu1
        {
            get { return GhiChu; }
            set { GhiChu = value; }
        }
        private string DienTich;

        public string DienTich1
        {
            get { return DienTich; }
            set { DienTich = value; }
        }
        private string Tang;

        public string Tang1
        {
            get { return Tang; }
            set { Tang = value; }
        }

        private string MaLoaiTinhTrangPhong;

        public string MaLoaiTinhTrangPhong1
        {
            get { return MaLoaiTinhTrangPhong; }
            set { MaLoaiTinhTrangPhong = value; }
        }

        string MaLoaiPhong;

        public string MaLoaiPhong1
        {
            get { return MaLoaiPhong; }
            set { MaLoaiPhong = value; }
        }
        private string MaPhong;

        public string MaPhong1
        {
            get { return MaPhong; }
            set { MaPhong = value; }
        }
    }
}
