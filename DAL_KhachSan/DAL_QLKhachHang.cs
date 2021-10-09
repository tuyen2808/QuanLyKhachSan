using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL_KhachSan
{
    public class DAL_QLKhachHang:ConText
    {
        public DataTable LayKhachHang()
        {
            var nv = from p in qlks.KHACHHANGs
                     select p;
            DataTable dt = new DataTable();
            dt.Columns.Add("Mã KH");
            dt.Columns.Add("Họ Tên");
            dt.Columns.Add("Số CMND");
            dt.Columns.Add("Giới Tính");
            dt.Columns.Add("Địa Chỉ");
            dt.Columns.Add("SĐT");
            dt.Columns.Add("Ngày Sinh");
            dt.Columns.Add("Quốc Tịch");
            foreach (var nv1 in nv)
            {
                dt.Rows.Add(nv1.MaKhachHang, nv1.TenKhachHang, nv1.CMND, nv1.GioiTinh, nv1.DiaChi, nv1.DienThoai, nv1.NgaySinh, nv1.QuocTich);
            }
            return dt;
        }
        public string LayMaKH()
        {
            int ma = 0;
            var ma1 = from p in qlks.KHACHHANGs
                      select new
                      {
                          p.MaKhachHang
                      };

            foreach (var i in ma1)
            {
                if (ma < int.Parse(i.MaKhachHang.Substring(2)))
                {
                    ma = int.Parse(i.MaKhachHang.Substring(2));
                }
            }
            if (ma < 9)
                return "KH00" + (ma + 1).ToString();
            if (ma < 99)
                return "KH0" + (ma + 1).ToString();
            if (ma >= 100)
                return "KH" + (ma + 1).ToString();
            return "KH" + (ma + 1).ToString();
        }
        public void ThemKH(string MKH, string HT, string CMND,string GT, string DC, string SDT, string NS, string QT)
        {
            DataKhachSanDataContext chung = new DataKhachSanDataContext();
            KHACHHANG nv = new KHACHHANG();
            nv.MaKhachHang = MKH;
            nv.TenKhachHang = HT;
            nv.CMND = CMND;
            nv.GioiTinh = GT;
            nv.DiaChi = DC;
            nv.DienThoai = SDT;
            nv.NgaySinh= DateTime.Parse(NS);
            nv.QuocTich = QT;
            chung.KHACHHANGs.InsertOnSubmit(nv);
            chung.SubmitChanges();
        }

        public void SuaKH(string MKH, string HT, string CMND,string GT, string DC, string SDT, string NS, string QT)
        {
            var nv = (from a in qlks.KHACHHANGs where a.MaKhachHang == MKH select a).SingleOrDefault();
            if (nv != null)
            {
                nv.TenKhachHang = HT;
                nv.CMND = CMND;
                nv.GioiTinh = GT;
                nv.DiaChi = DC;
                nv.DienThoai = SDT;
                nv.NgaySinh= DateTime.Parse(NS);
                nv.QuocTich = QT;
                qlks.SubmitChanges();
            }
        }

        public void XoaKH(string MKH)
        {
            var itemToRemove = qlks.KHACHHANGs.SingleOrDefault(x => x.MaKhachHang == MKH); //returns a single item.

            if (itemToRemove != null)
            {
                qlks.KHACHHANGs.DeleteOnSubmit(itemToRemove);
                qlks.SubmitChanges();
            }
        }
        public DataTable LoadDiaChi()
        {
            var dc = from p in qlks.KHACHHANGs group p by p.DiaChi into g select new { dc = g.Key };
            DataTable dt = new DataTable();
            dt.Columns.Add("Địa Chỉ");
            foreach (var i in dc)
            {
                dt.Rows.Add(i.dc);
            }
            return dt;
        }
        public DataTable LoadGioiTinh()
        {
            var dc = from p in qlks.KHACHHANGs group p by p.GioiTinh into g select new { dc = g.Key };
            DataTable dt = new DataTable();
            dt.Columns.Add("Giới Tính");
            foreach (var i in dc)
            {
                dt.Rows.Add(i.dc);
            }
            return dt;
        }
        public DataTable Loc(string cbbDC, string cbbGT, string txtTKiem)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Mã KH");
            dt.Columns.Add("Họ Tên");
            dt.Columns.Add("Số CMND");
            dt.Columns.Add("Giới Tính");
            dt.Columns.Add("Địa Chỉ");
            dt.Columns.Add("SĐT");
            dt.Columns.Add("Ngày Sinh");
            dt.Columns.Add("Quốc Tịch");
            try
            {
                if (cbbDC == "Tất Cả" && cbbGT == "Tất Cả")
                {
                    try
                    {
                        var tim = (from p in qlks.KHACHHANGs
                                   where p.TenKhachHang.Contains(txtTKiem)
                                   select new
                                   {
                                       p.MaKhachHang,
                                       p.TenKhachHang,
                                       p.CMND,
                                       p.GioiTinh,
                                       p.DiaChi,
                                       p.DienThoai,
                                       p.NgaySinh,
                                       p.QuocTich
                                   }).ToList();


                        foreach (var i in tim)
                        {
                            dt.Rows.Add(i.MaKhachHang, i.TenKhachHang, i.CMND,i.GioiTinh, i.DiaChi, i.DienThoai,  i.NgaySinh, i.QuocTich);
                        }
                    }
                    catch
                    {

                    }

                }
                else if (cbbDC == "Tất Cả" && cbbGT != "Tất Cả")
                {
                    try
                    {
                        var tim = (from p in qlks.KHACHHANGs
                                   where p.TenKhachHang.Contains(txtTKiem) && p.GioiTinh.Trim() == cbbGT
                                   select new
                                   {
                                       p.MaKhachHang,
                                       p.TenKhachHang,
                                       p.CMND,
                                       p.GioiTinh,
                                       p.DiaChi,
                                       p.DienThoai,
                                       p.NgaySinh,
                                       p.QuocTich
                                   }).ToList();

                        foreach (var i in tim)
                        {
                            dt.Rows.Add(i.MaKhachHang, i.TenKhachHang, i.CMND,i.GioiTinh, i.DiaChi, i.DienThoai,  i.NgaySinh, i.QuocTich);
                        }
                    }
                    catch
                    {

                    }
                }
                else if (cbbDC != "Tất Cả" && cbbGT == "Tất Cả")
                {
                    try
                    {
                        var tim = (from p in qlks.KHACHHANGs
                                   where p.TenKhachHang.Contains(txtTKiem) && p.DiaChi == cbbDC
                                   select new
                                   {
                                       p.MaKhachHang,
                                       p.TenKhachHang,
                                       p.CMND,
                                       p.GioiTinh,
                                       p.DiaChi,
                                       p.DienThoai,
                                       p.NgaySinh,
                                       p.QuocTich
                                   }).ToList();
                        foreach (var i in tim)
                        {
                            dt.Rows.Add(i.MaKhachHang, i.TenKhachHang, i.CMND,i.GioiTinh, i.DiaChi, i.DienThoai,  i.NgaySinh, i.QuocTich);
                        }
                    }
                    catch
                    {

                    }
                }

                else
                {
                    try
                    {
                        var tim = (from p in qlks.KHACHHANGs
                                   where p.TenKhachHang.Contains(txtTKiem) && p.DiaChi == cbbDC && p.GioiTinh == cbbGT
                                   select new
                                   {
                                       p.MaKhachHang,
                                       p.TenKhachHang,
                                       p.CMND,
                                       p.GioiTinh,
                                       p.DiaChi,
                                       p.DienThoai,
                                       p.NgaySinh,
                                       p.QuocTich
                                   }).ToList();

                        foreach (var i in tim)
                        {
                            dt.Rows.Add(i.MaKhachHang, i.TenKhachHang, i.CMND,i.GioiTinh, i.DiaChi, i.DienThoai,  i.NgaySinh, i.QuocTich);
                        }
                    }
                    catch
                    {

                    }
                }
            }
            catch
            {

            }
            return dt;
        }
    }
}

