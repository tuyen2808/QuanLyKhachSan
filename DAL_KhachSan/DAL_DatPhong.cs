﻿using System;
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
        public void ThemPD(string MPD, string MKH, string MPhong, string NgayLap, string NgayBD, string NgayKT, string SN)
        {
           
            
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