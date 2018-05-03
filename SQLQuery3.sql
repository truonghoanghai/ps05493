-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-04-09 07:57:29.439

-- tables
-- Table: NhanVien
CREATE TABLE NhanVien (
    MaNV int  NOT NULL IDENTITY,
    TenNV varchar(50)  NOT NULL,
    Gioitinh bit  NOT NULL,
    Ngaysinh date NULL,
    Hinh varchar(50) NULL,
    Email varchar(50)  NOT NULL,
    SoDT varchar(25)  NOT NULL,
    Luong float(20)  NOT NULL,
    Ghichu varchar(500) NULL,
    Capdo bit NOT NULL,
    PhongBan_MaPB varchar(50) NOT NULL,
    CONSTRAINT NhanVien_pk PRIMARY KEY  (MaNV)
);

-- Table: PhongBan
CREATE TABLE PhongBan (
    MaPB varchar(50)  NOT NULL,
    TenPB varchar(50)  NOT NULL,
    CONSTRAINT PhongBan_pk PRIMARY KEY  (MaPB)
);

-- Table: ThanhTich
CREATE TABLE ThanhTich (
    MaGN int  NOT NULL IDENTITY,
    LoaiGN bit  NOT NULL,
    Lydo varchar(50) NULL,
    NgayGN date  NOT NULL,
    NhanVien_MaNV int NULL,
    CONSTRAINT ThanhTich_pk PRIMARY KEY  (MaGN)
);

-- Table: Users
CREATE TABLE Users (
    Username nvarchar(50)  NOT NULL,
    Password nvarchar(50)  NOT NULL,
    Fullname nvarchar(50)  NOT NULL
);
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC TinhDiem
(@nhanvien_manv int)
AS
BEGIN
	Declare @diemkhen int
	Declare @diemphat int
	Set @diemkhen =(Select COUNT(MaGN) from ThanhTich where NhanVien_MaNV like @nhanvien_manv and LoaiGN= 'true')
	Set @diemphat =(Select COUNT(MaGN) from ThanhTich where NhanVien_MaNV like @nhanvien_manv and LoaiGN= 'false')
	Declare @diemis int 
	set @diemis= @diemkhen - @diemphat
	Select @diemis as Diem
END

GO
-- foreign keys
-- Reference: NhanVien_PhongBan (table: NhanVien)
ALTER TABLE NhanVien ADD CONSTRAINT NhanVien_PhongBan
    FOREIGN KEY (PhongBan_MaPB)
    REFERENCES PhongBan (MaPB);

-- Reference: ThanhTich_NhanVien (table: ThanhTich)
ALTER TABLE ThanhTich ADD CONSTRAINT ThanhTich_NhanVien
    FOREIGN KEY (NhanVien_MaNV)
    REFERENCES NhanVien (MaNV);

-- End of file.

