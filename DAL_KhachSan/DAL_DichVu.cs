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

        public string LayMaSDDV()
        {
            int ma = 0;
            var listMa = from p in qlks.DANHSACHSUDUNGDICHVUs
                         select new
                         {
                             p.MaSuDungDichVu
                         };
            foreach (var item in listMa)
            {
                if (ma < int.Parse(item.MaSuDungDichVu.Substring(4)))
                {
                    ma = int.Parse(item.MaSuDungDichVu.Substring(4));
                }
            }
            if (ma < 9)
                return "DSDV00" + (ma + 1).ToString();
            if (ma < 99)
                return "DSDV0" + (ma + 1).ToString();
            if (ma >= 100)
                return "DSDV" + (ma + 1).ToString();
            return "DSDV" + (ma + 1).ToString();
        }

        public DataTable LayListSDDV(string maSDDV)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Tên hàng");
            dt.Columns.Add("SL");
            dt.Columns.Add("Đơn giá");
            try
            {
                List<SUDUNGDICHVU> sd = qlks.SUDUNGDICHVUs.Where(x => x.MaSuDungDichVu == maSDDV).ToList();
                foreach (var sd1 in sd)
                {
                    dt.Rows.Add(qlks.DICHVUs.SingleOrDefault(x => x.MaDichVu == sd1.MaDichVu).TenDichVu, sd1.SoLuong, qlks.DICHVUs.SingleOrDefault(x => x.MaDichVu == sd1.MaDichVu).DonGia);
                }
            }
            catch { }
            return dt;
        }

        public void ThemDSDV(DANHSACHSUDUNGDICHVU DS, SUDUNGDICHVU SD)
        {
            qlks.DANHSACHSUDUNGDICHVUs.InsertOnSubmit(DS);
            qlks.SubmitChanges();
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.DANHSACHSUDUNGDICHVUs);
            qlks.SUDUNGDICHVUs.InsertOnSubmit(SD);
            qlks.SubmitChanges();
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.SUDUNGDICHVUs);
        }

        public void themSDDV(SUDUNGDICHVU SD)
        {
            if (qlks.SUDUNGDICHVUs.SingleOrDefault(x => x.MaSuDungDichVu == SD.MaSuDungDichVu && x.MaDichVu == SD.MaDichVu) == null)
            {
                qlks.SUDUNGDICHVUs.InsertOnSubmit(SD);
                qlks.SubmitChanges();
                qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.DANHSACHSUDUNGDICHVUs);
                qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.SUDUNGDICHVUs);
            }
            else
            {
                SUDUNGDICHVU sd = qlks.SUDUNGDICHVUs.SingleOrDefault(x => x.MaSuDungDichVu == SD.MaSuDungDichVu && x.MaDichVu == SD.MaDichVu);
                sd.SoLuong = sd.SoLuong + SD.SoLuong;
                qlks.SubmitChanges();
                qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.DANHSACHSUDUNGDICHVUs);
                qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.SUDUNGDICHVUs);
            }
        }
        public string laymadv(string tendv)
        {
            return qlks.DICHVUs.SingleOrDefault(x => x.TenDichVu == tendv).MaDichVu;
        }
        public void xoaDV(string madv, string masd)
        {
            SUDUNGDICHVU sd = qlks.SUDUNGDICHVUs.SingleOrDefault(x => x.MaSuDungDichVu == masd && x.MaDichVu == madv);
            qlks.SUDUNGDICHVUs.DeleteOnSubmit(sd);
            qlks.SubmitChanges();
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.SUDUNGDICHVUs);
        }

        public void suaDV(string madv, string masd, int soluong)
        {
            SUDUNGDICHVU sd = qlks.SUDUNGDICHVUs.SingleOrDefault(x => x.MaSuDungDichVu == masd && x.MaDichVu == madv);
            sd.SoLuong = soluong;
            qlks.SubmitChanges();
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.SUDUNGDICHVUs);
        }

        public string laymasudung(string manhanphong)
        {
            try
            {
                return qlks.DANHSACHSUDUNGDICHVUs.SingleOrDefault(x => x.MaNhanPhong == manhanphong).MaSuDungDichVu.ToString();
            }
            catch { return null; }
        }

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
