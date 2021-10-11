using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_KhachSan
{
	public class DAL_NhanPhong : ConText
	{
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
		public CHITIETDATPHONG LayCTDP(string maPD)
		{
			return (from ct in qlks.CHITIETDATPHONGs where ct.MaPhieuDat == maPD select ct).SingleOrDefault();
		}
		public void ThemNhanPhong(NHANPHONG np, CHITETNHANPHONG ctnp)
		{
			qlks.NHANPHONGs.InsertOnSubmit(np);
			qlks.CHITETNHANPHONGs.InsertOnSubmit(ctnp);
			PHONG p = (from ph in qlks.PHONGs where ph.MaPhong == ctnp.MaPhong select ph).Single();
			if(p != null)
			{
				p.LOAITINHTRANG = qlks.LOAITINHTRANGs.SingleOrDefault(x => x.MaLoaiTinhTrangPhong == "TT03");
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
			if(Ma.Count >= 0)
			{
				foreach(var item in Ma)
				{
					t = item.TenKhachHang;
				}
			}
			return t;
		}
		public void XoaPhieuDP(string maPD)
		{
			var itemRemove = qlks.PHIEUDATPHONGs.SingleOrDefault(x => x.MaPhieuDat == maPD);
			
			if(itemRemove != null)
			{
				qlks.CHITIETDATPHONGs.DeleteAllOnSubmit(itemRemove.CHITIETDATPHONGs);
				qlks.PHIEUDATPHONGs.DeleteOnSubmit(itemRemove);
				qlks.SubmitChanges();
			}
		}




        
	}
}
