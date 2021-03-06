using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_KhachSan
{
    public class DAL_DatPhong : ConText
    {
        public List<PHONG> loadcbbP()
        {
            return qlks.PHONGs.Select(t => t).ToList<PHONG>();
        }
        //string MPD, string MKH, string MPhong, string NgayLap, string NgayBD, string NgayKT, string SN
        public bool ThemDP(PHIEUDATPHONG phieuDP, CHITIETDATPHONG chiTietDP)
        {
            try
            {
                qlks.CHITIETDATPHONGs.InsertOnSubmit(chiTietDP);
                qlks.PHIEUDATPHONGs.InsertOnSubmit(phieuDP);
                PHONG p = (from ph in qlks.PHONGs where ph.MaPhong == chiTietDP.MaPhong select ph).SingleOrDefault();
                if (p != null)
                {
                    p.MaLoaiTinhTrangPhong = "TT02";
                }
                qlks.SubmitChanges();
                return true;
            }
            catch { return false; }
        }
        public List<PHIEUDATPHONG> LayListPhieuDat(string maKH)
        {
            return (from p in qlks.PHIEUDATPHONGs where p.MaKhachHang == maKH select p).ToList();
        }

        public string LayMaDP()
        {
            int ma = 0;
            var listMa = from p in qlks.PHIEUDATPHONGs
                         select new
                         {
                             p.MaPhieuDat
                         };
            foreach (var item in listMa)
            {
                if (ma < int.Parse(item.MaPhieuDat.Substring(2)))
                {
                    ma = int.Parse(item.MaPhieuDat.Substring(2));
                }
            }
            if (ma < 9)
                return "DP00" + (ma + 1).ToString();
            if (ma < 99)
                return "DP0" + (ma + 1).ToString();
            if (ma >= 100)
                return "DP" + (ma + 1).ToString();
            return "DP" + (ma + 1).ToString();
        }
        public List<LOAITINHTRANG> LayLoaiTinhTrangPhong(string maLoaiTinhTrangPhong)
        {
            return qlks.LOAITINHTRANGs.ToList();
        }
        //public void XoaPhieuDatPhong(string MaPD)
        //{
        //    var itemToRemove = qlks.PHIEUDATPHONGs.SingleOrDefault(x => x.MaPhieuDat == MaPD); //returns a single item.

        //    if (itemToRemove != null)
        //    {
        //        qlks.PHIEUDATPHONGs.Remove(itemToRemove);
        //        qlks.SaveChanges();
        //    }
        //}
        //public void XoaCTDatPhong(string MaPD, string MaLoaiPhong)
        //{
        //    var itemToRemove = qlks.CHITIETDATPHONGs.SingleOrDefault(x => x.MaPhieuDat == MaPD && x.MaPhong == MaPhong); //returns a single item.

        //    if (itemToRemove != null)
        //    {
        //        qlks.CHITIETDATPHONGs.Remove(itemToRemove);
        //        qlks.SaveChanges();
        //    }
        //}
        //================================= Khách Hàng ========================================
        public List<KHACHHANG> loadcbbKH()
        {
            return qlks.KHACHHANGs.Select(t => t).ToList<KHACHHANG>();
        }
        //public List<KHACHHANG> loadGVDaDat()
        //{
        //    return (from kh in qlks.KHACHHANGs
        //              join dp in qlks.PHIEUDATPHONGs
        //                  on kh.MaKhachHang equals dp.MaKhachHang
        //              select new
        //              {
        //                  kh.MaKhachHang
        //              }).ToList();
        //}

        public string LayMaKH(string SDT)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.DienThoai == SDT
                      select new
                      {
                          p.MaKhachHang
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.MaKhachHang;
            }
            return b;
        }
        public string LayDCKH(string MaKH)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.MaKhachHang == MaKH
                      select new
                      {
                          p.DiaChi
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.DiaChi;
            }
            return b;
        }
        public string LaySoCMND(string MaKH)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.MaKhachHang == MaKH
                      select new
                      {
                          p.CMND
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.CMND;
            }
            return b;
        }
        public string LaySDTKH(string MaKH)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.MaKhachHang == MaKH
                      select new
                      {
                          p.DienThoai
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.DienThoai;
            }
            return b;
        }

        public string LayGTKH(string MaKH)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.MaKhachHang == MaKH
                      select new
                      {
                          p.GioiTinh
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.GioiTinh;
            }
            return b;
        }
        public string LayNgaySinh(string MaKH)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.MaKhachHang == MaKH
                      select new
                      {
                          p.NgaySinh
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.NgaySinh.ToString().Substring(0, 10);
            }
            return b;
        }
        public string LayQuocTich(string MaKH)
        {
            string b = "";
            var Ma = (from p in qlks.KHACHHANGs
                      where p.MaKhachHang == MaKH
                      select new
                      {
                          p.QuocTich
                      }).ToList();
            if (Ma.Count() != 0)
            {
                foreach (var a in Ma)
                    b = a.QuocTich;
            }
            return b;
        }


        

        //================================= Loại Phòng ========================================
        //public string LayGiaLoaiPhong(string MaLoaiPhong)
        //    {
        //        string b = "";
        //        var Ma = (from p in qlks.LOAIPHONG
        //                  where p.MALOAIPHONG == MaLoaiPhong
        //                  select new
        //                  {
        //                      p.DONGIA
        //                  }).ToList();
        //        if (Ma.Count() != 0)
        //        {
        //            foreach (var a in Ma)
        //                b = a.DONGIA.ToString();
        //        }
        //        return b;
        //    }
        //    public string LayTangLP(string MaLoaiPhong)
        //    {
        //        string b = "";
        //        var Ma = (from p in qlks.LOAIPHONG
        //                  join q in qlks.TANG on p.MAKV equals q.MAKV
        //                  where p.MALOAIPHONG == MaLoaiPhong
        //                  select new
        //                  {
        //                      q.TENKV
        //                  }).ToList();
        //        if (Ma.Count() != 0)
        //        {
        //            foreach (var a in Ma)
        //                b = a.TENKV;
        //        }
        //        return b;
        //    }
        //    public string LaySucChua(string MaLoaiPhong)
        //    {
        //        string b = "";
        //        var Ma = (from p in qlks.LOAIPHONG
        //                  where p.MALOAIPHONG == MaLoaiPhong
        //                  select new
        //                  {
        //                      p.SUCCHUA
        //                  }).ToList();
        //        if (Ma.Count() != 0)
        //        {
        //            foreach (var a in Ma)
        //                b = a.SUCCHUA;
        //        }
        //        return b;
        //    }

        //    public string CMND { get; set; }
        //}
    }






}
