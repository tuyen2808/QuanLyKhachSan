using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;


namespace DAL_KhachSan
{
    public class DAL_Phong : ConText
    {
        public List<PHONG> loadPhongTrong(string maphong)
        {
            PHONG p = qlks.PHONGs.SingleOrDefault(x => x.MaPhong == maphong);
            return qlks.PHONGs.Where(t => t.MaLoaiTinhTrangPhong == "TT01" && t.MaLoaiPhong == p.MaLoaiPhong).ToList();
        }

        public List<PHONG> loadPhongTrong()
        {
            return qlks.PHONGs.Where(t => t.MaLoaiTinhTrangPhong == "TT01").ToList();
        }

        public void DoiPhong(string maphongcandoi, string maphongdoi)
        {
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.PHONGs);
            CHITETNHANPHONG ctnp = qlks.CHITETNHANPHONGs.SingleOrDefault(x => x.MaPhong == maphongcandoi && x.NgayTraThucTe == null);
            CHITIETDATPHONG ctdp = qlks.CHITIETDATPHONGs.SingleOrDefault(x => x.MaPhong == maphongcandoi && x.NgayTra == null);
            PHONG p = qlks.PHONGs.SingleOrDefault(x => x.MaPhong == maphongcandoi);
            PHONG pd = qlks.PHONGs.SingleOrDefault(x => x.MaPhong == maphongdoi);

            CHITIETDATPHONG newctdp = new CHITIETDATPHONG
            {
                MaPhieuDat = ctdp.MaPhieuDat,
                NgayLap = ctdp.NgayLap,
                NgayNhan = ctdp.NgayNhan,
                NgayTra = ctdp.NgayTra,
                MaPhong = maphongdoi,
                SoNguoi = ctdp.SoNguoi
            };
            qlks.CHITIETDATPHONGs.DeleteOnSubmit(ctdp);
            qlks.CHITIETDATPHONGs.InsertOnSubmit(newctdp);
            qlks.SubmitChanges();
            CHITETNHANPHONG newctnp = new CHITETNHANPHONG
            {
                MaNhanPhong = ctnp.MaNhanPhong,
                MaPhong = maphongdoi,
                NgayNhan = ctnp.NgayNhan,
                NgayTraDuKien = ctnp.NgayTraDuKien,
                NgayTraThucTe = ctnp.NgayTraThucTe
            };
            qlks.CHITETNHANPHONGs.DeleteOnSubmit(ctnp);
            qlks.CHITETNHANPHONGs.InsertOnSubmit(newctnp);
            qlks.SubmitChanges();

            p.MaLoaiTinhTrangPhong = "TT01";
            qlks.SubmitChanges();
            pd.MaLoaiTinhTrangPhong = "TT03";
            qlks.SubmitChanges();
        }

        public DataTable ThongTinPhong(string maphong)
        {
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.DANHSACHSUDUNGDICHVUs);
            CHITETNHANPHONG ctnp = qlks.CHITETNHANPHONGs.SingleOrDefault(x => x.MaPhong == maphong && x.NgayTraThucTe == null);
            KHACHHANG kh = qlks.KHACHHANGs.SingleOrDefault(z => z.MaKhachHang == (qlks.NHANPHONGs.SingleOrDefault(x => x.MaNhanPhong == ctnp.MaNhanPhong).MaKhachHang));
            DANHSACHSUDUNGDICHVU dv = qlks.DANHSACHSUDUNGDICHVUs.SingleOrDefault(x => x.MaNhanPhong == ctnp.MaNhanPhong);
            LOAIPHONG lp = qlks.LOAIPHONGs.SingleOrDefault(z => z.MaLoaiPhong == (qlks.PHONGs.SingleOrDefault(x => x.MaPhong == maphong).MaLoaiPhong));
            DataTable dt = new DataTable();
            if (dv != null)
            {
                double time = Convert.ToDouble((DateTime.Now - ctnp.NgayNhan.Value).TotalHours.ToString());
                dt.Columns.Add("Khách hàng");
                dt.Columns.Add("Ngày nhận");
                dt.Columns.Add("Ngày trả dự kiến");
                dt.Columns.Add("Tiền dịch vụ");
                dt.Columns.Add("Tiền phòng");
                dt.Columns.Add("Thành tiền");
                if (Math.Round(time, 0) != 0)
                {
                    dt.Rows.Add(kh.TenKhachHang, ctnp.NgayNhan, ctnp.NgayTraDuKien, dv.TienDichVu, lp.DonGia, dv.TienDichVu + (lp.DonGia * Math.Round(time, 0)));
                }
                else { dt.Rows.Add(kh.TenKhachHang, ctnp.NgayNhan, ctnp.NgayTraDuKien, dv.TienDichVu, lp.DonGia, dv.TienDichVu + lp.DonGia); }
            }
            else
            {
                double time = Convert.ToDouble((DateTime.Now - ctnp.NgayNhan.Value).TotalHours.ToString());
                dt.Columns.Add("Khách hàng");
                dt.Columns.Add("Ngày nhận");
                dt.Columns.Add("Ngày trả dự kiến");
                dt.Columns.Add("Tiền phòng");
                dt.Columns.Add("Thành tiền");
                if (Math.Round(time, 0) != 0)
                {
                    dt.Rows.Add(kh.TenKhachHang, ctnp.NgayNhan, ctnp.NgayTraDuKien, lp.DonGia, 0 + (lp.DonGia * Math.Round(time, 0)));
                }
                else { dt.Rows.Add(kh.TenKhachHang, ctnp.NgayNhan, ctnp.NgayTraDuKien, lp.DonGia, 0 + lp.DonGia); }
            }
            return dt;
        }

        public string LayMaHD()
        {
            int ma = 0;
            var listMa = from p in qlks.HOADONs
                         select new
                         {
                             p.MaHoaDon
                         };
            foreach (var item in listMa)
            {
                if (ma < int.Parse(item.MaHoaDon.Substring(2)))
                {
                    ma = int.Parse(item.MaHoaDon.Substring(2));
                }
            }
            if (ma < 9)
                return "HD00" + (ma + 1).ToString();
            if (ma < 99)
                return "HD0" + (ma + 1).ToString();
            if (ma >= 100)
                return "HD" + (ma + 1).ToString();
            return "HD" + (ma + 1).ToString();
        }

        public bool themhoadon(string makh, string manp, int time)
        {
            try
            {
                HOADON hd = new HOADON();
                hd.MaHoaDon = LayMaHD();
                hd.MaKhachHang = makh;
                hd.NgayLap = DateTime.Now;
                hd.MaNhanPhong = manp;
                hd.MaNhanVien = "NVLT002";
                qlks.HOADONs.InsertOnSubmit(hd);
                qlks.SubmitChanges();
                qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.HOADONs);

                CHITIETHOADON cthd = new CHITIETHOADON();
                cthd.MaHoaDon = hd.MaHoaDon;
                cthd.MaPhong = qlks.CHITETNHANPHONGs.SingleOrDefault(x => x.MaNhanPhong == hd.MaNhanPhong).MaPhong;
                try
                {
                    cthd.MaSuDungDichVu = qlks.DANHSACHSUDUNGDICHVUs.SingleOrDefault(x => x.MaNhanPhong == hd.MaNhanPhong).MaSuDungDichVu;
                }
                catch { }
                cthd.PhuThu = 0;
                cthd.HinhThucThanhToan = "Tiền mặt";
                cthd.ThoiGian = time;
                cthd.GiamGia = 0;
                try
                {
                    cthd.TienDichVu = qlks.DANHSACHSUDUNGDICHVUs.SingleOrDefault(x => x.MaNhanPhong == hd.MaNhanPhong).TienDichVu;
                }
                catch { cthd.TienDichVu = 0; }
                cthd.TienPhong = qlks.LOAIPHONGs.SingleOrDefault
                    (x => x.MaLoaiPhong == (qlks.PHONGs.SingleOrDefault(z => z.MaPhong == cthd.MaPhong).MaLoaiPhong)).DonGia;
                cthd.TienBT = 0;
                qlks.CHITIETHOADONs.InsertOnSubmit(cthd);
                qlks.SubmitChanges();
                qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.CHITIETHOADONs);
                return true;
            }
            catch { return false; }
        }

        public bool thanhtoan(string maphong, int time)
        {
            if (time == 0)
                time = 1;
            try
            {
                CHITETNHANPHONG ctnp = qlks.CHITETNHANPHONGs.SingleOrDefault(z => z.MaPhong == maphong && z.NgayTraThucTe == null);
                NHANPHONG np = qlks.NHANPHONGs.SingleOrDefault
                    (x => x.MaNhanPhong == ctnp.MaNhanPhong);
                KHACHHANG kh = qlks.KHACHHANGs.SingleOrDefault(x => x.MaKhachHang == np.MaKhachHang);
                if (themhoadon(kh.MaKhachHang, np.MaNhanPhong, time) == true)
                {
                    qlks.CHITETNHANPHONGs.SingleOrDefault(x => x.MaPhong == maphong && x.NgayTraThucTe == null).NgayTraThucTe = DateTime.Now;
                    qlks.CHITIETDATPHONGs.SingleOrDefault(x => x.MaPhong == maphong && x.NgayTra == null).NgayTra = DateTime.Now;
                    qlks.PHONGs.SingleOrDefault(x => x.MaPhong == maphong).MaLoaiTinhTrangPhong = "TT01";
                    qlks.SubmitChanges();
                    qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.PHONGs);
                    qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.HOADONs);
                }
                return true;
            }
            catch { return false; }
        }

        public DateTime layNgayTraDuKien(string maphong)
        {
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.CHITETNHANPHONGs);
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.CHITIETDATPHONGs);
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.PHIEUDATPHONGs);
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.NHANPHONGs);
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.PHONGs);
            CHITETNHANPHONG ctdp = qlks.CHITETNHANPHONGs.SingleOrDefault(x => x.MaPhong == maphong && x.NgayTraThucTe == null);
            return ctdp.NgayTraDuKien.Value;
        }

        public void giahan(string maphong)
        {
            CHITETNHANPHONG ctdp = qlks.CHITETNHANPHONGs.SingleOrDefault(x => x.MaPhong == maphong && x.NgayTraThucTe == null);
            ctdp.NgayTraDuKien = DateTime.Now.AddDays(1);
            qlks.SubmitChanges();
            qlks.Refresh(System.Data.Linq.RefreshMode.KeepChanges, qlks.CHITETNHANPHONGs);
        }
    }
}
