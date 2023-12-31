USE [master]
GO
/****** Object:  Database [dbTest]    Script Date: 10.07.2023 01:53:39 ******/
CREATE DATABASE [dbTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbTest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbTest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbTest] SET RECOVERY FULL 
GO
ALTER DATABASE [dbTest] SET  MULTI_USER 
GO
ALTER DATABASE [dbTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbTest] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbTest', N'ON'
GO
ALTER DATABASE [dbTest] SET QUERY_STORE = OFF
GO
USE [dbTest]
GO
/****** Object:  Table [dbo].[tblHareket]    Script Date: 10.07.2023 01:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHareket](
	[HareketID] [smallint] IDENTITY(1,1) NOT NULL,
	[Urun] [tinyint] NULL,
	[Musteri] [tinyint] NULL,
	[Personel] [tinyint] NULL,
	[Fiyat] [smallint] NULL,
 CONSTRAINT [PK_tblHareket] PRIMARY KEY CLUSTERED 
(
	[HareketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMusteri]    Script Date: 10.07.2023 01:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMusteri](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Soyad] [varchar](50) NULL,
 CONSTRAINT [PK_tblMusteri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonel]    Script Date: 10.07.2023 01:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonel](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [varchar](50) NULL,
 CONSTRAINT [PK_tblPersonel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunler]    Script Date: 10.07.2023 01:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunler](
	[UrunID] [tinyint] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](50) NULL,
	[Fiyat] [smallint] NULL,
	[Ader] [tinyint] NULL,
 CONSTRAINT [PK_tblUrunler] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblHareket] ON 

INSERT [dbo].[tblHareket] ([HareketID], [Urun], [Musteri], [Personel], [Fiyat]) VALUES (1, 1, 2, 3, 740)
INSERT [dbo].[tblHareket] ([HareketID], [Urun], [Musteri], [Personel], [Fiyat]) VALUES (2, 2, 2, 3, 800)
INSERT [dbo].[tblHareket] ([HareketID], [Urun], [Musteri], [Personel], [Fiyat]) VALUES (3, 1, 4, 1, 720)
INSERT [dbo].[tblHareket] ([HareketID], [Urun], [Musteri], [Personel], [Fiyat]) VALUES (4, 2, 4, 1, 750)
INSERT [dbo].[tblHareket] ([HareketID], [Urun], [Musteri], [Personel], [Fiyat]) VALUES (5, 4, 4, 1, 30)
INSERT [dbo].[tblHareket] ([HareketID], [Urun], [Musteri], [Personel], [Fiyat]) VALUES (6, 1, 3, 2, 750)
SET IDENTITY_INSERT [dbo].[tblHareket] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMusteri] ON 

INSERT [dbo].[tblMusteri] ([ID], [Ad], [Soyad]) VALUES (1, N'Ali', N'Yıldız')
INSERT [dbo].[tblMusteri] ([ID], [Ad], [Soyad]) VALUES (2, N'Mehmet', N'Çınar')
INSERT [dbo].[tblMusteri] ([ID], [Ad], [Soyad]) VALUES (3, N'Ayşe', N'Öztürk')
INSERT [dbo].[tblMusteri] ([ID], [Ad], [Soyad]) VALUES (4, N'Eda', N'Yılmaz')
SET IDENTITY_INSERT [dbo].[tblMusteri] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPersonel] ON 

INSERT [dbo].[tblPersonel] ([ID], [AdSoyad]) VALUES (1, N'Mehmet Yıldırım')
INSERT [dbo].[tblPersonel] ([ID], [AdSoyad]) VALUES (2, N'Veysel Aslan')
INSERT [dbo].[tblPersonel] ([ID], [AdSoyad]) VALUES (3, N'Özlem Kaya')
SET IDENTITY_INSERT [dbo].[tblPersonel] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUrunler] ON 

INSERT [dbo].[tblUrunler] ([UrunID], [UrunAd], [Fiyat], [Ader]) VALUES (1, N'Çamaşır Makinesi', 750, 10)
INSERT [dbo].[tblUrunler] ([UrunID], [UrunAd], [Fiyat], [Ader]) VALUES (2, N'Buzdolabı', 800, 5)
INSERT [dbo].[tblUrunler] ([UrunID], [UrunAd], [Fiyat], [Ader]) VALUES (3, N'Lcd', 1500, 7)
INSERT [dbo].[tblUrunler] ([UrunID], [UrunAd], [Fiyat], [Ader]) VALUES (4, N'Su Isıtıcı', 50, 20)
INSERT [dbo].[tblUrunler] ([UrunID], [UrunAd], [Fiyat], [Ader]) VALUES (5, N'Bilgisayar', 1700, 8)
SET IDENTITY_INSERT [dbo].[tblUrunler] OFF
GO
ALTER TABLE [dbo].[tblHareket]  WITH CHECK ADD  CONSTRAINT [FK_tblHareket_tblMusteri] FOREIGN KEY([Urun])
REFERENCES [dbo].[tblMusteri] ([ID])
GO
ALTER TABLE [dbo].[tblHareket] CHECK CONSTRAINT [FK_tblHareket_tblMusteri]
GO
ALTER TABLE [dbo].[tblHareket]  WITH CHECK ADD  CONSTRAINT [FK_tblHareket_tblMusteri1] FOREIGN KEY([Musteri])
REFERENCES [dbo].[tblMusteri] ([ID])
GO
ALTER TABLE [dbo].[tblHareket] CHECK CONSTRAINT [FK_tblHareket_tblMusteri1]
GO
ALTER TABLE [dbo].[tblHareket]  WITH CHECK ADD  CONSTRAINT [FK_tblHareket_tblPersonel] FOREIGN KEY([Personel])
REFERENCES [dbo].[tblPersonel] ([ID])
GO
ALTER TABLE [dbo].[tblHareket] CHECK CONSTRAINT [FK_tblHareket_tblPersonel]
GO
ALTER TABLE [dbo].[tblHareket]  WITH CHECK ADD  CONSTRAINT [FK_tblHareket_tblUrunler] FOREIGN KEY([Urun])
REFERENCES [dbo].[tblUrunler] ([UrunID])
GO
ALTER TABLE [dbo].[tblHareket] CHECK CONSTRAINT [FK_tblHareket_tblUrunler]
GO
/****** Object:  StoredProcedure [dbo].[Hareketler]    Script Date: 10.07.2023 01:53:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Hareketler]
as
Select HareketID,UrunAd, (ad + ' '+soyad) as 'Müşteri', tblPersonel.AdSoyad as 'Personel', tblUrunler.Fiyat
From tblHareket
inner join tblUrunler
on tblHareket.Urun=tblUrunler.UrunID
inner join tblMusteri
on tblHareket.Musteri=tblMusteri.ID
inner join tblPersonel
on tblHareket.Personel=tblPersonel.ID
GO
USE [master]
GO
ALTER DATABASE [dbTest] SET  READ_WRITE 
GO
