USE [QLKhachSan]
GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE]
as select * from PHONG

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE01]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[TAO_TABLE01]
as select * from PHONG where MaLoaiPhong='DBL'

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE02]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE02]
as select * from PHONG where MaLoaiPhong='EX'

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE03]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE03]
as select * from PHONG where MaLoaiPhong='KG'

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE04]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE04]
as select * from PHONG where MaLoaiPhong='QAD'

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE05]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE05]
as select * from PHONG where MaLoaiPhong='SUT'

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE06]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE06]
as select * from PHONG where MaLoaiPhong='TRPL'

GO
/****** Object:  StoredProcedure [dbo].[TAO_TABLE07]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TAO_TABLE07]
as select * from PHONG where MaLoaiPhong='TWN'

GO
/****** Object:  Table [dbo].[CHINHSACHTRAPHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHINHSACHTRAPHONG](
	[MaChinhSach] [varchar](10) NOT NULL,
	[ThoiGianQuiDinh] [nvarchar](50) NULL,
	[PhuThu] [float] NULL,
 CONSTRAINT [PK_CHINHSACHTRAPHONG] PRIMARY KEY CLUSTERED 
(
	[MaChinhSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITETNHANPHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITETNHANPHONG](
	[MaNhanPhong] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTraDuKien] [datetime] NULL,
	[NgayTraThucTe] [datetime] NULL,
 CONSTRAINT [PK_MANHANPHONG_MAPHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhanPhong] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETBOITHUONGTB]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETBOITHUONGTB](
	[MABTTB] [varchar](10) NOT NULL,
	[MaThietBi] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[Soluong] [int] NULL,
	[TienBT] [float] NULL,
 CONSTRAINT [PK_MABTTB_MATB_MAPHONG] PRIMARY KEY CLUSTERED 
(
	[MABTTB] ASC,
	[MaThietBi] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETDATPHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETDATPHONG](
	[MaPhieuDat] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[SoNguoi] [int] NULL,
 CONSTRAINT [PK_MAPHIEUDAT_MALOAIPHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDat] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[MaSuDungDichVu] [varchar](10) NULL,
	[MaCTKM] [varchar](10) NULL,
	[MaBTTB] [varchar](10) NULL,
	[MaChinhSach] [varchar](10) NULL,
	[GiamGia] [int] NULL CONSTRAINT [DF_CHITIETHOADON_GiamGia]  DEFAULT ((0)),
	[PhuThu] [float] NULL CONSTRAINT [DF_CHITIETHOADON_PhuThu]  DEFAULT ((0)),
	[TienPhong] [float] NULL,
	[TienDichVu] [float] NULL,
	[TienBT] [float] NULL CONSTRAINT [DF_CHITIETHOADON_TienBT]  DEFAULT ((0)),
	[HinhThucThanhToan] [nvarchar](50) NULL,
	[ThoiGian] [int] NULL,
 CONSTRAINT [PK_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHUONGTRINHKHUYENMAI]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHUONGTRINHKHUYENMAI](
	[MaCTKM] [varchar](10) NOT NULL,
	[TenCTKM] [nvarchar](100) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [PK_CHUONGTRINHKHUYENMAI] PRIMARY KEY CLUSTERED 
(
	[MaCTKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DANHSACHSUDUNGDICHVU]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DANHSACHSUDUNGDICHVU](
	[MaSuDungDichVu] [varchar](10) NOT NULL,
	[MaNhanPhong] [varchar](10) NULL,
	[TienDichVu] [float] NULL,
 CONSTRAINT [PK_DANHSACHSUDUNGDICHVU_1] PRIMARY KEY CLUSTERED 
(
	[MaSuDungDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDichVu] [varchar](10) NOT NULL,
	[MaLoaiDichVu] [varchar](10) NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](20) NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHoaDon] [varchar](10) NOT NULL,
	[MaNhanVien] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](10) NOT NULL,
	[MaNhanPhong] [varchar](10) NOT NULL,
	[TongTien] [float] NULL,
	[NgayLap] [date] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKhachHang] [varchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[CMND] [varchar](12) NOT NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[QuocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIDICHVU]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIDICHVU](
	[MaLoaiDichVu] [varchar](10) NOT NULL,
	[TenLoaiDichVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIDICHVU] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAINGUOIDUNG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAINGUOIDUNG](
	[MaLoaiNguoiDung] [varchar](10) NOT NULL,
	[TenLoaiNguoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAINGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIPHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIPHONG](
	[MaLoaiPhong] [varchar](10) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[SoNguoiChuan] [nvarchar](20) NULL,
	[SoNguoiToiDa] [nvarchar](20) NULL,
	[MoTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_MALOAIPHONG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAITINHTRANG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAITINHTRANG](
	[MaLoaiTinhTrangPhong] [varchar](5) NOT NULL,
	[TenLoaiTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_MALOAITINHTRANG] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTinhTrangPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaNhanVien] [varchar](10) NOT NULL,
	[MaLoaiNguoiDung] [varchar](10) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [varchar](20) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaLoaiNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANPHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANPHONG](
	[MaNhanPhong] [varchar](10) NOT NULL,
	[MaPhieuDat] [varchar](10) NULL,
	[MaKhachHang] [varchar](10) NOT NULL,
 CONSTRAINT [PK_MANHANPHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhanPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [varchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[NgayVaoLam] [date] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUBOITHUONGTB]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUBOITHUONGTB](
	[MaBTTB] [varchar](10) NOT NULL,
	[MaNhanPhong] [varchar](10) NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_MABTTB] PRIMARY KEY CLUSTERED 
(
	[MaBTTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUDATPHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUDATPHONG](
	[MaPhieuDat] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](10) NULL,
 CONSTRAINT [PK_PHIEUDATPHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [varchar](10) NOT NULL,
	[MaLoaiPhong] [varchar](10) NULL,
	[MaLoaiTinhTrangPhong] [varchar](5) NULL,
	[Tang] [nvarchar](20) NULL,
	[DienTich] [varchar](10) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUYDINH]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYDINH](
	[TenQuiDinh] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](200) NULL,
 CONSTRAINT [PK_QUYDINH] PRIMARY KEY CLUSTERED 
(
	[TenQuiDinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUDUNGDICHVU]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUDUNGDICHVU](
	[MaSuDungDichVu] [varchar](10) NOT NULL,
	[MaDichVu] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_SUDUNGDICHVU_1] PRIMARY KEY CLUSTERED 
(
	[MaSuDungDichVu] ASC,
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THIETBI]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THIETBI](
	[MaThietBi] [varchar](10) NOT NULL,
	[TenThietBi] [nvarchar](200) NULL,
	[MaPhong] [varchar](10) NOT NULL,
	[DonViTinh] [nvarchar](20) NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_THIETBI] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TRUONGDOAN]    Script Date: 17-10-2021 9:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TRUONGDOAN](
	[MaTD] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](10) NOT NULL,
	[TenTruongDoan] [nvarchar](50) NULL,
	[CMND] [varchar](12) NOT NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[TenCongTy] [nvarchar](50) NULL,
 CONSTRAINT [PK_MATD_MAKH] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC,
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CHINHSACHTRAPHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'CSTP001', N'Trả phòng trễ 1 giờ', 30000)
INSERT [dbo].[CHINHSACHTRAPHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'CSTP002', N'Trả phòng trễ 2 giờ', 50000)
INSERT [dbo].[CHINHSACHTRAPHONG] ([MaChinhSach], [ThoiGianQuiDinh], [PhuThu]) VALUES (N'CSTP003', N'Trả phòng trễ 3 giờ', 80000)
INSERT [dbo].[CHITETNHANPHONG] ([MaNhanPhong], [MaPhong], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'NP001', N'DBL301', CAST(N'2021-10-17 13:14:07.240' AS DateTime), CAST(N'2021-10-17 13:14:07.243' AS DateTime), CAST(N'2021-10-17 13:15:22.827' AS DateTime))
INSERT [dbo].[CHITETNHANPHONG] ([MaNhanPhong], [MaPhong], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'NP002', N'DBL301', CAST(N'2021-10-17 13:19:12.863' AS DateTime), CAST(N'2021-10-17 13:19:12.867' AS DateTime), CAST(N'2021-10-17 13:19:37.613' AS DateTime))
INSERT [dbo].[CHITETNHANPHONG] ([MaNhanPhong], [MaPhong], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'NP003', N'DBL301', CAST(N'2021-10-17 13:20:03.287' AS DateTime), CAST(N'2021-10-17 13:20:03.290' AS DateTime), CAST(N'2021-10-17 13:20:19.460' AS DateTime))
INSERT [dbo].[CHITETNHANPHONG] ([MaNhanPhong], [MaPhong], [NgayNhan], [NgayTraDuKien], [NgayTraThucTe]) VALUES (N'NP004', N'DBL301', CAST(N'2021-10-17 13:22:33.013' AS DateTime), CAST(N'2021-10-17 13:22:33.013' AS DateTime), NULL)
INSERT [dbo].[CHITIETDATPHONG] ([MaPhieuDat], [MaPhong], [NgayLap], [NgayNhan], [NgayTra], [SoNguoi]) VALUES (N'DP001', N'DBL301', CAST(N'2021-10-17 13:14:07.240' AS DateTime), CAST(N'2021-10-17 13:14:07.240' AS DateTime), CAST(N'2021-10-17 13:15:22.837' AS DateTime), 1)
INSERT [dbo].[CHITIETDATPHONG] ([MaPhieuDat], [MaPhong], [NgayLap], [NgayNhan], [NgayTra], [SoNguoi]) VALUES (N'DP002', N'DBL301', CAST(N'2021-10-17 13:19:12.863' AS DateTime), CAST(N'2021-10-17 13:19:12.863' AS DateTime), CAST(N'2021-10-17 13:19:37.620' AS DateTime), 1)
INSERT [dbo].[CHITIETDATPHONG] ([MaPhieuDat], [MaPhong], [NgayLap], [NgayNhan], [NgayTra], [SoNguoi]) VALUES (N'DP003', N'DBL301', CAST(N'2021-10-17 13:20:03.287' AS DateTime), CAST(N'2021-10-17 13:20:03.287' AS DateTime), CAST(N'2021-10-17 13:20:19.467' AS DateTime), 1)
INSERT [dbo].[CHITIETDATPHONG] ([MaPhieuDat], [MaPhong], [NgayLap], [NgayNhan], [NgayTra], [SoNguoi]) VALUES (N'DP004', N'DBL301', CAST(N'2021-10-17 13:22:33.013' AS DateTime), CAST(N'2021-10-17 13:22:33.013' AS DateTime), NULL, 1)
INSERT [dbo].[CHITIETHOADON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaCTKM], [MaBTTB], [MaChinhSach], [GiamGia], [PhuThu], [TienPhong], [TienDichVu], [TienBT], [HinhThucThanhToan], [ThoiGian]) VALUES (N'HD001', N'DBL301', NULL, NULL, NULL, NULL, 0, 0, 60000, 0, 0, N'Tiền mặt', 1)
INSERT [dbo].[CHITIETHOADON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaCTKM], [MaBTTB], [MaChinhSach], [GiamGia], [PhuThu], [TienPhong], [TienDichVu], [TienBT], [HinhThucThanhToan], [ThoiGian]) VALUES (N'HD002', N'DBL301', NULL, NULL, NULL, NULL, 0, 0, 60000, 0, 0, N'Tiền mặt', 1)
INSERT [dbo].[CHITIETHOADON] ([MaHoaDon], [MaPhong], [MaSuDungDichVu], [MaCTKM], [MaBTTB], [MaChinhSach], [GiamGia], [PhuThu], [TienPhong], [TienDichVu], [TienBT], [HinhThucThanhToan], [ThoiGian]) VALUES (N'HD003', N'DBL301', N'DSDV001', NULL, NULL, NULL, 0, 0, 60000, 15000, 0, N'Tiền mặt', 1)
INSERT [dbo].[CHUONGTRINHKHUYENMAI] ([MaCTKM], [TenCTKM], [NgayBatDau], [NgayKetThuc], [GiamGia]) VALUES (N'CTKM001', N'Giáng Sinh Noel', CAST(N'2020-12-20' AS Date), CAST(N'2020-12-30' AS Date), 24)
INSERT [dbo].[CHUONGTRINHKHUYENMAI] ([MaCTKM], [TenCTKM], [NgayBatDau], [NgayKetThuc], [GiamGia]) VALUES (N'CTKM002', N'Tết Dương Lịch', CAST(N'2020-12-25' AS Date), CAST(N'2021-01-10' AS Date), 15)
INSERT [dbo].[CHUONGTRINHKHUYENMAI] ([MaCTKM], [TenCTKM], [NgayBatDau], [NgayKetThuc], [GiamGia]) VALUES (N'CTKM003', N'Tết Nguyên Đán', CAST(N'2021-01-15' AS Date), CAST(N'2021-02-20' AS Date), 20)
INSERT [dbo].[DANHSACHSUDUNGDICHVU] ([MaSuDungDichVu], [MaNhanPhong], [TienDichVu]) VALUES (N'DSDV001', N'NP003', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVGL001', N'DVGL', N'Giặt ủi quần áo', N'KG', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVGL002', N'DVGL', N'Vệ sinh giày dép', N'Đôi', 50000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA001', N'DVTA', N'Snack', N'Bịch', 3000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA002', N'DVTA', N'Bánh mì', N'Phần', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA003', N'DVTA', N'Phở', N'Phần', 30000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA004', N'DVTA', N'Beef Steak', N'Phần', 120000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA005', N'DVTA', N'Mì tôm', N'Phần', 10000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA006', N'DVTA', N'Gà rán', N'Phần', 90000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA007', N'DVTA', N'Khoai tây', N'Phần', 45000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA008', N'DVTA', N'Mì Ý', N'Phần', 80000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTA009', N'DVTA', N'Hamburger', N'Phần', 65000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU001', N'DVTU', N'Bia Tiger', N'Chai', 10000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU002', N'DVTU', N'Bia Heineken', N'Chai', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU003', N'DVTU', N'Strongbow', N'Chai', 20000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU004', N'DVTU', N'Sting', N'Chai', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU005', N'DVTU', N'Cocacola', N'Chai', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU006', N'DVTU', N'Pepsi', N'Chai', 15000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU007', N'DVTU', N'Nước suối', N'Chai', 10000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU008', N'DVTU', N'Rượu Whisky', N'Chai', 1700000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU009', N'DVTU', N'Rượu Nho', N'Chai', 3500000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU010', N'DVTU', N'Rượu vang', N'Chai', 2600000)
INSERT [dbo].[DICHVU] ([MaDichVu], [MaLoaiDichVu], [TenDichVu], [DonViTinh], [DonGia]) VALUES (N'DVTU011', N'DVTU', N'Cocktail', N'Phần', 120000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaNhanVien], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'HD001', N'NVLT002', N'KH003', N'NP001', 60000, CAST(N'2021-10-17' AS Date))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaNhanVien], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'HD002', N'NVLT002', N'KH0014', N'NP002', 60000, CAST(N'2021-10-17' AS Date))
INSERT [dbo].[HOADON] ([MaHoaDon], [MaNhanVien], [MaKhachHang], [MaNhanPhong], [TongTien], [NgayLap]) VALUES (N'HD003', N'NVLT002', N'KH0014', N'NP003', 75000, CAST(N'2021-10-17' AS Date))
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH001', N'Nguyễn Khánh Nam', N'301711991', N'Nam', N'Bình Định', N'0326685588', CAST(N'1990-05-16' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH0010', N'Lê Nhật Minh', N'8246108', N'Nam', N'34 Trương Định, Q3, TpHCM', N'0824595458', CAST(N'1950-10-03' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH0012', N'Nguyễn Văn Tâm', N'916783565', N'Nam', N'32/3 Trần Bình Trọng, Q5, TpHCM', N'0398495458', CAST(N'1971-06-04' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH0014', N'Lê Hà Vinh', N'8654763', N'Nam', N'873 Lê Hồng Phong, Q5, TpHCM', N'0276595458', CAST(N'1979-09-03' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH0015', N'Hà Duy Lập', N'8768904', N'Nam', N'34/34B Nguyễn Trãi, Q1, TpHCM', N'0346495458', CAST(N'1983-05-02' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH002', N'Nguyễn Ngọc Thảo Nhi', N'301711112', N'Nữ', N'Lâm Đồng', N'0346495146', CAST(N'1989-10-19' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH003', N'Trần Ngọc Khánh Chi', N'301711071', N'Nữ', N'Bình Dương', N'0365645231', CAST(N'1989-10-19' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH004', N'Trịnh Gia Hy', N'301711101', N'Nữ', N'TP. HCM', N'0939393979', CAST(N'1999-08-20' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH005', N'Becky G', N'301711777', N'Nữ', N'Hà Nội', N'0911234567', CAST(N'1991-02-09' AS Date), N'Tây Ban Nha')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH006', N'Nguyễn Văn An', N'8823451', N'Nam', N'731 Trần Hưng Đạo, Q5, TpHCM', N'0342495458', CAST(N'1974-04-03' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH007', N'Trần Ngọc Hân', N'908256478', N'Nữ', N'23/5 Nguyễn Trãi, Q5, TpHCM', N'0346795458', CAST(N'1974-03-04' AS Date), N'Việt Nam')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [QuocTich]) VALUES (N'KH009', N'Trần Minh Long', N'917325476', N'Nam', N'50/3 Lê Đại Hành, Q10, TpHCM', N'0376495458', CAST(N'1965-09-03' AS Date), N'Việt Nam')
INSERT [dbo].[LOAIDICHVU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'DVGL', N'Giặt là')
INSERT [dbo].[LOAIDICHVU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'DVTA', N'Thức ăn')
INSERT [dbo].[LOAIDICHVU] ([MaLoaiDichVu], [TenLoaiDichVu]) VALUES (N'DVTU', N'Thức uống')
INSERT [dbo].[LOAINGUOIDUNG] ([MaLoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (N'Q001', N'Quản lý')
INSERT [dbo].[LOAINGUOIDUNG] ([MaLoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (N'Q002', N'Đặt phòng, Nhận phòng, Trả phòng')
INSERT [dbo].[LOAINGUOIDUNG] ([MaLoaiNguoiDung], [TenLoaiNguoiDung]) VALUES (N'Q003', N'Dịch vụ')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'DBL', N'Phòng Double bed room', 60000, N'2', N'2', N'Là loại phòng có 1 giường lớn cho 2 người ở ngủ.')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'EX', N'Phòng Executive', 200000, N'2', N'3', N'Là loại phòng cao cấp nhất trong một khách sạn, bên cạnh phòng có 
diện tích lớn còn có tầm nhìn đẹp và những dịch vụ tốt nhất.')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'KG', N'Phòng King', 300000, N'2', N'2', N'Là loại phòng sang trọng và cao cấp bậc nhất. Sở hữu trang thiết bị hiện đại, tân tiến nhất 
cùng các dịch vụ “thượng đế”, phòng King có chi phí vô cùng đắt đỏ.')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'QAD', N'Phòng Quad room', 80000, N'4', N'5', N'Là loại phòng khách sạn dành cho 4 người, phục vụ nhu cầu lưu trú, nghỉ 
dưỡng. Nội thất phòng Quad thường có kích thước lớn, thích hợp cho nhóm khách hàng gia đình, bạn bè, hay các đoàn công tác.')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'SUT', N'Phòng Suite', 120000, N'2', N'3', N'Phòng Suite trong khách sạn thường được thiết kế, bố trí ở tầng cao nhất, 
là phòng có diện tích lớn nhất, được trang bị đầy đủ thiết bị tiện nghi, nội thất, vật dụng cao cấp và các dịch vụ đặc biệt.')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'TRPL', N'Phòng Triple bed room', 65000, N'3', N'4', N'Là loại phòng 3 giường nhỏ hoặc 1 giường lớn + 
1 giường nhỏ cho 3 người ngủ.')
INSERT [dbo].[LOAIPHONG] ([MaLoaiPhong], [TenLoaiPhong], [DonGia], [SoNguoiChuan], [SoNguoiToiDa], [MoTa]) VALUES (N'TWN', N'Phòng Twin bed room', 40000, N'2', N'2', N'Là loại phòng có 2 giường cho 2 người ngủ.')
INSERT [dbo].[LOAITINHTRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (N'TT01', N'Phòng Trống')
INSERT [dbo].[LOAITINHTRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (N'TT02', N'Phòng Đã Được Đặt')
INSERT [dbo].[LOAITINHTRANG] ([MaLoaiTinhTrangPhong], [TenLoaiTinhTrang]) VALUES (N'TT03', N'Phòng Đã Được Nhận')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVADMIN001', N'Q001', N'adminquang', N'quang200117', N'Hoạt động')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVADMIN002', N'Q001', N'adminvan', N'van200117', N'Hoạt động')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVLT001', N'Q002', N'tuanlinh', N'tuanlinh1994', N'Hoạt động')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVLT002', N'Q002', N'ngocanhht', N'ngocanhht1991', N'Hoạt động')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVLT003', N'Q002', N'yennhint', N'yennhint200117', N'Hoạt động')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVLT004', N'Q002', N'truongtoan', N'trantruongtoan050190', N'Hoạt động')
INSERT [dbo].[NGUOIDUNG] ([MaNhanVien], [MaLoaiNguoiDung], [TenDangNhap], [MatKhau], [TinhTrang]) VALUES (N'NVLT005', N'Q002', N'manhthinh', N'manhtinh1985', N'Ngừng Hoạt động')
INSERT [dbo].[NHANPHONG] ([MaNhanPhong], [MaPhieuDat], [MaKhachHang]) VALUES (N'NP001', N'DP001', N'KH003')
INSERT [dbo].[NHANPHONG] ([MaNhanPhong], [MaPhieuDat], [MaKhachHang]) VALUES (N'NP002', N'DP002', N'KH0014')
INSERT [dbo].[NHANPHONG] ([MaNhanPhong], [MaPhieuDat], [MaKhachHang]) VALUES (N'NP003', N'DP003', N'KH0014')
INSERT [dbo].[NHANPHONG] ([MaNhanPhong], [MaPhieuDat], [MaKhachHang]) VALUES (N'NP004', N'DP004', N'KH0014')
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVADMIN001', N'Nguyễn Hồng Quang', N'Nam', CAST(N'1999-10-08' AS Date), N'Long An', N'0365458245', N'Quản lý Phần Mềm', CAST(N'2019-05-25' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVADMIN002', N'Trần Thị Thanh Vân', N'Nũ', CAST(N'1999-02-20' AS Date), N'An Giang', N'0760145454', N'Quản lý Phần Mềm', CAST(N'2019-05-25' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBNAN003', N'Chíu Nhật Lê', N'Nam', CAST(N'1997-01-03' AS Date), N'Bến Tre', N'0383565632', N'Nhân viên bảo vệ', CAST(N'2019-08-29' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP001', N'Nguyễn Quốc Thái', N'Nam', CAST(N'1980-10-17' AS Date), N'Cà Mau', N'0854838481', N'Qu?n lý Bu?ng Phòng', CAST(N'2016-04-28' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP002', N'Nguyễn Văn Hiếu', N'Nam', CAST(N'1988-11-08' AS Date), N'Cần Thơ', N'0854146488', N'Nhân viên buồng phòng', CAST(N'2016-03-22' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP003', N'Ngô Hoàng Quí', N'Nam', CAST(N'1996-10-10' AS Date), N'TP. HCM', N'0814868957', N'Nhân viên buồng phòng', CAST(N'2017-07-13' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP004', N'Đặng Thị Cẩm Trâm', N'Nữ', CAST(N'1998-07-20' AS Date), N'Tiền Giang', N'0811745488', N'Nhân viên buồng phòng', CAST(N'2018-11-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP005', N'Nguyễn Mỹ Duyên', N'Nữ', CAST(N'1999-06-15' AS Date), N'Phú Yên', N'0814585459', N'Nhân viên buồng phòng', CAST(N'2019-09-28' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP006', N'Huỳnh Thị Thúy Hằng', N'Nữ', CAST(N'1999-10-15' AS Date), N'Nghệ An', N'0818787595', N'Nhân viên buồng phòng', CAST(N'2019-10-20' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP007', N'Đinh Trần Thiên Lý', N'Nữ', CAST(N'1996-01-13' AS Date), N'Tiền Giang', N'0393956393', N'Nhân viên buồng phòng', CAST(N'2019-10-18' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP008', N'Nguyễn Thị Kim Luyến', N'Nữ', CAST(N'1991-11-11' AS Date), N'Huế', N'0375821315', N'Nhân viên buồng phòng', CAST(N'2019-04-30' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP009', N'Lê Thị Tuyết Mai', N'Nữ', CAST(N'1992-08-25' AS Date), N'Hậu Giang', N'0386946263', N'Nhân viên buồng phòng', CAST(N'2019-09-11' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBP010', N'Huỳnh Luân', N'Nam', CAST(N'1995-05-11' AS Date), N'TP. HCM', N'0397845694', N'Nhân viên buồng phòng', CAST(N'2020-02-20' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN001', N'Từ Huệ Giang', N'Nữ', CAST(N'1994-10-28' AS Date), N'Cần Thơ', N'0847594852', N'Quản lý Bảo vệ an ninh', CAST(N'2017-10-19' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN004', N'Tăng Hoàng Linh', N'Nam', CAST(N'1995-10-07' AS Date), N'Bến Tre', N'0392536525', N'Nhân viên bảo vệ', CAST(N'2018-04-11' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN005', N'Nguyễn Quang Thanh Luân', N'Nam', CAST(N'1992-06-16' AS Date), N'Đồng Nai', N'0392131256', N'Nhân viên bảo vệ', CAST(N'2020-06-11' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN006', N'Hoàng Say Phú', N'Nam', CAST(N'1990-09-15' AS Date), N'Bình Dương', N'0844588584', N'Nhân viên bảo vệ', CAST(N'2019-12-22' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN007', N'Lê Minh Trí', N'Nam', CAST(N'1991-07-14' AS Date), N'Long An', N'0844586824', N'Nhân viên an ninh', CAST(N'2018-08-26' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN008', N'Nguyễn Anh Tuấn', N'Nam', CAST(N'1980-10-13' AS Date), N'Hà Nội', N'0814525353', N'Nhân viên an ninh', CAST(N'2018-05-15' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN009', N'Nguyễn Văn Vinh', N'Nam', CAST(N'1983-04-22' AS Date), N'Lào Cai', N'085756565', N'Nhân viên an ninh', CAST(N'2020-01-20' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVBVAN010', N'Ngô Quang Duy', N'Nam', CAST(N'1987-12-09' AS Date), N'TP. HCM', N'0841451251', N'Nhân viên an ninh', CAST(N'2017-10-01' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVKT001', N'Ngô Văn Trường', N'Nam', CAST(N'1991-08-10' AS Date), N'Cà Mau', N'0774586978', N'Quản lý Kỹ thuật', CAST(N'2018-10-20' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVKT002', N'Đỗ Duy An', N'Nam', CAST(N'1990-09-11' AS Date), N'Cần Thơ', N'0705985863', N'Nhân viên Kỹ thuật', CAST(N'2019-04-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVKT003', N'Đoàn Thanh Bình', N'Nam', CAST(N'1987-10-22' AS Date), N'Gia Lai', N'0797823654', N'Nhân viên Kỹ thuật', CAST(N'2020-08-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVKT004', N'Tất Tử Dương', N'Nam', CAST(N'1989-05-28' AS Date), N'Lâm Đồng', N'0847279838', N'Nhân viên Kỹ thuật', CAST(N'2019-11-19' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVKT005', N'Lê Tiến Đạt', N'Nam', CAST(N'1995-11-20' AS Date), N'Lâm Đồng', N'0878549696', N'Nhân viên Kỹ thuật', CAST(N'2020-05-12' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVLT001', N'Lê Tuấn Linh', N'Nam', CAST(N'1994-12-06' AS Date), N'Bến Tre', N'0334569699', N'Quản lý Lễ Tân', CAST(N'2016-10-07' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVLT002', N'Hồ Thị Ngọc Anh', N'Nữ', CAST(N'1991-09-04' AS Date), N'Đồng Tháp', N'0334515128', N'Nhân viên Lễ Tân', CAST(N'2016-12-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVLT003', N'Nguyễn Thị Yến Nhi', N'Nữ', CAST(N'1997-05-19' AS Date), N'TP. HCM', N'0774576912', N'Nhân viên Lễ Tân', CAST(N'2017-02-14' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVLT004', N'Trần Trường Toàn', N'Nam', CAST(N'1990-11-20' AS Date), N'Kiên Giang', N'0772487878', N'Nhân viên Lễ Tân', CAST(N'2017-02-17' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVLT005', N'Nguyễn Mạnh Thịnh', N'Nam', CAST(N'1985-05-01' AS Date), N'Hà Nội', N'0853465464', N'Nhân viên Lễ Tân', CAST(N'2017-05-22' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVLT006', N'Trần Thanh Khoa', N'Nam', CAST(N'1994-03-27' AS Date), N'Hà Nội', N'0392485765', N'Nhân viên lễ tân', CAST(N'2018-10-12' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH002', N'Hoàng Gia Khánh', N'Nam', CAST(N'1989-07-20' AS Date), N'Long An', N'0324568989', N'Nhân viên bếp', CAST(N'2018-05-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH003', N'Phạm Hữu Nghĩa', N'Nam', CAST(N'1985-12-07' AS Date), N'Quảng Nam', N'0335489325', N'Nhân viên bếp', CAST(N'2017-03-16' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH004', N'Nguyễn Hoài Phong', N'Nam', CAST(N'1987-05-17' AS Date), N'Bắc Ninh', N'0324589373', N'Nhân viên phục vụ bàn', CAST(N'2016-10-17' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH005', N'Nguyễn Đỗ Minh Quang', N'Nam', CAST(N'1991-04-29' AS Date), N'TP. HCM', N'0357878595', N'Nhân viên phục', CAST(N'2017-09-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH006', N'Trần Thị Như Ngọc', N'Nữ', CAST(N'1995-02-20' AS Date), N'Long An', N'070879686', N'Nhân viên phục vụ ', CAST(N'2020-06-22' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH007', N'Phan Thị Thanh Tâm', N'Nam', CAST(N'1996-06-11' AS Date), N'Kiên Giang', N'0384875987', N'Nhân viên phục vụ', CAST(N'2020-11-29' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH008', N'Trần Ái Thanh Thanh', N'Nữ', CAST(N'1997-10-20' AS Date), N'Tiền Giang', N'0378586969', N'Nhân viên phục vụ', CAST(N'2019-06-25' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH009', N'Nguyễn Thị Cẩm Tiên', N'Nữ', CAST(N'1998-08-10' AS Date), N'Tiền Giang', N'0774736954', N'Nhân viên phục vụ', CAST(N'2018-10-10' AS Date))
INSERT [dbo].[NHANVIEN] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [ChucVu], [NgayVaoLam]) VALUES (N'NVNH010', N'Đinh Hồng Tịnh', N'Nam', CAST(N'1997-05-12' AS Date), N'Cần Thơ', N'0764895588', N'Nhân viên phục vụ', CAST(N'2020-08-16' AS Date))
INSERT [dbo].[PHIEUDATPHONG] ([MaPhieuDat], [MaKhachHang]) VALUES (N'DP001', N'KH003')
INSERT [dbo].[PHIEUDATPHONG] ([MaPhieuDat], [MaKhachHang]) VALUES (N'DP002', N'KH0014')
INSERT [dbo].[PHIEUDATPHONG] ([MaPhieuDat], [MaKhachHang]) VALUES (N'DP003', N'KH0014')
INSERT [dbo].[PHIEUDATPHONG] ([MaPhieuDat], [MaKhachHang]) VALUES (N'DP004', N'KH0014')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'DBL301', N'DBL', N'TT03', N'3', N'16m2', N'Phòng Double bed room số 1 tầng 3')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'DBL302', N'DBL', N'TT01', N'3', N'16m2', N'Phòng Double bed room số 2 tầng 3')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'DBL303', N'DBL', N'TT01', N'3', N'16m2', N'Phòng Double bed room số 3 tầng 3')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'DBL304', N'DBL', N'TT01', N'3', N'16m2', N'Phòng Double bed room số 4 tầng 3')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'DBL305', N'DBL', N'TT01', N'3', N'16m2', N'Phòng Double bed room số 5 tầng 3')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'DBL306', N'DBL', N'TT01', N'3', N'16m2', N'Phòng Double bed room số 6 tầng 3')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'EX601', N'EX', N'TT01', N'6', N'20m2', N'Phòng Executive số 1 tầng 6')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'EX602', N'EX', N'TT01', N'6', N'20m2', N'Phòng Executive số 2 tầng 6')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'EX603', N'EX', N'TT01', N'6', N'20m2', N'Phòng Executive số 3 tầng 6')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'EX604', N'EX', N'TT01', N'6', N'20m2', N'Phòng Executive số 4 tầng 6')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'EX605', N'EX', N'TT01', N'6', N'20m2', N'Phòng Executive số 5 tầng 6')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'KG701', N'KG', N'TT01', N'7', N'50m2', N'Phòng King số 1 tầng 7')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'KG702', N'KG', N'TT01', N'7', N'50m2', N'Phòng King số 2 tầng 7')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'QAD501', N'QAD', N'TT01', N'5', N'20m2', N'Phòng Quad room số 6 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'QAD502', N'QAD', N'TT01', N'5', N'20m2', N'Phòng Quad room số 6 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'QAD503', N'QAD', N'TT01', N'5', N'20m2', N'Phòng Quad room số 6 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'QAD504', N'QAD', N'TT01', N'5', N'20m2', N'Phòng Quad room số 6 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'QAD505', N'QAD', N'TT01', N'5', N'20m2', N'Phòng Quad room số 6 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'SUT801', N'SUT', N'TT01', N'8', N'20m2', N'Phòng Suite số 1 tầng 8')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'SUT802', N'SUT', N'TT01', N'8', N'20m2', N'Phòng Suite số 2 tầng 8')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'SUT803', N'SUT', N'TT01', N'8', N'20m2', N'Phòng Suite số 3 tầng 8')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'SUT804', N'SUT', N'TT01', N'8', N'20m2', N'Phòng Suite số 4 tầng 8')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'SUT805', N'SUT', N'TT01', N'8', N'20m2', N'Phòng Suite số 5 tầng 8')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TRPL401', N'TRPL', N'TT01', N'4', N'16m2', N'Phòng Triple bed room số 1 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TRPL402', N'TRPL', N'TT01', N'4', N'16m2', N'Phòng Triple bed room số 2 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TRPL403', N'TRPL', N'TT01', N'4', N'16m2', N'Phòng Triple bed room số 3 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TRPL404', N'TRPL', N'TT01', N'4', N'16m2', N'Phòng Triple bed room số 4 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TRPL405', N'TRPL', N'TT01', N'4', N'16m2', N'Phòng Triple bed room số 5 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TRPL406', N'TRPL', N'TT01', N'4', N'16m2', N'Phòng Triple bed room số 6 tầng 4')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN101', N'TWN', N'TT01', N'1', N'16m2', N'Phòng Twin bed room số 1 tầng 1')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN102', N'TWN', N'TT01', N'1', N'16m2', N'Phòng Twin bed room số 2 tầng 1')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN103', N'TWN', N'TT01', N'1', N'16m2', N'Phòng Twin bed room số 3 tầng 1')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN104', N'TWN', N'TT01', N'1', N'16m2', N'Phòng Twin bed room số 4 tầng 1')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN105', N'TWN', N'TT01', N'1', N'16m2', N'Phòng Twin bed room số 5 tầng 1')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN106', N'TWN', N'TT01', N'1', N'16m2', N'Phòng Twin bed room số 6 tầng 1')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN201', N'TWN', N'TT01', N'2', N'16m2', N'Phòng Twin bed room số 1 tầng 2')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN202', N'TWN', N'TT01', N'2', N'16m2', N'Phòng Twin bed room số 2 tầng 2')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN203', N'TWN', N'TT01', N'2', N'16m2', N'Phòng Twin bed room số 3 tầng 2')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN204', N'TWN', N'TT01', N'2', N'16m2', N'Phòng Twin bed room số 4 tầng 2')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN205', N'TWN', N'TT01', N'2', N'16m2', N'Phòng Twin bed room số 5 tầng 2')
INSERT [dbo].[PHONG] ([MaPhong], [MaLoaiPhong], [MaLoaiTinhTrangPhong], [Tang], [DienTich], [GhiChu]) VALUES (N'TWN206', N'TWN', N'TT01', N'2', N'16m2', N'Phòng Twin bed room số 6 tầng 2')
INSERT [dbo].[SUDUNGDICHVU] ([MaSuDungDichVu], [MaDichVu], [SoLuong]) VALUES (N'DSDV001', N'DVGL001', 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB001', N'Single bed (giường đơn)', N'TWN101', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB002', N'Single bed (giường đơn)', N'TWN102', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB003', N'Single bed (giường đơn)', N'TWN103', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB004', N'Single bed (giường đơn)', N'TWN104', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB005', N'Single bed (giường đơn)', N'TWN105', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB006', N'Single bed (giường đơn)', N'TWN106', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB007', N'Single bed (giường đơn)', N'TWN201', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB008', N'Single bed (giường đơn)', N'TWN202', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB009', N'Single bed (giường đơn)', N'TWN203', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB010', N'Single bed (giường đơn)', N'TWN204', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB011', N'Single bed (giường đơn)', N'TWN205', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB012', N'Single bed (giường đơn)', N'TWN206', N'Chiếc', 2350000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB013', N'Single bed (giường đơn)', N'TRPL401', N'Chiếc', 2350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB014', N'Single bed (giường đơn)', N'TRPL402', N'Chiếc', 2350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB015', N'Single bed (giường đơn)', N'TRPL403', N'Chiếc', 2350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB016', N'Single bed (giường đơn)', N'TRPL404', N'Chiếc', 2350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB017', N'Single bed (giường đơn)', N'TRPL405', N'Chiếc', 2350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB018', N'Single bed (giường đơn)', N'TRPL406', N'Chiếc', 2350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB019', N'Double bed (giường đôi nhỏ)', N'DBL301', N'Chiếc', 3400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB020', N'Double bed (giường đôi nhỏ)', N'DBL302', N'Chiếc', 3400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB021', N'Double bed (giường đôi nhỏ)', N'DBL303', N'Chiếc', 3400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB022', N'Double bed (giường đôi nhỏ)', N'DBL304', N'Chiếc', 3400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB023', N'Double bed (giường đôi nhỏ)', N'DBL305', N'Chiếc', 3400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB024', N'Double bed (giường đôi nhỏ)', N'DBL306', N'Chiếc', 3400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB025', N'Queen size bed (giường đôi lớn)', N'TRPL401', N'Chiếc', 3700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB026', N'Queen size bed (giường đôi lớn)', N'TRPL402', N'Chiếc', 3700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB027', N'Queen size bed (giường đôi lớn)', N'TRPL403', N'Chiếc', 3700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB028', N'Queen size bed (giường đôi lớn)', N'TRPL404', N'Chiếc', 3700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB029', N'Queen size bed (giường đôi lớn)', N'TRPL405', N'Chiếc', 3700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB030', N'Queen size bed (giường đôi lớn)', N'TRPL406', N'Chiếc', 3700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB031', N'Queen size bed (giường đôi lớn)', N'QAD501', N'Chiếc', 3700000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB032', N'Queen size bed (giường đôi lớn)', N'QAD502', N'Chiếc', 3700000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB033', N'Queen size bed (giường đôi lớn)', N'QAD503', N'Chiếc', 3700000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB034', N'Queen size bed (giường đôi lớn)', N'QAD504', N'Chiếc', 3700000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB035', N'King size bed (giường cỡ lớn)', N'SUT801', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB036', N'King size bed (giường cỡ lớn)', N'SUT802', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB037', N'King size bed (giường cỡ lớn)', N'SUT803', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB038', N'King size bed (giường cỡ lớn)', N'SUT804', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB039', N'King size bed (giường cỡ lớn)', N'SUT805', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB040', N'King size bed (giường cỡ lớn)', N'EX601', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB041', N'King size bed (giường cỡ lớn)', N'EX602', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB042', N'King size bed (giường cỡ lớn)', N'EX603', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB043', N'King size bed (giường cỡ lớn)', N'EX604', N'Chiếc', 6850000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB045', N'Super king size bed (giường siêu lớn)', N'KG701', N'Chiếc', 9890000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB046', N'Super king size bed (giường siêu lớn)', N'KG702', N'Chiếc', 9890000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB048', N'Tủ để quần áo loại lớn', N'KG702', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB049', N'Tủ để quần áo loại lớn', N'SUT801', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB050', N'Tủ để quần áo loại lớn', N'SUT802', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB051', N'Tủ để quần áo loại lớn', N'SUT803', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB052', N'Tủ để quần áo loại lớn', N'SUT804', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB053', N'Tủ để quần áo loại lớn', N'SUT805', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB054', N'Tủ để quần áo loại lớn', N'EX601', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB055', N'Tủ để quần áo loại lớn', N'EX602', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB056', N'Tủ để quần áo loại lớn', N'EX603', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB057', N'Tủ để quần áo loại lớn', N'EX604', N'Cái', 5700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB059', N'Tủ để quần áo loại vừa', N'TWN101', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB060', N'Tủ để quần áo loại vừa', N'TWN102', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB061', N'Tủ để quần áo loại vừa', N'TWN103', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB062', N'Tủ để quần áo loại vừa', N'TWN104', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB063', N'Tủ để quần áo loại vừa', N'TWN105', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB064', N'Tủ để quần áo loại vừa', N'TWN106', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB065', N'Tủ để quần áo loại vừa', N'TWN201', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB066', N'Tủ để quần áo loại vừa', N'TWN202', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB067', N'Tủ để quần áo loại vừa', N'TWN203', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB068', N'Tủ để quần áo loại vừa', N'TWN204', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB069', N'Tủ để quần áo loại vừa', N'TWN205', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB070', N'Tủ để quần áo loại vừa', N'TWN206', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB071', N'Tủ để quần áo loại vừa', N'DBL301', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB072', N'Tủ để quần áo loại vừa', N'DBL302', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB073', N'Tủ để quần áo loại vừa', N'DBL303', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB074', N'Tủ để quần áo loại vừa', N'DBL304', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB075', N'Tủ để quần áo loại vừa', N'DBL305', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB076', N'Tủ để quần áo loại vừa', N'DBL306', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB077', N'Tủ để quần áo loại vừa', N'TRPL401', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB078', N'Tủ để quần áo loại vừa', N'TRPL402', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB079', N'Tủ để quần áo loại vừa', N'TRPL403', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB080', N'Tủ để quần áo loại vừa', N'TRPL404', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB081', N'Tủ để quần áo loại vừa', N'TRPL405', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB082', N'Tủ để quần áo loại vừa', N'TRPL406', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB083', N'Tủ để quần áo loại vừa', N'QAD501', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB084', N'Tủ để quần áo loại vừa', N'QAD502', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB085', N'Tủ để quần áo loại vừa', N'QAD503', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB086', N'Tủ để quần áo loại vừa', N'QAD504', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB087', N'Tủ để quần áo loại vừa', N'QAD505', N'Cái', 4000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB088', N'Queen size bed (giường đôi lớn)', N'QAD505', N'Chiếc', 3700000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB089', N'Bàn làm việc', N'KG701', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB090', N'Bàn làm việc', N'KG702', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB091', N'Bàn làm việc', N'SUT801', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB092', N'Bàn làm việc', N'SUT802', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB093', N'Bàn làm việc', N'SUT803', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB094', N'Bàn làm việc', N'SUT804', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB095', N'Bàn làm việc', N'SUT805', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB096', N'Bàn làm việc', N'EX601', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB097', N'Bàn làm việc', N'EX602', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB098', N'Bàn làm việc', N'EX603', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB099', N'Bàn làm việc', N'EX604', N'Cái', 2000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB101', N'Ghế làm việc', N'KG701', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB102', N'Ghế làm việc', N'KG702', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB103', N'Ghế làm việc', N'SUT801', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB104', N'Ghế làm việc', N'SUT802', N'Cái', 500000, 1)
GO
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB105', N'Ghế làm việc', N'SUT803', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB106', N'Ghế làm việc', N'SUT804', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB107', N'Ghế làm việc', N'SUT805', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB108', N'Ghế làm việc', N'EX601', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB109', N'Ghế làm việc', N'EX602', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB110', N'Ghế làm việc', N'EX603', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB111', N'Ghế làm việc', N'EX604', N'Cái', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB113', N'Bàn trang điểm', N'KG701', N'Cái', 2500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB114', N'Bàn trang điểm', N'KG702', N'Cái', 2500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB115', N'Giá để hành lý', N'KG701', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB116', N'Giá để hành lý', N'KG702', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB117', N'Giá để hành lý', N'SUT801', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB118', N'Giá để hành lý', N'SUT802', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB119', N'Giá để hành lý', N'SUT803', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB120', N'Giá để hành lý', N'SUT804', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB121', N'Giá để hành lý', N'SUT805', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB122', N'Giá để hành lý', N'EX601', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB123', N'Giá để hành lý', N'EX602', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB124', N'Giá để hành lý', N'EX603', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB125', N'Giá để hành lý', N'EX604', N'Chiếc', 1200000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB127', N'Ga trải giường Super king size bed (giường siêu lớn)', N'KG701', N'Chiếc', 700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB128', N'Ga trải giường Super king size bed (giường siêu lớn)', N'KG702', N'Chiếc', 700000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB129', N'Ga trải giường King size bed (giường cỡ lớn)', N'EX601', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB130', N'Ga trải giường King size bed (giường cỡ lớn)', N'EX602', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB131', N'Ga trải giường King size bed (giường cỡ lớn)', N'EX603', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB132', N'Ga trải giường King size bed (giường cỡ lớn)', N'EX604', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB134', N'Ga trải giường King size bed (giường cỡ lớn)', N'SUT801', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB135', N'Ga trải giường King size bed (giường cỡ lớn)', N'SUT801', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB136', N'Ga trải giường King size bed (giường cỡ lớn)', N'SUT801', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB137', N'Ga trải giường King size bed (giường cỡ lớn)', N'SUT801', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB138', N'Ga trải giường King size bed (giường cỡ lớn)', N'SUT801', N'Chiếc', 500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB139', N'Ga trải giường Queen size bed (giường đôi lớn)', N'QAD501', N'Chiếc', 400000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB140', N'Ga trải giường Queen size bed (giường đôi lớn)', N'QAD502', N'Chiếc', 400000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB141', N'Ga trải giường Queen size bed (giường đôi lớn)', N'QAD503', N'Chiếc', 400000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB142', N'Ga trải giường Queen size bed (giường đôi lớn)', N'QAD504', N'Chiếc', 400000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB143', N'Ga trải giường Queen size bed (giường đôi lớn)', N'TRPL401', N'Chiếc', 400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB144', N'Ga trải giường Queen size bed (giường đôi lớn)', N'TRPL402', N'Chiếc', 400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB145', N'Ga trải giường Queen size bed (giường đôi lớn)', N'TRPL403', N'Chiếc', 400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB146', N'Ga trải giường Queen size bed (giường đôi lớn)', N'TRPL404', N'Chiếc', 400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB147', N'Ga trải giường Queen size bed (giường đôi lớn)', N'TRPL405', N'Chiếc', 400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB148', N'Ga trải giường Queen size bed (giường đôi lớn)', N'TRPL406', N'Chiếc', 400000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB149', N'Ga trải giường Double bed (giường đôi nhỏ)', N'DBL301', N'Chiếc', 350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB150', N'Ga trải giường Double bed (giường đôi nhỏ)', N'DBL302', N'Chiếc', 350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB151', N'Ga trải giường Double bed (giường đôi nhỏ)', N'DBL303', N'Chiếc', 350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB152', N'Ga trải giường Double bed (giường đôi nhỏ)', N'DBL304', N'Chiếc', 350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB153', N'Ga trải giường Double bed (giường đôi nhỏ)', N'DBL305', N'Chiếc', 350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB154', N'Ga trải giường Double bed (giường đôi nhỏ)', N'DBL306', N'Chiếc', 350000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB155', N'Ga trải giường Single bed (giường đơn)', N'TRPL401', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB156', N'Ga trải giường Single bed (giường đơn)', N'TRPL402', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB157', N'Ga trải giường Single bed (giường đơn)', N'TRPL403', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB158', N'Ga trải giường Single bed (giường đơn)', N'TRPL404', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB159', N'Ga trải giường Single bed (giường đơn)', N'TRPL405', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB160', N'Ga trải giường Single bed (giường đơn)', N'TRPL406', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB161', N'Ga trải giường Single bed (giường đơn)', N'TWN101', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB162', N'Ga trải giường Single bed (giường đơn)', N'TWN102', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB163', N'Ga trải giường Single bed (giường đơn)', N'TWN103', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB164', N'Ga trải giường Single bed (giường đơn)', N'TWN104', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB165', N'Ga trải giường Single bed (giường đơn)', N'TWN105', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB166', N'Ga trải giường Single bed (giường đơn)', N'TWN106', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB167', N'Ga trải giường Single bed (giường đơn)', N'TWN201', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB168', N'Ga trải giường Single bed (giường đơn)', N'TWN202', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB169', N'Ga trải giường Single bed (giường đơn)', N'TWN203', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB170', N'Ga trải giường Single bed (giường đơn)', N'TWN204', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB171', N'Ga trải giường Single bed (giường đơn)', N'TWN205', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB172', N'Ga trải giường Single bed (giường đơn)', N'TWN206', N'Chiếc', 250000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB173', N'Gối lớn', N'KG701', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB174', N'Gối lớn', N'KG702', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB175', N'Gối nhỏ', N'KG701', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB176', N'Gối nhỏ', N'KG702', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB177', N'Gối lớn', N'EX601', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB178', N'Gối lớn', N'EX602', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB179', N'Gối lớn', N'EX603', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB180', N'Gối lớn', N'EX604', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB181', N'Gối lớn', N'EX605', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB182', N'Gối nhỏ', N'EX601', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB183', N'Gối nhỏ', N'EX602', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB184', N'Gối nhỏ', N'EX603', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB185', N'Gối nhỏ', N'EX604', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB186', N'Gối nhỏ', N'EX605', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB187', N'Gối lớn', N'SUT801', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB188', N'Gối lớn', N'SUT802', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB189', N'Gối lớn', N'SUT803', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB190', N'Gối lớn', N'SUT804', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB191', N'Gối lớn', N'SUT805', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB192', N'Gối nhỏ', N'SUT801', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB193', N'Gối nhỏ', N'SUT802', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB194', N'Gối nhỏ', N'SUT803', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB195', N'Gối nhỏ', N'SUT804', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB196', N'Gối nhỏ', N'SUT805', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB197', N'Gối lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB198', N'Gối lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB199', N'Gối lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB201', N'Gối lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB202', N'Gối lớn', N'TRPL401', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB203', N'Gối lớn', N'TRPL402', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB204', N'Gối lớn', N'TRPL403', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB205', N'Gối lớn', N'TRPL404', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB206', N'Gối lớn', N'TRPL405', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB207', N'Gối lớn', N'TRPL406', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB208', N'Gối lớn', N'DBL301', N'Chiếc', 200000, 4)
GO
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB209', N'Gối lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB210', N'Gối lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB211', N'Gối lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB212', N'Gối lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB213', N'Gối lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB214', N'Gối lớn', N'TWN101', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB216', N'Gối lớn', N'TWN103', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB217', N'Gối lớn', N'TWN104', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB218', N'Gối lớn', N'TWN105', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB219', N'Gối lớn', N'TWN106', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB220', N'Gối lớn', N'TWN201', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB221', N'Gối lớn', N'TWN202', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB222', N'Gối lớn', N'TWN203', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB223', N'Gối lớn', N'TWN204', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB224', N'Gối lớn', N'TWN205', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB225', N'Gối lớn', N'TWN206', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB226', N'Chăn lớn', N'KG701', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB227', N'Chăn lớn', N'KG702', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB228', N'Chăn nhỏ', N'KG701', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB229', N'Chăn nhỏ', N'KG702', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB230', N'Chăn lớn', N'EX601', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB231', N'Chăn lớn', N'EX602', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB232', N'Chăn lớn', N'EX603', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB233', N'Chăn lớn', N'EX604', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB234', N'Chăn lớn', N'EX605', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB235', N'Chăn nhỏ', N'EX601', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB236', N'Chăn nhỏ', N'EX602', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB237', N'Chăn nhỏ', N'EX603', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB238', N'Chăn nhỏ', N'EX604', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB239', N'Chăn nhỏ', N'EX605', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB240', N'Chăn lớn', N'SUT801', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB241', N'Chăn lớn', N'SUT802', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB242', N'Chăn lớn', N'SUT803', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB243', N'Chăn lớn', N'SUT804', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB244', N'Chăn lớn', N'SUT805', N'Chiếc', 200000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB245', N'Gối lớn', N'TWN102', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB246', N'Chăn nhỏ', N'SUT802', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB247', N'Chăn nhỏ', N'SUT803', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB248', N'Chăn nhỏ', N'SUT804', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB249', N'Chăn nhỏ', N'SUT805', N'Chiếc', 100000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB250', N'Chăn lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB251', N'Chăn lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB252', N'Chăn lớn', N'QAD501', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB253', N'Chăn lớn', N'TRPL402', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB254', N'Chăn lớn', N'TRPL403', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB255', N'Chăn lớn', N'TRPL404', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB256', N'Chăn lớn', N'TRPL405', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB257', N'Chăn lớn', N'TRPL406', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB258', N'Chăn lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB259', N'Chăn lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB260', N'Chăn lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB261', N'Chăn lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB262', N'Chăn lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB263', N'Chăn lớn', N'DBL301', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB264', N'Chăn lớn', N'TWN101', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB265', N'Chăn lớn', N'TWN102', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB266', N'Chăn lớn', N'TWN103', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB267', N'Chăn lớn', N'TWN104', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB268', N'Chăn lớn', N'TWN105', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB269', N'Chăn lớn', N'TWN106', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB270', N'Chăn lớn', N'TWN201', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB271', N'Chăn lớn', N'TWN202', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB272', N'Chăn lớn', N'TWN203', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB273', N'Chăn lớn', N'TWN204', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB274', N'Chăn lớn', N'TWN205', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB275', N'Chăn lớn', N'TWN206', N'Chiếc', 200000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB276', N'Điện thoại', N'KG701', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB277', N'Điện thoại', N'KG702', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB278', N'Điện thoại', N'KG701', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB279', N'Điện thoại', N'KG702', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB280', N'Điện thoại', N'EX601', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB281', N'Điện thoại', N'EX602', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB282', N'Điện thoại', N'EX603', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB283', N'Điện thoại', N'EX604', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB284', N'Điện thoại', N'EX605', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB285', N'Điện thoại', N'EX601', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB286', N'Điện thoại', N'EX602', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB287', N'Điện thoại', N'EX603', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB288', N'Điện thoại', N'EX604', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB289', N'Điện thoại', N'EX605', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB290', N'Điện thoại', N'SUT801', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB291', N'Điện thoại', N'SUT802', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB292', N'Điện thoại', N'SUT803', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB293', N'Điện thoại', N'SUT804', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB294', N'Điện thoại', N'SUT805', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB295', N'Điện thoại', N'SUT801', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB296', N'Điện thoại', N'SUT802', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB297', N'Điện thoại', N'SUT803', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB298', N'Điện thoại', N'SUT804', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB299', N'Điện thoại', N'SUT805', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB300', N'Điện thoại', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB301', N'Điện thoại', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB302', N'Điện thoại', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB303', N'Điện thoại', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB304', N'Điện thoại', N'TRPL401', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB305', N'Điện thoại', N'TRPL402', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB306', N'Điện thoại', N'TRPL403', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB307', N'Điện thoại', N'TRPL404', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB308', N'Điện thoại', N'TRPL405', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB309', N'Điện thoại', N'TRPL406', N'Chiếc', 120000, 1)
GO
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB310', N'Điện thoại', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB311', N'Điện thoại', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB312', N'Điện thoại', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB313', N'Điện thoại', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB314', N'Điện thoại', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB315', N'Điện thoại', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB316', N'Điện thoại', N'TWN101', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB317', N'Điện thoại', N'TWN102', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB318', N'Điện thoại', N'TWN103', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB319', N'Điện thoại', N'TWN104', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB320', N'Điện thoại', N'TWN105', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB321', N'Điện thoại', N'TWN106', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB322', N'Điện thoại', N'TWN201', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB323', N'Điện thoại', N'TWN202', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB324', N'Điện thoại', N'TWN203', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB325', N'Điện thoại', N'TWN204', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB326', N'Điện thoại', N'TWN205', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB327', N'Điện thoại', N'TWN206', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB328', N'Đèn giường', N'KG701', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB329', N'Đèn giường', N'KG702', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB330', N'Đèn giường', N'KG701', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB331', N'Đèn giường', N'KG702', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB332', N'Đèn giường', N'EX601', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB333', N'Đèn giường', N'EX602', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB334', N'Đèn giường', N'EX603', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB335', N'Đèn giường', N'EX604', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB336', N'Đèn giường', N'EX605', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB337', N'Đèn giường', N'EX601', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB338', N'Đèn giường', N'EX602', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB339', N'Đèn giường', N'EX603', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB340', N'Đèn giường', N'EX604', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB341', N'Đèn giường', N'EX605', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB342', N'Đèn giường', N'SUT801', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB343', N'Đèn giường', N'SUT802', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB344', N'Đèn giường', N'SUT803', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB345', N'Đèn giường', N'SUT804', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB346', N'Đèn giường', N'SUT805', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB347', N'Đèn giường', N'SUT801', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB348', N'Đèn giường', N'SUT802', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB349', N'Đèn giường', N'SUT803', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB350', N'Đèn giường', N'SUT804', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB351', N'Đèn giường', N'SUT805', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB352', N'Đèn giường', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB353', N'Đèn giường', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB354', N'Đèn giường', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB355', N'Đèn giường', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB356', N'Đèn giường', N'TRPL401', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB357', N'Đèn giường', N'TRPL402', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB358', N'Đèn giường', N'TRPL403', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB359', N'Đèn giường', N'TRPL404', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB360', N'Đèn giường', N'TRPL405', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB361', N'Đèn giường', N'TRPL406', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB362', N'Đèn giường', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB363', N'Đèn giường', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB364', N'Đèn giường', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB365', N'Đèn giường', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB366', N'Đèn giường', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB367', N'Đèn giường', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB368', N'Đèn giường', N'TWN101', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB370', N'Đèn giường', N'TWN102', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB371', N'Đèn giường', N'TWN103', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB372', N'Đèn giường', N'TWN104', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB373', N'Đèn giường', N'TWN105', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB374', N'Đèn giường', N'TWN106', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB375', N'Đèn giường', N'TWN201', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB376', N'Đèn giường', N'TWN202', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB377', N'Đèn giường', N'TWN203', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB378', N'Đèn giường', N'TWN204', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB379', N'Đèn giường', N'TWN205', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB380', N'Đèn giường', N'TWN206', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB390', N'Đèn bàn làm việc', N'KG701', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB391', N'Đèn bàn làm việc', N'KG702', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB392', N'Đèn bàn làm việc', N'EX601', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB393', N'Đèn bàn làm việc', N'EX602', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB394', N'Đèn bàn làm việc', N'EX603', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB395', N'Đèn bàn làm việc', N'EX604', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB396', N'Đèn bàn làm việc', N'EX605', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB397', N'Đèn bàn làm việc', N'SUT801', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB398', N'Đèn bàn làm việc', N'SUT802', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB399', N'Đèn bàn làm việc', N'SUT803', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB400', N'Đèn bàn làm việc', N'SUT804', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB401', N'Đèn bàn làm việc', N'SUT805', N'Cái', 1300000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB402', N'Đèn phòng', N'KG701', N'Cái', 850000, 16)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB403', N'Đèn phòng', N'KG702', N'Cái', 850000, 16)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB404', N'Đèn phòng', N'EX601', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB405', N'Đèn phòng', N'EX602', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB406', N'Đèn phòng', N'EX603', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB407', N'Đèn phòng', N'EX604', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB408', N'Đèn phòng', N'EX605', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB409', N'Đèn phòng', N'SUT801', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB410', N'Đèn phòng', N'SUT802', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB411', N'Đèn phòng', N'SUT803', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB412', N'Đèn phòng', N'SUT804', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB413', N'Đèn phòng', N'SUT805', N'Cái', 850000, 12)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB414', N'Đèn phòng', N'QAD501', N'Chiếc', 850000, 10)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB415', N'Đèn phòng', N'QAD501', N'Chiếc', 850000, 10)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB416', N'Đèn phòng', N'QAD501', N'Chiếc', 850000, 10)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB417', N'Đèn phòng', N'QAD501', N'Chiếc', 850000, 10)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB418', N'Đèn phòng', N'TRPL401', N'Chiếc', 850000, 8)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB419', N'Đèn phòng', N'TRPL402', N'Chiếc', 850000, 8)
GO
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB420', N'Đèn phòng', N'TRPL403', N'Chiếc', 850000, 8)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB421', N'Đèn phòng', N'TRPL404', N'Chiếc', 850000, 8)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB422', N'Đèn phòng', N'TRPL405', N'Chiếc', 850000, 8)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB423', N'Đèn phòng', N'TRPL406', N'Chiếc', 850000, 8)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB424', N'Đèn phòng', N'DBL301', N'Chiếc', 850000, 6)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB425', N'Đèn phòng', N'DBL301', N'Chiếc', 850000, 6)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB426', N'Đèn phòng', N'DBL301', N'Chiếc', 850000, 6)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB427', N'Đèn phòng', N'DBL301', N'Chiếc', 850000, 6)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB428', N'Đèn phòng', N'DBL301', N'Chiếc', 850000, 6)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB429', N'Đèn phòng', N'DBL301', N'Chiếc', 850000, 6)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB430', N'Đèn phòng', N'TWN101', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB431', N'Đèn phòng', N'TWN102', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB432', N'Đèn phòng', N'TWN103', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB433', N'Đèn phòng', N'TWN104', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB434', N'Đèn phòng', N'TWN105', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB435', N'Đèn phòng', N'TWN106', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB436', N'Đèn phòng', N'TWN201', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB437', N'Đèn phòng', N'TWN202', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB438', N'Đèn phòng', N'TWN203', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB439', N'Đèn phòng', N'TWN204', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB440', N'Đèn phòng', N'TWN205', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB441', N'Đèn phòng', N'TWN206', N'Chiếc', 850000, 4)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB443', N'TiVi', N'KG702', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB444', N'TiVi', N'EX601', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB445', N'TiVi', N'EX602', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB446', N'TiVi', N'EX603', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB447', N'TiVi', N'EX604', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB448', N'TiVi', N'EX605', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB449', N'TiVi', N'SUT801', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB450', N'TiVi', N'SUT802', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB451', N'TiVi', N'SUT803', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB452', N'TiVi', N'SUT804', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB453', N'TiVi', N'SUT805', N'Cái', 10000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB454', N'Điều hoà', N'KG701', N'Chiếc', 4500000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB455', N'Điều hoà', N'KG702', N'Chiếc', 4500000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB466', N'Điều hoà', N'QAD501', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB467', N'Điều hoà', N'QAD501', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB468', N'Điều hoà', N'QAD501', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB469', N'Điều hoà', N'QAD501', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB476', N'Điều hoà', N'DBL301', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB479', N'Điều hoà', N'DBL301', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB480', N'Điều hoà', N'DBL301', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB481', N'Điều hoà', N'DBL301', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB482', N'Điều hoà', N'DBL301', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB483', N'Điều hoà', N'DBL301', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB490', N'Điều hoà', N'TWN201', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB491', N'Điều hoà', N'TWN202', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB492', N'Điều hoà', N'TWN203', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB493', N'Điều hoà', N'TWN201', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB494', N'Điều hoà', N'TWN205', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB495', N'Điều hoà', N'TWN201', N'Chiếc', 4500000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB496', N'Tủ lạnh', N'KG701', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB497', N'Tủ lạnh', N'KG702', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB498', N'Tủ lạnh', N'EX601', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB499', N'Tủ lạnh', N'EX602', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB500', N'Tủ lạnh', N'EX603', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB501', N'Tủ lạnh', N'EX604', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB502', N'Tủ lạnh', N'EX605', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB503', N'Tủ lạnh', N'SUT801', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB504', N'Tủ lạnh', N'SUT802', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB505', N'Tủ lạnh', N'SUT803', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB506', N'Tủ lạnh', N'SUT804', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB507', N'Tủ lạnh', N'SUT805', N'Cái', 9000000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB508', N'Bộ ấm uống trà', N'KG701', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB509', N'Bộ ấm uống trà', N'KG702', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB510', N'Bộ ấm uống trà', N'EX601', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB511', N'Bộ ấm uống trà', N'EX602', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB512', N'Bộ ấm uống trà', N'EX603', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB513', N'Bộ ấm uống trà', N'EX604', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB514', N'Bộ ấm uống trà', N'EX605', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB515', N'Bộ ấm uống trà', N'SUT801', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB516', N'Bộ ấm uống trà', N'SUT802', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB517', N'Bộ ấm uống trà', N'SUT803', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB518', N'Bộ ấm uống trà', N'SUT804', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB519', N'Bộ ấm uống trà', N'SUT805', N'Bộ', 1800000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB520', N'Cốc thuỷ tinh', N'KG701', N'Chiếc', 120000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB521', N'Cốc thuỷ tinh', N'KG702', N'Chiếc', 120000, 2)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB532', N'Cốc thuỷ tinh', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB533', N'Cốc thuỷ tinh', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB534', N'Cốc thuỷ tinh', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB535', N'Cốc thuỷ tinh', N'QAD501', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB542', N'Cốc thuỷ tinh', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB543', N'Cốc thuỷ tinh', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB544', N'Cốc thuỷ tinh', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB545', N'Cốc thuỷ tinh', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB546', N'Cốc thuỷ tinh', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB547', N'Cốc thuỷ tinh', N'DBL301', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB554', N'Cốc thuỷ tinh', N'TWN201', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB555', N'Cốc thuỷ tinh', N'TWN202', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB556', N'Cốc thuỷ tinh', N'TWN203', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB557', N'Cốc thuỷ tinh', N'TWN201', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB558', N'Cốc thuỷ tinh', N'TWN205', N'Chiếc', 120000, 1)
INSERT [dbo].[THIETBI] ([MaThietBi], [TenThietBi], [MaPhong], [DonViTinh], [DonGia], [SoLuong]) VALUES (N'TB559', N'Cốc thuỷ tinh', N'TWN201', N'Chiếc', 120000, 1)
INSERT [dbo].[TRUONGDOAN] ([MaTD], [MaKhachHang], [TenTruongDoan], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [TenCongTy]) VALUES (N'TD001', N'KH001', N'Trần Khánh Nguyên', N'254246987123', N'Nam', N'Ð?ng Nai', N'0384651243', CAST(N'1985-08-28' AS Date), N'Công Ty Ameritec')
INSERT [dbo].[TRUONGDOAN] ([MaTD], [MaKhachHang], [TenTruongDoan], [CMND], [GioiTinh], [DiaChi], [DienThoai], [NgaySinh], [TenCongTy]) VALUES (N'TD002', N'KH005', N'Nguyễn Thị Thơ', N'2456321845', N'Nữ', N'Thành Phố Hồ Chí Minh', N'0374452188', CAST(N'1992-10-01' AS Date), N'Công Ty TNHH Athena')
ALTER TABLE [dbo].[CHITETNHANPHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHITETNHANPHONG_NHANPHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[NHANPHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[CHITETNHANPHONG] CHECK CONSTRAINT [FK_CHITETNHANPHONG_NHANPHONG]
GO
ALTER TABLE [dbo].[CHITETNHANPHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHITETNHANPHONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHITETNHANPHONG] CHECK CONSTRAINT [FK_CHITETNHANPHONG_PHONG]
GO
ALTER TABLE [dbo].[CHITIETBOITHUONGTB]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETBOITHUONGTB_BOITHUONGTB] FOREIGN KEY([MABTTB])
REFERENCES [dbo].[PHIEUBOITHUONGTB] ([MaBTTB])
GO
ALTER TABLE [dbo].[CHITIETBOITHUONGTB] CHECK CONSTRAINT [FK_CHITIETBOITHUONGTB_BOITHUONGTB]
GO
ALTER TABLE [dbo].[CHITIETBOITHUONGTB]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETBOITHUONGTB_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHITIETBOITHUONGTB] CHECK CONSTRAINT [FK_CHITIETBOITHUONGTB_PHONG]
GO
ALTER TABLE [dbo].[CHITIETBOITHUONGTB]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETBOITHUONGTB_THIETBI] FOREIGN KEY([MaThietBi])
REFERENCES [dbo].[THIETBI] ([MaThietBi])
GO
ALTER TABLE [dbo].[CHITIETBOITHUONGTB] CHECK CONSTRAINT [FK_CHITIETBOITHUONGTB_THIETBI]
GO
ALTER TABLE [dbo].[CHITIETDATPHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDATPHONG_PHIEUDATPHONG] FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PHIEUDATPHONG] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[CHITIETDATPHONG] CHECK CONSTRAINT [FK_CHITIETDATPHONG_PHIEUDATPHONG]
GO
ALTER TABLE [dbo].[CHITIETDATPHONG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDATPHONG_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHITIETDATPHONG] CHECK CONSTRAINT [FK_CHITIETDATPHONG_PHONG]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_CHINHSACHTRAPHONG] FOREIGN KEY([MaChinhSach])
REFERENCES [dbo].[CHINHSACHTRAPHONG] ([MaChinhSach])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_CHINHSACHTRAPHONG]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_CHUONGTRINHKHUYENMAI] FOREIGN KEY([MaCTKM])
REFERENCES [dbo].[CHUONGTRINHKHUYENMAI] ([MaCTKM])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_CHUONGTRINHKHUYENMAI]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_DANHSACHSUDUNGDICHVU] FOREIGN KEY([MaSuDungDichVu])
REFERENCES [dbo].[DANHSACHSUDUNGDICHVU] ([MaSuDungDichVu])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_DANHSACHSUDUNGDICHVU]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOADON] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_PHIEUBOITHUONGTB] FOREIGN KEY([MaBTTB])
REFERENCES [dbo].[PHIEUBOITHUONGTB] ([MaBTTB])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_PHIEUBOITHUONGTB]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_PHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_PHONG]
GO
ALTER TABLE [dbo].[DANHSACHSUDUNGDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DANHSACHSUDUNGDICHVU_NHANPHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[NHANPHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[DANHSACHSUDUNGDICHVU] CHECK CONSTRAINT [FK_DANHSACHSUDUNGDICHVU_NHANPHONG]
GO
ALTER TABLE [dbo].[DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DICHVU_LOAIDICHVU] FOREIGN KEY([MaLoaiDichVu])
REFERENCES [dbo].[LOAIDICHVU] ([MaLoaiDichVu])
GO
ALTER TABLE [dbo].[DICHVU] CHECK CONSTRAINT [FK_DICHVU_LOAIDICHVU]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_MAKHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_MAKHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_MANHANPHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[NHANPHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_MANHANPHONG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_LOAINGUOIDUNG] FOREIGN KEY([MaLoaiNguoiDung])
REFERENCES [dbo].[LOAINGUOIDUNG] ([MaLoaiNguoiDung])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_LOAINGUOIDUNG]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_NHANVIEN]
GO
ALTER TABLE [dbo].[NHANPHONG]  WITH CHECK ADD  CONSTRAINT [FK_NHANPHONG_DATPHONG] FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PHIEUDATPHONG] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[NHANPHONG] CHECK CONSTRAINT [FK_NHANPHONG_DATPHONG]
GO
ALTER TABLE [dbo].[NHANPHONG]  WITH CHECK ADD  CONSTRAINT [FK_NHANPHONG_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[NHANPHONG] CHECK CONSTRAINT [FK_NHANPHONG_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUBOITHUONGTB]  WITH CHECK ADD  CONSTRAINT [FK_BOITHUONGTB_NHANPHONG] FOREIGN KEY([MaNhanPhong])
REFERENCES [dbo].[NHANPHONG] ([MaNhanPhong])
GO
ALTER TABLE [dbo].[PHIEUBOITHUONGTB] CHECK CONSTRAINT [FK_BOITHUONGTB_NHANPHONG]
GO
ALTER TABLE [dbo].[PHIEUDATPHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDATPHONG_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHIEUDATPHONG] CHECK CONSTRAINT [FK_PHIEUDATPHONG_KHACHHANG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAIPHONG] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAIPHONG] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAIPHONG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAITINHTRANG] FOREIGN KEY([MaLoaiTinhTrangPhong])
REFERENCES [dbo].[LOAITINHTRANG] ([MaLoaiTinhTrangPhong])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAITINHTRANG]
GO
ALTER TABLE [dbo].[SUDUNGDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_SUDUNGDICHVU_DANHSACHSUDUNGDICHVU] FOREIGN KEY([MaSuDungDichVu])
REFERENCES [dbo].[DANHSACHSUDUNGDICHVU] ([MaSuDungDichVu])
GO
ALTER TABLE [dbo].[SUDUNGDICHVU] CHECK CONSTRAINT [FK_SUDUNGDICHVU_DANHSACHSUDUNGDICHVU]
GO
ALTER TABLE [dbo].[SUDUNGDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_SUDUNGDICHVU_DICHVU] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DICHVU] ([MaDichVu])
GO
ALTER TABLE [dbo].[SUDUNGDICHVU] CHECK CONSTRAINT [FK_SUDUNGDICHVU_DICHVU]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [FK_THIETBI_LOAIPHONG] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [FK_THIETBI_LOAIPHONG]
GO
ALTER TABLE [dbo].[TRUONGDOAN]  WITH CHECK ADD  CONSTRAINT [FK_TRUONGDOAN_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[TRUONGDOAN] CHECK CONSTRAINT [FK_TRUONGDOAN_KHACHHANG]
GO

alter table KHACHHANG
add Email nvarchar(50);

alter table PHONG
add Hinh nvarchar(50);

CREATE TRIGGER [dbo].[updateTienDichVu2]
ON [dbo].[SUDUNGDICHVU]
	FOR DELETE
	AS
	UPDATE DANHSACHSUDUNGDICHVU
		SET TienDichVu = (select sum(SUDUNGDICHVU.SoLuong*DICHVU.DonGia) 
		from deleted,DICHVU,SUDUNGDICHVU 
		where SUDUNGDICHVU.MaSuDungDichVu=deleted.MaSuDungDichVu and SUDUNGDICHVU.MaDichVu=DICHVU.MaDichVu)
		from deleted,DANHSACHSUDUNGDICHVU
		where deleted.MaSuDungDichVu=DANHSACHSUDUNGDICHVU.MaSuDungDichVu

GO

ALTER TABLE [dbo].[SUDUNGDICHVU] ENABLE TRIGGER [updateTienDichVu2]
GO

CREATE TRIGGER [dbo].[updateTienDichVu]
	ON [dbo].[SUDUNGDICHVU]
	AFTER INSERT, UPDATE
	AS
	BEGIN
		UPDATE DANHSACHSUDUNGDICHVU
		SET TienDichVu = (select sum(SUDUNGDICHVU.SoLuong*DICHVU.DonGia) 
		from inserted,DICHVU,SUDUNGDICHVU 
		where SUDUNGDICHVU.MaSuDungDichVu=inserted.MaSuDungDichVu and SUDUNGDICHVU.MaDichVu=DICHVU.MaDichVu)
		from inserted,DANHSACHSUDUNGDICHVU
		where inserted.MaSuDungDichVu=DANHSACHSUDUNGDICHVU.MaSuDungDichVu
	END
GO

ALTER TABLE [dbo].[SUDUNGDICHVU] ENABLE TRIGGER [updateTienDichVu]
GO

CREATE TRIGGER [dbo].[updateTienHoaDon2]
	ON [dbo].[CHITIETHOADON]
	AFTER delete
	AS
	BEGIN
		UPDATE HOADON
		SET TongTien = TongTien - (select (TienPhong*ThoiGian+TienDichVu)-((TienPhong*ThoiGian)*GiamGia) 
		from deleted)
		from deleted,HOADON
		where deleted.MaHoaDon=HOADON.MaHoaDon
	END

GO

ALTER TABLE [dbo].[CHITIETHOADON] ENABLE TRIGGER [updateTienHoaDon2]
GO

CREATE TRIGGER [dbo].[updateTienHoaDon]
	ON [dbo].[CHITIETHOADON]
	AFTER INSERT, UPDATE
	AS
	BEGIN
		UPDATE HOADON
		SET TongTien = (select (TienPhong*ThoiGian+TienDichVu)-((TienPhong*ThoiGian)*GiamGia) 
		from inserted)
		from inserted,HOADON
		where inserted.MaHoaDon=HOADON.MaHoaDon
	END

GO

ALTER TABLE [dbo].[CHITIETHOADON] ENABLE TRIGGER [updateTienHoaDon]
GO
