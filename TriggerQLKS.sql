USE [QLKhachSan]
GO

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
