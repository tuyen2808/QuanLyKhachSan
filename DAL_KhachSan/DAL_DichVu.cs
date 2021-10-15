using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_KhachSan
{
    public class DAL_DichVu : ConText
    {
        public DataTable LayLoaiDV()
        {
            var dv = from p in qlks.LOAIDICHVUs
                     select p;
            DataTable dt = new DataTable();
            dt.Columns.Add("Mã Loại Dịch Vụ");
            dt.Columns.Add("Tên Loại Dịch Vụ");
            foreach (var dv1 in dv)
            {
                dt.Rows.Add(dv1.MaLoaiDichVu,dv1.TenLoaiDichVu);
            }
            return dt;
        }
        public DataTable LayDVTheoLoai(string maloai)
        {
            var dv = qlks.DICHVUs.Where(x=>x.MaLoaiDichVu==maloai);
            DataTable dt = new DataTable();
            dt.Columns.Add("Mã Dịch Vụ");
            dt.Columns.Add("Mã Loại Dịch Vụ");
            dt.Columns.Add("Tên Dịch Vụ");
            dt.Columns.Add("Đơn Vị Tính");
            dt.Columns.Add("Đơn Giá");
            foreach (var dv1 in dv)
            {
                dt.Rows.Add(dv1.MaDichVu, dv1.MaLoaiDichVu, dv1.TenDichVu,dv1.DonViTinh,dv1.DonGia);
            }
            return dt;
        }
    }
}
