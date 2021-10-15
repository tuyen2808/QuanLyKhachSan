using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_KhachSan
{
    public class DAL_NhanPhong : ConText
    {
        public List<PHONG> loadcbbP()
        {
            return qlks.PHONGs.Select(t => t).ToList<PHONG>();
        }
        public string LayMaNP()
        {
            int ma = 0;
            var listMa = from p in qlks.NHANPHONGs
                         select new
                         {
                             p.MaNhanPhong
                         };
            foreach (var item in listMa)
            {
                if (ma < int.Parse(item.MaNhanPhong.Substring(2)))
                {
                    ma = int.Parse(item.MaNhanPhong.Substring(2));
                }
            }
            if (ma < 9)
                return "NP00" + (ma + 1).ToString();
            if (ma < 99)
                return "NP0" + (ma + 1).ToString();
            if (ma >= 100)
                return "NP" + (ma + 1).ToString();
            return "NP" + (ma + 1).ToString();
        }
        public List<PHIEUDATPHONG> LayListPhieuDat(string maKH)
        {
            return (from p in qlks.PHIEUDATPHONGs where p.MaKhachHang == maKH select p).ToList();
        }
        public List<NHANPHONG> LayListPhieuNhan(string maKH)
        {
            return (from p in qlks.NHANPHONGs where p.MaKhachHang == maKH select p).ToList();
        }
        public CHITIETDATPHONG LayCTDP(string maPD)
        {
            return (from ct in qlks.CHITIETDATPHONGs where ct.MaPhieuDat == maPD select ct).SingleOrDefault();
        }
        public void ThemNhanPhong(NHANPHONG np, CHITETNHANPHONG ctnp)
        {
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.PHONGs);
            qlks.NHANPHONGs.InsertOnSubmit(np);
            qlks.CHITETNHANPHONGs.InsertOnSubmit(ctnp);
            PHONG p = (from ph in qlks.PHONGs where ph.MaPhong == ctnp.MaPhong select ph).SingleOrDefault();
            if (p != null)
            {
                p.MaLoaiTinhTrangPhong = "TT03";
            }
            qlks.SubmitChanges();
        }
        public string LayTenKH(string maKH)
        {
            string t = "";
            var Ma = (from k in qlks.KHACHHANGs
                      where k.MaKhachHang == maKH
                      select new
                      {
                          k.TenKhachHang
                      }).ToList();
            if (Ma.Count >= 0)
            {
                foreach (var item in Ma)
                {
                    t = item.TenKhachHang;
                }
            }
            return t;
        }
        public KHACHHANG LayThongTinKhachHang(string SDT)
        {
            return qlks.KHACHHANGs.FirstOrDefault(x => x.DienThoai == SDT);
        }
        public void XoaPhieuNP(string maPN)
        {
            var itemRemove = qlks.NHANPHONGs.SingleOrDefault(x => x.MaNhanPhong == maPN);

            if (itemRemove != null)
            {
                qlks.CHITETNHANPHONGs.DeleteAllOnSubmit(itemRemove.CHITETNHANPHONGs);
                qlks.NHANPHONGs.DeleteOnSubmit(itemRemove);
                qlks.SubmitChanges();
            }
        }

        public KHACHHANG LayDSDatPhong(string maphong)
        {
            try
            {
                CHITIETDATPHONG dsctdp = qlks.CHITIETDATPHONGs.Where(x => x.MaPhong == maphong).Where(x => x.NgayTra == null || x.NgayTra.Value > DateTime.Now).FirstOrDefault();
                PHIEUDATPHONG dsdp = qlks.PHIEUDATPHONGs.SingleOrDefault(x => x.MaPhieuDat == dsctdp.MaPhieuDat);
                KHACHHANG kh = qlks.KHACHHANGs.SingleOrDefault(x => x.MaKhachHang == dsdp.MaKhachHang);
                return kh;
            }
            catch { }
            return null;
        }
    }
}
