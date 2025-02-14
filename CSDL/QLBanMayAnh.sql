/****** Object:  Table [dbo].[tAnhChiTietSP]    Script Date: 10/2/2023 11:23:17 AM ******/
--create database QLBanMayAnh
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](50) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[ID] int NOT NULL,
	[MaHoaDon] int NOT NULL,
	[MaSP] [char](50) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[ID]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](50) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[Model] [nvarchar](55) NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[MaDacTinh] [char](25) NULL,
	[Website] [char](155) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [text] NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
	[MaNuocThuongHieu] [char](25) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create TABLE [dbo].[tHoaDonBan] (
	[MaHoaDon] INT NOT NULL,
	[NgayHoaDon] [char](255) NULL,
	[MaKhachHang] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKichThuocCamBien]    Script Date: 10/2/2023 11:23:17 AM ******/

/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMauSac]    Script Date: 10/2/2023 11:23:17 AM ******/
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 10/2/2023 11:23:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100', N'FujiFilmGFX10001.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100', N'FujiFilmGFX10002.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100', N'FujiFilmGFX10003.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100S', N'FujiFilmGFX100S01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100S', N'FujiFilmGFX100S02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100S', N'FujiFilmGFX100S03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX-H2S', N'FujiFilmX-H2S01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX-H2S', N'FujiFilmX-H2S02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX-H2S', N'FujiFilmX-H2S03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX100V', N'FujiFilmX100V01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX100V', N'FujiFilmX100V02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX100V', N'FujiFilmX100V03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiXP140', N'FujiXP14001.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiXP140', N'FujiXP14002.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiXP140', N'FujiXP14003.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotG7XMarkIII', N'CanonPowerShotG7XMarkIII01.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotG7XMarkIII', N'CanonPowerShotG7XMarkIII02.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotG7XMarkIII', N'CanonPowerShotG7XMarkIII03.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX620HS', N'CanonPowerShotSX620HS01.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX620HS', N'CanonPowerShotSX620HS02.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX620HS', N'CanonPowerShotSX620HS03.png', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX430IS', N'CanonPowerShotSX430IS01.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX430IS', N'CanonPowerShotSX430IS02.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX430IS', N'CanonPowerShotSX430IS03.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanoniNSPiC[C]CV-123A', N'CanoniNSPiC[C]CV-123A01.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanoniNSPiC[C]CV-123A', N'CanoniNSPiC[C]CV-123A02.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanoniNSPiC[C]CV-123A', N'CanoniNSPiC[C]CV-123A03.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonIXUS175', N'CanonIXUS17501.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonIXUS175', N'CanonIXUS17502.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonIXUS175', N'CanonIXUS17503.png', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXD-11SLR', N'MinoltaXD-11SLR01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXD-11SLR', N'MinoltaXD-11SLR02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXD-11SLR', N'MinoltaXD-11SLR03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaX-500SLR', N'MinoltaX-500SLR01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaX-500SLR', N'MinoltaX-500SLR02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaX-500SLR', N'MinoltaX-500SLR03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-MSLR', N'MinoltaXG-MSLR01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-MSLR', N'MinoltaXG-MSLR02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-MSLR', N'MinoltaXG-MSLR03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaMaxxum7000', N'MinoltaMaxxum700001.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaMaxxum7000', N'MinoltaMaxxum700002.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaMaxxum7000', N'MinoltaMaxxum700003.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-1', N'MinoltaXG-101.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-1', N'MinoltaXG-102.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-1', N'MinoltaXG-103.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-7RM5', N'SonyAlphaILCE-7RM501.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-7RM5', N'SonyAlphaILCE-7RM502.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-7RM5', N'SonyAlphaILCE-7RM503.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-6400', N'SonyAlphaILCE-640001.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-6400', N'SonyAlphaILCE-640002.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-6400', N'SonyAlphaILCE-640003.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX0M2G', N'SonyCyberShotDSC-RX0M2G01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX0M2G', N'SonyCyberShotDSC-RX0M2G02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX0M2G', N'SonyCyberShotDSC-RX0M2G03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX10M4', N'SonyCyberShotDSC-RX10M401.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX10M4', N'SonyCyberShotDSC-RX10M402.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX10M4', N'SonyCyberShotDSC-RX10M403.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyZV-E10', N'SonyZV-E1001.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyZV-E10', N'SonyZV-E1002.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyZV-E10', N'SonyZV-E1003.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ6II', N'NikonZ6II01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ6II', N'NikonZ6II02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ6II', N'NikonZ6II03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ7II', N'NikonZ7II01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ7II', N'NikonZ7II02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ7II', N'NikonZ7II03.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZFC', N'NikonZFC01.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZFC', N'NikonZFC02.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZFC', N'NikonZFC03.jpg', NULL)
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ8', N'NikonZ801.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ8', N'NikonZ802.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ8', N'NikonZ803.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ30', N'NikonZ3001.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ30', N'NikonZ3002.jpg', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ30', N'NikonZ3003.jpg', NULL)
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'n', N'Nhựa cứng')
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N't', N'Titan')
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'al', N'Nhôm')

INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmGFX100', N'Máy ảnh FujiFilmGFX100', N'n', NULL, N'fu', N'jap', NULL, NULL, 5, N'GFX100 kết hợp nhiều thập kỷ kinh nghiệm, kiến ​​thức và nghiên cứu thành một chiếc máy ảnh khổ lớn không gương lật giúp xác định lại các ranh giới và giới hạn trong cách các nhiếp ảnh gia và nhà làm phim thể hiện bản thân một cách sáng tạo.', NULL, N'fi', N'nd', N'FujiFilmGFX10001.jpg', NULL, 1200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmGFX100S', N'Máy ảnh FujiFilmGFX100S', N't', NULL, N'fu', N'jap', NULL, NULL, 5, N'Là nhiếp ảnh gia, chúng tôi phấn đấu cho sự hoàn hảo, liên tục tìm kiếm chất lượng hình ảnh cao nhất và kiểm soát tối ưu trong những gì chúng tôi tạo ra. GFX100S kết hợp hai thuộc tính vô giá này trong một thân máy cực kỳ nhỏ gọn và nhẹ. Nó là một công cụ hình ảnh không giống ai; một thế hệ máy ảnh khổ lớn mới phù hợp với thế hệ sáng tạo mới.', NULL, N'fi', N'nd', N'FujiFilmGFX100S01.jpg', NULL, 1200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmX-H2S', N'Máy ảnh FujiFilmX-H2S', N'al', NULL, N'fu', N'jap', NULL, NULL, 5, N'Không bao giờ bỏ lỡ khoảnh khắc quyết định. Trang bị cảm biến X-Trans CMOS 5 HS thế hệ thứ 5 tuyệt đẹp và X-Processor 5 trong một thân máy được thiết kế thời thượng, các ghi ảnh gia và nhà làm phim giờ đây có thể sáng tạo theo nhịp sống và tốc độ hằng số mong muốn.', NULL, N'fi', N'nd', N'FujiFilmX-H2S01.jpg', NULL, 21200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmX100V', N'Máy ảnh FujiFilmX100V', N'n', NULL, N'fu', N'jap', NULL, NULL, 5, N'X100V sở hữu máy thân với thiết kế thời đại có khung trên và bên dưới được tiện ích từ nguyên khối, kết quả là thân máy tính tế và cổ điển với các Cận cảnh bo tròn gọn gàng và thu hút. Được hoàn thiện tốt nhờ lớp phủ satin bóng đẹp, X100V là sự kết hợp hoàn hảo giữa thiết kế và kỹ thuật, chắc chắn sẽ tạo ra các chụp ảnh gia dù ở chế độ nào cũng cảm thấy hân hoan khi chụp ảnh.', NULL, N'fi', N'nd', N'FujiFilmX100V01.jpg', NULL, 31200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiXP140', N'Máy ảnh FujiXP140', N'n', NULL, N'fu', N'jap', NULL, NULL, 5, N'Được trang bị ống kính thu phóng với một ống kính góc rộng linh hoạt bắt đầu từ 28mm*1, XP140 có thu phóng quang 5x cho phép bạn đến gần đối tượng hơn. XP140 kết hợp thu phóng quang 5x với Thu phóng kỹ thuật số thông minh, giúp tăng gấp đôi phạm vi thu phóng ( 10x) đồng thời cung cấp khả năng xử lý hình ảnh tối ưu để chống lại hiện tượng xuống cấp thường xảy ra khi sử dụng thu phóng kỹ thuật số.', NULL, N'fi', N'nd', N'FujiXP14001.jpg', NULL, 51200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonPowerShotG7XMarkIII', N'Máy ảnh Canon PowerShot G7X Mark III', N't', NULL, N'ca', N'jap', NULL, NULL, 5, N'Kế thừa cho PowerShot G7 X Mark II nổi tiếng, chiếc máy ảnh này là sự nâng cấp hoàn hảo cho những ai muốn nhiều hơn là tốc độ chụp nhanh. DIGIC 8 và cảm biến 1.0 inch Stacked CMOS cung cấp chất lượng hình ảnh đặc biệt. Được kết hợp với ống kính f / 1.8-2.8, PowerShot G7 X Mark III hoạt động rất tốt trong điều kiện ánh sáng yếu.', NULL, N'pro', N'nd', N'CanonPowerShotG7XMarkIII01.png', NULL, 81200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonPowerShotSX620HS', N'Máy ảnh Canon PowerShot SX 620 HS', N't', NULL, N'ca', N'jap', NULL, NULL, 5, N'Máy ảnh PowerShot SX620 HS được trang bị bộ xử lý DIGIC 4+ và bộ cảm biến cảm biến CMOS 20.2 megapixel, chắc chắn chất lượng hình ảnh trong điều kiện ánh sáng khác nhau, là sự lựa chọn hoàn hảo cho người đi du lịch giả mạo thích thuận tiện.', NULL, N'pro', N'nd', N'CanonPowerShotSX620HS01.png', NULL, 91200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonPowerShotSX430IS', N'Máy ảnh Canon PowerShot SX 430 IS', N'al', NULL, N'ca', N'jap', NULL, NULL, 5, N'PowerShot SX430 IS là một máy ảnh 20.0 megapixel phù hợp cho những chuyến đi du lịch với khả năng zoom quang học 45x, cho bạn khả năng chụp cận cảnh các đối tượng. Báng pin dạng công thái học cũng giúp thao tác tốt hơn, đặc biệt hữu dụng để ghi video và đảm bảo hình ảnh ổn định. Với tính năng tích hợp Wi-Fi/NFC, việc chia sẻ hình ảnh trên mạng xã hội chưa bao giờ đơn giản đến thế. Bộ xử lý ảnh DIGIC 4+', NULL, N'pro', N'nd', N'CanonPowerShotSX430IS01.png', NULL, 1200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanoniNSPiC[C]CV-123A', N'Máy ảnh Canon iNSP iC[C]CV-123A', N'n', NULL, N'ca', N'jap', NULL, NULL, 5, N'Thỏa sức vui chụp và tức thì mọi lúc, mọi nơi Có sẵn 3 màu để lựa chọn: Bumble Bee Yellow, Bubble Gum Pink và Seaside Blue', NULL, N'pro', N'nd', N'CanoniNSPiC[C]CV-123A01.png', NULL, 71200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonIXUS175', N'Máy ảnh Canon IXUS 175', N'n', NULL, N'ca', N'jap', NULL, NULL, 5, N'Với ống kính zoom quang học 8x, cảm biến CCD 20.0 megapixel và bộ xử lý hình ảnh DIGIC 4+, chiếc máy ảnh Canon IXUS 175 giúp việc chụp ảnh trở nên thú vị và độc đáo hơn. Công nghệ cải tiến với các cài đặt ưu tiên tối đa giúp người dùng sử dụng dễ dàng, chỉ cần ngắm và chụp. Cùng với hình ảnh độ phân giải cao có màu rực rỡ rực rỡ, chế độ chụp ảnh vui nhộn cho phép người dùng sử dụng thoải mái và sáng tạo chỉ bằng một vài cài đặt đơn giản.', NULL, N'pro', N'nd', N'CanonIXUS17501.png', NULL, 91200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaXD-11SLR', N'Máy ảnh Minolta XD-11 SLR', N't', NULL, N'mi', N'jap', NULL, NULL, 5, N'MÁY ẢNH PHIM SLR MINOLTA XD-11 35mm w/ ỐNG KÍNH MD ROKKOR-X 45mm f2.0. Hoạt động + Pin! Đây là máy ảnh Minolta tuyệt vời dành cho sinh viên cũng như những người đam mê. Máy ảnh phim 35mm này đi kèm với ống kính một tiêu cự chính hãng Minolta Rokkor-X 45mm f/2. Máy ảnh này đã được thử nghiệm đầy đủ. Ống kính rõ ràng và không có nấm, sương mù và nấm mốc. Đồng hồ đo ánh sáng đang hoạt động và pin mới. Chỉ cần nạp phim lên và bắt đầu chụp! Điều kiện ------------- Điều kiện làm việc đã được thử nghiệm xuất sắc. Bao gồm pin. Ống kính không có nấm, sương mù và tách biệt. Không có dầu trên lưỡi dao. Đi kèm với một bộ lọc ống kính. Da hơi bong tróc ở một số chỗ. Khó nhận thấy ngoại trừ trong ảnh macro.', NULL, N'fi', N'nd', N'MinoltaXD-11SLR01.jpg', NULL, 61200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaX-500SLR', N'Máy ảnh Minolta X-500 SLR', N't', NULL, N'mi', N'jap', NULL, NULL, 5, N'Minolta X-500 (X-570 ở Hoa Kỳ) là máy ảnh phim SLR 35 mm Aperture-Priority với màn trập mặt phẳng tiêu điểm ngang được điều khiển bằng thạch anh có khả năng đạt dải tốc độ từ 4 giây đến 1/1000 giây, B .X-500 cũng có thể hoạt động ở chế độ thủ công hoàn toàn ở tốc độ màn trập cài đặt sẵn (1 đến 1/1000 giây) với đèn LED đo sáng phù hợp. Đồng bộ hóa flash ở mức 1/60 giây.', NULL, N'fi', N'nd', N'MinoltaX-500SLR01.jpg', NULL, 51200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaXG-MSLR', N'Máy ảnh Minolta XG-M SLR', N'al', NULL, N'mi', N'jap', NULL, NULL, 5, N'Minolta XG-M, được giới thiệu vào năm 1981, là mẫu máy ảnh phim SLR 35mm dòng XG dành cho người tiêu dùng hàng đầu mà Minolta sản xuất từ năm 1977 đến năm 1982. Mẫu máy này, với ký hiệu cho khả năng chụp ảnh của nó. đang được sử dụng với 3,5 khung hình / giây Motor Drive 1, đã được cung cấp trên toàn thế giới nhưng không có ở Nhật Bản, nơi thay vào đó, phiên bản chrome của X-700 đã được ra mắt.', NULL, N'fi', N'nd', N'MinoltaXG-MSLR01.jpg', NULL, 61200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaMaxxum7000', N'Máy ảnh Minolta Maxxum 7000', N'al', NULL, N'mi', N'jap', NULL, NULL, 5, N'Được giới thiệu với thế giới vào năm 1985 với tên gọi “Máy ảnh SLR dễ sử dụng nhất thế giới”, Minolta Maxxum 7000 là một chiếc máy ảnh đáng chú ý vào thời điểm đó và theo nhiều cách, nó là phần mở rộng hợp lý của chiếc máy ảnh SLR lấy nét thủ công cuối cùng mà Minolta từng sản xuất, X-700. Nó bao gồm các phiên bản cải tiến của chương trình X-700, ưu tiên khẩu độ và chế độ phơi sáng thủ công cũng như đo sáng đèn flash qua ống kính, công tắc cảm ứng và tay cầm, đồng thời bổ sung không chỉ lấy nét tự động mà cả chế độ ưu tiên màn trập, vận chuyển phim có động cơ , và một kính ngắm rất sáng với màn hình LED hiển thị trực quan tất cả các thông tin về chế độ phơi sáng, lấy nét và truyền động.', NULL, N'fi', N'nd', N'MinoltaMaxxum700001.jpg', NULL, 71200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaXG-1', N'Máy ảnh Minolta XG-1', N't', NULL, N'mi', N'jap', NULL, NULL, 5, N'Minolta XG-1 là máy ảnh phản xạ ống kính đơn chất lượng hàng đầu có hệ thống điện tử sẽ tự động kiểm soát độ phơi sáng cho bạn, giúp bạn thoải mái hơn để tận hưởng nhiều hơn và sáng tạo hơn. Bạn cũng có thể ghi đè cài đặt tự động của máy đo hoặc đặt máy ảnh ở chế độ vận hành thủ công hoàn toàn. Nhả cửa trập điện từ và đầu đo sáng "Touch Switch" độc đáo cùng nhiều tính năng khác.', NULL, N'fi', N'nd', N'MinoltaXG-101.jpg', NULL, 31200000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyAlphaILCE-7RM5', N'Máy ảnh Sony Alpha ILCE-7RM5', N'n', NULL, N'so', N'jap', NULL, NULL, 5, N'Máy ảnh Sony AR7 Mark V là chiếc máy ảnh thế hệ thứ 5 trong dòng máy mirrorless Full-frame độ phân giải cao của hãng. Máy ảnh có cùng độ phân giải 61MP như A7R IV, nhưng có bộ xử lý Bionz XR mới mạnh hơn. Được trang bị bộ xử lý AI tiên tiến, mở rộng khả năng nhận diện chủ thể để tận dụng tối đa hiệu suất máy ảnh.', NULL, N'pro', N'nd', N'SonyAlphaILCE-7RM501.jpg', NULL, 565000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyAlphaILCE-6400', N'Máy ảnh Sony Alpha ILCE-6400', N'n', NULL, N'so', N'jap', NULL, NULL, 5, N'Máy ảnh Sony A6400 là chiếc máy ảnh mirrorless tiên tiến được thiết kế dành cho cả những người đam mê và chuyên nghiệp. Máy ảnh nổi bật với cảm biến APS-C 24MP, hệ thống lấy nét tự động hàng đầu và các tính năng video tuyệt vời.', NULL, N'pro', N'nd', N'SonyAlphaILCE-640001.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyCyberShotDSC-RX0M2G', N'Máy ảnh Sony CyberShot DSC-RX0M2G', N't', NULL, N'so', N'jap', NULL, NULL, 5, N'Máy ảnh SonyCyberShotDSC-RX0M2G là sự kết hợp giữa thân máy siêu nhỏ gọn, linh hoạt và hiệu quả đáng tin cậy. Máy ảnh hỗ trợ quay phim với tốc độ phân giải lên tới 4K 30p (25p/30p), cùng với khả năng ổn định hình ảnh điện tử mới bổ sung cho phép bạn quay phim cầm tay ổn định, không rung. Đặc biệt, phiên bản này đi kèm theo tay cầm Sony VCT-SGR1 giúp tăng cường chất lượng video, vô cùng lý tưởng để quay video du lịch hoặc quay vlog.', NULL, N'pro', N'nd', N'SonyCyberShotDSC-RX0M2G01.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyCyberShotDSC-RX10M4', N'Máy ảnh Sony CyberShot DSC-RX10M4', N't', NULL, N'so', N'jap', NULL, NULL, 5, N'Máy ảnh SonyCyberShotDSC-RX10M4 là bản nâng cấp cực kỳ đáng giá. Hãng ưu ái giành cho đối tượng khách hàng cần một mẫu máy ảnh siêu zoom quang học nhỏ, gọn, linh hoạt cho mọi chuyến du lịch hoặc công việc của mình.', NULL, N'pro', N'nd', N'SonyCyberShotDSC-RX10M401.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyZV-E10', N'Máy ảnh Sony ZV-E10', N'al', NULL, N'so', N'jap', NULL, NULL, 5, N'Máy ảnh SonyZV-E10 là một chiếc máy ảnh vlog thú vị. Với chất lượng hình ảnh hoàn hảo, chức năng vlog phong phú, màn hình xoay và micro 3 thành viên... Máy ảnh có mọi thứ bạn cần để phát huy sức mạnh thể hiện ý tưởng của mình.', NULL, N'pro', N'nd', N'SonyZV-E1001.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ6II', N'Máy ảnh Nikon Z6 II', N'al', NULL, N'ni', N'jap', NULL, NULL, 5, N'Máy ảnh Nikon Z6 II là chiếc máy ảnh dòng Z linh hoạt nhất, cân bằng giữa tốc độ, công suất, khả năng thiếu sáng và tính năng video nâng cao. Máy ảnh này sẽ là lựa chọn hoàn hảo cho những người cần hiệu suất và độ tin cậy ở cấp độ chuyên nghiệp.', NULL, N'fi', N'nd', N'NikonZ6II01.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ7II', N'Máy ảnh Nikon Z7 II', N'n', NULL, N'ni', N'jap', NULL, NULL, 5, N'Máy ảnh Nikon Z7 II là chiếc máy ảnh có độ phân giải cao trong dòng máy ảnh không gương lật của Nikon. Z7 II hiện có bộ xử lý kép, bộ đệm tốt hơn, thời lượng pin tốt hơn. Và máy ảnh có thể quay video ấn tượng 4K 60 khung hình/giây.', NULL, N'fi', N'nd', N'NikonZ7II01.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZFC', N'Máy ảnh Nikon Z FC', N't', NULL, N'ni', N'jap', NULL, NULL, 5, N'Máy ảnh Nikon ZFC sở hữu thiết kế cổ điển hòa hợp với kỹ thuật hiện đại. Dù bạn đang sáng tạo nội dung hay tái hiện nhãn quan nghệ thuật của mình, đây hẹn hò là sự bổ sung hoàn hảo cho những ai yêu thích chụp ảnh toàn phong cách.', NULL, N'fi', N'nd', N'NikonZFC01.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ8', N'Máy ảnh Nikon Z8', N'n', NULL, N'ni', N'jap', NULL, NULL, 5, N'Máy ảnh Nikon Z8 đã được cải tiến và nâng cấp các tính năng mới mẻ hơn so với các phiên bản trước. Với nhiều đặc điểm được đánh giá cao, mang đến khả năng quay phim và chụp ảnh mạnh mẽ hơn, đáp ứng những yêu cầu cao cấp hơn của người dùng.', NULL, N'fi', N'nd', N'NikonZ801.jpg', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ30', N'Máy ảnh Nikon Z30', N't', NULL, N'ni', N'jap', NULL, NULL, 5, N'Máy ảnh Nikon Z30 là chiếc máy ảnh Nikon nhắm đến những người làm vlog và người sáng tạo nội dung, máy sử dụng cảm biến APS-C (DX) độ phân giải 20MP, có khả năng quay tối đa 4K 30p, trong thân hình nhỏ gọn và quan trọng light size.', NULL, N'fi', N'nd', N'NikonZ3001.jpg', NULL, NULL)
GO
 
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'fu', N'FujiFilm', N'jap')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'ca', N'Canon', N'jap')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'mi', N'Minolta', N'jap')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'so', N'Sony', N'jap')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'ni', N'Nikon', N'jap')

GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dl', N'Du lịch')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dn', N'Doanh nhân')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'ls', N'Lịch sự')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'nd', N'Năng động')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'fi', N'Máy film')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'pro', N'Máy ảnh chuyên nghiệp')

GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'jap', N'Nhật')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'my', N'Mỹ')
GO
ALTER TABLE [dbo].[tAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tAnhSP] CHECK CONSTRAINT [FK_tAnhSP_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tChatLieu] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[tChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tChatLieu]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tHangSX] FOREIGN KEY([MaHangSX])
REFERENCES [dbo].[tHangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tHangSX]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[tLoaiDT] ([MaDT])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiDT]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiSP]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tQuocGia] FOREIGN KEY([MaNuocSX])
REFERENCES [dbo].[tQuocGia] ([MaNuoc])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tQuocGia]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_tKhachHang_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tKhachHang] CHECK CONSTRAINT [FK_tKhachHang_tUser]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tDanhMucSP]
GO
drop database QLBanMayAnh
