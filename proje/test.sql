USE [master]
GO
/****** Object:  Database [Test]    Script Date: 17.03.2021 22:45:05 ******/
CREATE DATABASE [Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Test] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test] SET  MULTI_USER 
GO
ALTER DATABASE [Test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Test] SET QUERY_STORE = OFF
GO
USE [Test]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Test]
GO
/****** Object:  Table [dbo].[STI]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IslemTur] [smallint] NOT NULL,
	[EvrakNo] [varchar](16) NOT NULL,
	[Tarih] [int] NOT NULL,
	[MalKodu] [varchar](30) NOT NULL,
	[Miktar] [numeric](25, 6) NOT NULL,
	[Fiyat] [numeric](25, 6) NOT NULL,
	[Tutar] [numeric](25, 6) NOT NULL,
	[Birim] [varchar](4) NOT NULL,
 CONSTRAINT [pkSTI] PRIMARY KEY CLUSTERED 
(
	[EvrakNo] ASC,
	[Tarih] ASC,
	[IslemTur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STK]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MalKodu] [varchar](30) NOT NULL,
	[MalAdi] [varchar](50) NOT NULL,
 CONSTRAINT [pkSTK] PRIMARY KEY CLUSTERED 
(
	[MalKodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[STI] ON 

INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (608, 0, N'   24111', 42698, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (609, 1, N'   24111', 42698, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (170, 0, N'  000029', 42782, N'10081 SİEMENS', CAST(1.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (410, 0, N'  000038', 42468, N'10087 SİEMENS', CAST(5.000000 AS Numeric(25, 6)), CAST(5.580000 AS Numeric(25, 6)), CAST(27.900000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (210, 0, N'  000040', 42468, N'10083 SİEMENS', CAST(1.000000 AS Numeric(25, 6)), CAST(3.620000 AS Numeric(25, 6)), CAST(3.620000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (211, 1, N'  000040', 42468, N'10083 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(3.627000 AS Numeric(25, 6)), CAST(7.250000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (810, 0, N'  000049', 42587, N'10082 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(3.828000 AS Numeric(25, 6)), CAST(15.310000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (212, 1, N'  000049', 42587, N'10083 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(3.828000 AS Numeric(25, 6)), CAST(183.740000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (213, 0, N'  000051', 42587, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(3.830000 AS Numeric(25, 6)), CAST(45.960000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (611, 1, N'  000051', 42587, N'10086 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(4.752000 AS Numeric(25, 6)), CAST(9.500000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (214, 0, N'  000058', 42671, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(3.654000 AS Numeric(25, 6)), CAST(43.850000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (215, 1, N'  000058', 42671, N'10083 SİEMENS', CAST(180.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (612, 0, N'  000066', 42735, N'10086 SİEMENS', CAST(10.000000 AS Numeric(25, 6)), CAST(4.608000 AS Numeric(25, 6)), CAST(46.080000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (216, 1, N'  000066', 42735, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(3.712000 AS Numeric(25, 6)), CAST(222.720000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (21, 0, N'  000071', 42843, N'10081 SİEMENS', CAST(3.000000 AS Numeric(25, 6)), CAST(4.610000 AS Numeric(25, 6)), CAST(13.830000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (218, 1, N'  000072', 42843, N'10083 SİEMENS', CAST(184.000000 AS Numeric(25, 6)), CAST(3.710000 AS Numeric(25, 6)), CAST(682.640000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (415, 0, N'  170117', 42752, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (416, 1, N'  170117', 42752, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (194, 0, N'  240117', 42759, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (195, 1, N'  240117', 42759, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (613, 0, N'002668', 42550, N'10086 SİEMENS', CAST(6000.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(86400.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (104, 0, N'00452366', 42804, N'10081 SİEMENS', CAST(15.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (417, 0, N'009374', 42579, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (1, 0, N'009419', 42579, N'10091 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(756.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (812, 0, N'009960', 42580, N'10082 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (219, 0, N'010263', 42581, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (220, 0, N'010324', 42581, N'10083 SİEMENS', CAST(34320.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(398112.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (253, 0, N'010759', 42582, N'10083 SİEMENS', CAST(3120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(36192.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (816, 0, N'010840', 42582, N'10082 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (252, 0, N'011008', 42582, N'10083 SİEMENS', CAST(2160.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(25056.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (251, 0, N'011050', 42582, N'10083 SİEMENS', CAST(11520.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(133632.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (422, 0, N'011310', 42583, N'10087 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(79680.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (476, 0, N'012413', 42586, N'10087 SİEMENS', CAST(5101.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(84676.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (668, 0, N'012463', 42586, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (475, 0, N'012820', 42588, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (667, 0, N'013364', 42590, N'10086 SİEMENS', CAST(11387.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(163972.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (818, 0, N'064091', 42443, N'10082 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(334.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (250, 0, N'080635', 42767, N'10083 SİEMENS', CAST(12000.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139200.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (456, 0, N'080636', 42767, N'10087 SİEMENS', CAST(14400.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(239040.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (820, 0, N'083976', 42779, N'10082 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(27840.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (249, 0, N'085469', 42782, N'10083 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(33408.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (248, 0, N'086188', 42784, N'10083 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(27840.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (455, 0, N'087640', 42788, N'10087 SİEMENS', CAST(5447.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(90420.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (454, 0, N'087796', 42789, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (236, 0, N'088058', 42789, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (235, 0, N'088060', 42789, N'10083 SİEMENS', CAST(3074.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(35658.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (423, 0, N'088061', 42789, N'10087 SİEMENS', CAST(3600.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(59760.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (234, 0, N'088519', 42791, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (233, 0, N'088586', 42791, N'10083 SİEMENS', CAST(526.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(6101.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (232, 0, N'088642', 42791, N'10083 SİEMENS', CAST(2834.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(32874.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (150, 0, N'088941', 42793, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (151, 0, N'088942', 42793, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (152, 0, N'088944', 42793, N'10081 SİEMENS', CAST(2112.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(30412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (153, 0, N'088946', 42793, N'10081 SİEMENS', CAST(8400.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(120960.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (154, 0, N'088947', 42793, N'10081 SİEMENS', CAST(5000.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(72000.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (155, 0, N'088948', 42793, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (616, 0, N'088950', 42793, N'10086 SİEMENS', CAST(468.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(6739.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (156, 0, N'088991', 42793, N'10081 SİEMENS', CAST(690.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(9936.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (424, 0, N'088997', 42793, N'10087 SİEMENS', CAST(12720.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(211152.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (221, 0, N'089008', 42793, N'10083 SİEMENS', CAST(4366.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(50645.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (231, 0, N'089027', 42793, N'10083 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(11136.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (230, 0, N'089028', 42793, N'10083 SİEMENS', CAST(7200.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(83520.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (145, 0, N'089077', 42794, N'10081 SİEMENS', CAST(84.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1209.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (222, 0, N'089078', 42794, N'10083 SİEMENS', CAST(2834.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(32874.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (229, 0, N'089695', 42795, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(55680.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (228, 0, N'089745', 42795, N'10083 SİEMENS', CAST(4366.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(50645.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (227, 0, N'089793', 42795, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (226, 0, N'091903', 42802, N'10083 SİEMENS', CAST(12914.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(149802.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (225, 0, N'092143', 42803, N'10083 SİEMENS', CAST(14400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(167040.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (666, 0, N'092669', 42805, N'10086 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(138240.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (224, 0, N'108446', 42470, N'10083 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(46.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (242, 0, N'124019', 42686, N'10083 SİEMENS', CAST(16080.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(186528.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (241, 0, N'124081', 42686, N'10083 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(27840.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (240, 0, N'124141', 42686, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (239, 0, N'124376', 42686, N'10083 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(111360.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (238, 0, N'124592', 42688, N'10083 SİEMENS', CAST(7200.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(83520.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (223, 0, N'128938', 42707, N'10083 SİEMENS', CAST(8400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(97440.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (237, 0, N'129070', 42707, N'10083 SİEMENS', CAST(33360.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(386976.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (243, 0, N'129088', 42707, N'10083 SİEMENS', CAST(6000.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(69600.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (245, 0, N'129152', 42707, N'10083 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(33408.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (453, 0, N'130533', 42712, N'10087 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(11952.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (451, 0, N'130555', 42712, N'10087 SİEMENS', CAST(15120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(250992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (665, 0, N'131085', 42713, N'10086 SİEMENS', CAST(840.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(12096.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (664, 0, N'131095', 42713, N'10086 SİEMENS', CAST(863.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(12427.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (663, 0, N'131360', 42716, N'10086 SİEMENS', CAST(8977.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(129268.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (662, 0, N'131498', 42716, N'10086 SİEMENS', CAST(9503.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(136843.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (661, 0, N'131825', 42717, N'10086 SİEMENS', CAST(97.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1396.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (263, 0, N'134813', 42726, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(55680.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (450, 0, N'134815', 42726, N'10087 SİEMENS', CAST(1440.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(23904.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (264, 0, N'134893', 42726, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (425, 0, N'134898', 42726, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (265, 0, N'135136', 42727, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (266, 0, N'135147', 42727, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (449, 0, N'135368', 42727, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (619, 0, N'135377', 42727, N'10086 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(10368.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (620, 0, N'135534', 42727, N'10086 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (246, 0, N'135641', 42728, N'10083 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(33408.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (247, 0, N'135643', 42728, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (268, 0, N'147123', 42700, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(55680.000000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (269, 0, N'147289', 42701, N'10083 SİEMENS', CAST(59760.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(693216.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (270, 0, N'147304', 42701, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (271, 0, N'147462', 42701, N'10083 SİEMENS', CAST(4320.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(50112.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (289, 0, N'147646', 42702, N'10083 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(13920.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (254, 0, N'148003', 42703, N'10083 SİEMENS', CAST(4080.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(47328.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (255, 0, N'148015', 42703, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (256, 0, N'148099', 42703, N'10083 SİEMENS', CAST(12000.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139200.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (257, 0, N'148154', 42703, N'10083 SİEMENS', CAST(4320.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(50112.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (276, 0, N'162683', 42746, N'10083 SİEMENS', CAST(18000.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(208800.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (657, 0, N'166202', 42756, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (465, 0, N'166203', 42756, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (654, 0, N'166205', 42756, N'10086 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(41472.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (653, 0, N'166206', 42756, N'10086 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(41472.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (464, 0, N'166207', 42756, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (652, 0, N'166680', 42757, N'10086 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(13824.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (258, 0, N'167150', 42485, N'10083 SİEMENS', CAST(26.000000 AS Numeric(25, 6)), CAST(3.533846 AS Numeric(25, 6)), CAST(91.880000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (650, 0, N'167151', 42758, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (202, 0, N'167241', 42758, N'10081 SİEMENS', CAST(6288.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(90547.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (444, 0, N'288650', 42373, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(3432.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (443, 0, N'288685', 42373, N'10087 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(17160.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (440, 0, N'288773', 42373, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(6864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (438, 0, N'288775', 42373, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(3432.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (630, 0, N'290070', 42380, N'10086 SİEMENS', CAST(2160.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(26784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (631, 0, N'290087', 42380, N'10086 SİEMENS', CAST(5210.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(64604.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (278, 0, N'290196', 42381, N'10083 SİEMENS', CAST(13200.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(122760.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (649, 0, N'290247', 42381, N'10086 SİEMENS', CAST(160.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(1984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (632, 0, N'291996', 42387, N'10086 SİEMENS', CAST(6000.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(74400.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (633, 0, N'292888', 42389, N'10086 SİEMENS', CAST(14400.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(178560.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (435, 0, N'293214', 42390, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(6864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (648, 0, N'293323', 42390, N'10086 SİEMENS', CAST(790.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(9796.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (434, 0, N'293549', 42390, N'10087 SİEMENS', CAST(34560.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(494208.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (433, 0, N'293776', 42392, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(3432.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (432, 0, N'293923', 42392, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(6864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (428, 0, N'294057', 42394, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(3432.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (458, 0, N'294273', 42395, N'10087 SİEMENS', CAST(2160.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(30888.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (429, 0, N'294326', 42395, N'10087 SİEMENS', CAST(1920.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(27456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (262, 0, N'295159', 42468, N'10083 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(46.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (267, 0, N'301694', 42396, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(4464.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (646, 0, N'302272', 42397, N'10086 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(5952.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (294, 0, N'302306', 42397, N'10083 SİEMENS', CAST(19770.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(183861.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (295, 0, N'302378', 42397, N'10083 SİEMENS', CAST(3990.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(37107.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (644, 0, N'303183', 42399, N'10086 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(5952.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (642, 0, N'303325', 42399, N'10086 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(14880.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (641, 0, N'303326', 42399, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(2976.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (640, 0, N'303429', 42399, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(2976.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (296, 0, N'303479', 42399, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(6696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (297, 0, N'303932', 42402, N'10083 SİEMENS', CAST(8400.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(78120.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (298, 0, N'304024', 42403, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(4464.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (299, 0, N'304093', 42403, N'10083 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(8928.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (300, 0, N'304192', 42403, N'10083 SİEMENS', CAST(2840.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(26412.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (272, 0, N'304271', 42403, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(44640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (273, 0, N'304769', 42404, N'10083 SİEMENS', CAST(8400.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(78120.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (274, 0, N'304942', 42405, N'10083 SİEMENS', CAST(1960.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(18228.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (635, 0, N'306064', 42410, N'10086 SİEMENS', CAST(3600.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(44640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (671, 0, N'306860', 42410, N'10086 SİEMENS', CAST(2017.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(25010.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (275, 0, N'307747', 42415, N'10083 SİEMENS', CAST(12960.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(120528.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (259, 0, N'307749', 42415, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(6696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (260, 0, N'307750', 42415, N'10083 SİEMENS', CAST(2910.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(27063.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (261, 0, N'307787', 42415, N'10083 SİEMENS', CAST(6240.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(58032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (277, 0, N'308444', 42416, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(44640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (669, 0, N'308445', 42416, N'10086 SİEMENS', CAST(21417.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(265570.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (279, 0, N'308467', 42416, N'10083 SİEMENS', CAST(7408.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(68894.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (637, 0, N'308499', 42416, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(2976.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (280, 0, N'308543', 42417, N'10083 SİEMENS', CAST(3810.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(35433.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (281, 0, N'308630', 42417, N'10083 SİEMENS', CAST(1680.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(15624.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (282, 0, N'308631', 42417, N'10083 SİEMENS', CAST(20848.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(193886.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (283, 0, N'308633', 42417, N'10083 SİEMENS', CAST(4592.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(42705.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (284, 0, N'308936', 42418, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(44640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (285, 0, N'309428', 42421, N'10083 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(89280.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (286, 0, N'309800', 42422, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(44640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (287, 0, N'310764', 42424, N'10083 SİEMENS', CAST(4680.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(43524.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (430, 0, N'311107', 42425, N'10087 SİEMENS', CAST(21360.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(305448.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (457, 0, N'311250', 42425, N'10087 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(68640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (459, 0, N'311487', 42426, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(3432.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (460, 0, N'311529', 42426, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(6864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (288, 0, N'311819', 42426, N'10083 SİEMENS', CAST(328.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(3050.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (436, 0, N'311824', 42426, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(3432.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (290, 0, N'312054', 42427, N'10083 SİEMENS', CAST(4472.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(41589.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (437, 0, N'312227', 42427, N'10087 SİEMENS', CAST(13680.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(195624.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (462, 0, N'312345', 42429, N'10087 SİEMENS', CAST(1920.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(27456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (439, 0, N'312350', 42429, N'10087 SİEMENS', CAST(2160.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(30888.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (463, 0, N'312351', 42429, N'10087 SİEMENS', CAST(2160.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(30888.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (441, 0, N'312366', 42429, N'10087 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(34320.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (442, 0, N'312380', 42429, N'10087 SİEMENS', CAST(1920.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(27456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (291, 0, N'313049', 42431, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(6696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (292, 0, N'313109', 42431, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(2232.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (293, 0, N'313169', 42432, N'10083 SİEMENS', CAST(392.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(3645.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (672, 0, N'314304', 42436, N'10086 SİEMENS', CAST(2280.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(28272.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (673, 0, N'314820', 42438, N'10086 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(8928.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (675, 0, N'314902', 42438, N'10086 SİEMENS', CAST(12783.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(158509.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (493, 0, N'467382', 42633, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (724, 0, N'467892', 42634, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (494, 0, N'468039', 42635, N'10087 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(19920.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (495, 0, N'468144', 42635, N'10087 SİEMENS', CAST(1440.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(23904.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (499, 0, N'468219', 42635, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (676, 0, N'468352', 42635, N'10086 SİEMENS', CAST(3120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(44928.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (304, 0, N'469989', 42648, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (305, 0, N'470014', 42648, N'10083 SİEMENS', CAST(39360.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(456576.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (306, 0, N'470148', 42648, N'10083 SİEMENS', CAST(3600.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(41760.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (307, 0, N'470155', 42648, N'10083 SİEMENS', CAST(4080.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(47328.000000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (308, 0, N'470411', 42649, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (467, 0, N'470477', 42649, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (679, 0, N'470948', 42651, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (680, 0, N'471220', 42652, N'10086 SİEMENS', CAST(14400.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(207360.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (310, 0, N'471417', 42653, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (325, 0, N'471670', 42654, N'10083 SİEMENS', CAST(7920.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(91872.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (327, 0, N'472571', 42656, N'10083 SİEMENS', CAST(2160.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(25056.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (733, 0, N'657995', 42377, N'10086 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(4.900000 AS Numeric(25, 6)), CAST(19.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (824, 0, N'741852', 43472, N'Emre', CAST(1.000000 AS Numeric(25, 6)), CAST(20.000000 AS Numeric(25, 6)), CAST(20.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (823, 0, N'741852', 44199, N'Berkay2', CAST(1.000000 AS Numeric(25, 6)), CAST(10.000000 AS Numeric(25, 6)), CAST(10.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (827, 0, N'741854', 43502, N'Mert', CAST(1.000000 AS Numeric(25, 6)), CAST(30.000000 AS Numeric(25, 6)), CAST(30.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (828, 0, N'741855', 43632, N'Burak', CAST(1.000000 AS Numeric(25, 6)), CAST(40.000000 AS Numeric(25, 6)), CAST(40.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (830, 0, N'741856', 44031, N'Nil', CAST(1.000000 AS Numeric(25, 6)), CAST(50.000000 AS Numeric(25, 6)), CAST(50.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (832, 0, N'741857', 43993, N'Elif', CAST(1.000000 AS Numeric(25, 6)), CAST(60.000000 AS Numeric(25, 6)), CAST(60.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (833, 0, N'741858', 42897, N'Onur', CAST(1.000000 AS Numeric(25, 6)), CAST(70.000000 AS Numeric(25, 6)), CAST(70.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (834, 0, N'741859', 42746, N'Zehra', CAST(1.000000 AS Numeric(25, 6)), CAST(80.000000 AS Numeric(25, 6)), CAST(80.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (836, 0, N'741860', 42811, N'Ömer', CAST(1.000000 AS Numeric(25, 6)), CAST(90.000000 AS Numeric(25, 6)), CAST(90.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (837, 0, N'741861', 42816, N'Zeliha', CAST(1.000000 AS Numeric(25, 6)), CAST(100.000000 AS Numeric(25, 6)), CAST(100.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (838, 0, N'741862', 42451, N'Cemre', CAST(1.000000 AS Numeric(25, 6)), CAST(110.000000 AS Numeric(25, 6)), CAST(110.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (839, 0, N'741863', 42447, N'Sezen', CAST(1.000000 AS Numeric(25, 6)), CAST(120.000000 AS Numeric(25, 6)), CAST(120.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (841, 0, N'741864', 42539, N'Nihal', CAST(1.000000 AS Numeric(25, 6)), CAST(130.000000 AS Numeric(25, 6)), CAST(130.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (842, 0, N'741865', 42541, N'Adnan', CAST(1.000000 AS Numeric(25, 6)), CAST(140.000000 AS Numeric(25, 6)), CAST(140.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (843, 0, N'741866', 42565, N'Emrullah', CAST(1.000000 AS Numeric(25, 6)), CAST(150.000000 AS Numeric(25, 6)), CAST(150.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (844, 0, N'741867', 42573, N'Taner', CAST(1.000000 AS Numeric(25, 6)), CAST(160.000000 AS Numeric(25, 6)), CAST(160.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (845, 0, N'741868', 42590, N'Gökhan', CAST(1.000000 AS Numeric(25, 6)), CAST(170.000000 AS Numeric(25, 6)), CAST(170.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (846, 0, N'741869', 42614, N'Aslı', CAST(1.000000 AS Numeric(25, 6)), CAST(180.000000 AS Numeric(25, 6)), CAST(180.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (847, 0, N'741870', 42624, N'Berrenur', CAST(1.000000 AS Numeric(25, 6)), CAST(190.000000 AS Numeric(25, 6)), CAST(190.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (848, 0, N'741871', 42644, N'Feyzullah', CAST(1.000000 AS Numeric(25, 6)), CAST(200.000000 AS Numeric(25, 6)), CAST(200.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (849, 0, N'741872', 42664, N'Kürşat', CAST(1.000000 AS Numeric(25, 6)), CAST(210.000000 AS Numeric(25, 6)), CAST(210.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (328, 0, N'755470', 42454, N'10083 SİEMENS', CAST(40800.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(379440.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (681, 0, N'755471', 42454, N'10086 SİEMENS', CAST(24960.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(309504.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (331, 0, N'755496', 42454, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(6696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (332, 0, N'755499', 42454, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(4464.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (333, 0, N'755530', 42454, N'10083 SİEMENS', CAST(3600.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(33480.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (656, 0, N'755531', 42454, N'10086 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(8928.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (301, 0, N'755546', 42454, N'10083 SİEMENS', CAST(7200.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(66960.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (316, 0, N'755808', 42455, N'10083 SİEMENS', CAST(4670.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(43431.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (303, 0, N'755823', 42455, N'10083 SİEMENS', CAST(7200.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(66960.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (468, 0, N'755824', 42455, N'10087 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(34320.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (469, 0, N'755825', 42455, N'10087 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(68640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (348, 0, N'755829', 42455, N'10083 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(89280.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (694, 0, N'755830', 42455, N'10086 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(35712.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (350, 0, N'755833', 42455, N'10083 SİEMENS', CAST(7200.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(66960.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (351, 0, N'755841', 42455, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(44640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (710, 0, N'755842', 42455, N'10086 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(35712.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (354, 0, N'755865', 42455, N'10083 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(89280.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (747, 0, N'757682', 42464, N'10086 SİEMENS', CAST(13920.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(172608.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (314, 0, N'757718', 42464, N'10083 SİEMENS', CAST(26530.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(246729.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (777, 0, N'758225', 42465, N'10086 SİEMENS', CAST(4791.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(59408.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (779, 0, N'758226', 42465, N'10086 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(29760.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (780, 0, N'758227', 42465, N'10086 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(35712.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (782, 0, N'758228', 42465, N'10086 SİEMENS', CAST(717.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(8890.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (711, 0, N'758371', 42465, N'10086 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(5952.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (715, 0, N'758402', 42465, N'10086 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(5952.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (717, 0, N'759445', 42471, N'10086 SİEMENS', CAST(17916.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(222158.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (718, 0, N'759794', 42472, N'10086 SİEMENS', CAST(87.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(1078.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (2, 0, N'768806', 42500, N'10091 SİEMENS', CAST(166.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(3486.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (3, 0, N'769729', 42502, N'10091 SİEMENS', CAST(14.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(294.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (674, 0, N'771746', 42510, N'10086 SİEMENS', CAST(18000.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(259200.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (851, 1, N'852147', 42665, N'Cemre', CAST(1.000000 AS Numeric(25, 6)), CAST(365.000000 AS Numeric(25, 6)), CAST(365.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (721, 0, N'911692', 42380, N'10086 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(4.900000 AS Numeric(25, 6)), CAST(19.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (315, 0, N'924936', 42807, N'10083 SİEMENS', CAST(13486.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(156437.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (471, 0, N'924953', 42807, N'10087 SİEMENS', CAST(3000.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(49800.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (317, 0, N'925457', 42808, N'10083 SİEMENS', CAST(914.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(10602.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (318, 0, N'926485', 42811, N'10083 SİEMENS', CAST(4260.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(49416.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (722, 0, N'927055', 42814, N'10086 SİEMENS', CAST(9708.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(139795.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (726, 0, N'927790', 42816, N'10086 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(17280.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (678, 0, N'928218', 42817, N'10086 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(69120.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (319, 0, N'928228', 42817, N'10083 SİEMENS', CAST(3226.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(37421.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (321, 0, N'928229', 42817, N'10083 SİEMENS', CAST(5174.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(60018.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (322, 0, N'928629', 42818, N'10083 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(111360.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (729, 0, N'929015', 42818, N'10086 SİEMENS', CAST(2880.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(41472.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (731, 0, N'929120', 42819, N'10086 SİEMENS', CAST(15492.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(223084.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (732, 0, N'929121', 42819, N'10086 SİEMENS', CAST(5520.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(79488.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (78, 0, N'929332', 42821, N'10081 SİEMENS', CAST(2352.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(33868.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (309, 0, N'929390', 42821, N'10083 SİEMENS', CAST(14400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(167040.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (60, 0, N'931166', 42825, N'10081 SİEMENS', CAST(2325.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(33480.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (323, 0, N'931958', 42829, N'10083 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(13920.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (42, 0, N'933213', 42832, N'10081 SİEMENS', CAST(1153.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(16603.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (43, 0, N'933215', 42832, N'10081 SİEMENS', CAST(3527.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(50788.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (312, 0, N'933774', 42833, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(55680.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (313, 0, N'933824', 42833, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(55680.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (41, 0, N'933891', 42834, N'10081 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(138240.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (36, 0, N'934457', 42835, N'10081 SİEMENS', CAST(1273.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(18331.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (324, 0, N'934688', 42836, N'10083 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(111360.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (336, 0, N'935877', 42839, N'10083 SİEMENS', CAST(7980.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(92568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (337, 0, N'936390', 42840, N'10083 SİEMENS', CAST(4366.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(50645.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (822, 0, N'963852', 44197, N'Berkay1', CAST(360.000000 AS Numeric(25, 6)), CAST(471.500000 AS Numeric(25, 6)), CAST(169740.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (852, 0, N'9638524', 42614, N'Aslı', CAST(2.000000 AS Numeric(25, 6)), CAST(3.000000 AS Numeric(25, 6)), CAST(6.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (338, 0, N'993466', 42607, N'10083 SİEMENS', CAST(64320.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(746112.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (472, 0, N'993708', 42608, N'10087 SİEMENS', CAST(27360.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(454176.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (358, 0, N'993957', 42609, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (360, 0, N'993993', 42609, N'10083 SİEMENS', CAST(2400.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(27840.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (473, 0, N'994054', 42609, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (320, 0, N'994161', 42609, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (339, 0, N'994210', 42609, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (739, 0, N'994360', 42610, N'10086 SİEMENS', CAST(4080.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(58752.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (740, 0, N'994513', 42611, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (362, 0, N'994579', 42611, N'10083 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(55680.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (340, 0, N'994691', 42611, N'10083 SİEMENS', CAST(4080.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(47328.000000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (510, 0, N'994692', 42611, N'10087 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(15936.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (511, 0, N'999993', 42633, N'10087 SİEMENS', CAST(16740.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(277884.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (477, 1, N'AAA2016000000054', 42374, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (364, 1, N'AAA2016000000133', 42376, N'10083 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(556.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (365, 1, N'AAA2016000000164', 42376, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (478, 1, N'AAA2016000000208', 42378, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (326, 1, N'AAA2016000000254', 42380, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(111.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (341, 1, N'AAA2016000000263', 42380, N'10083 SİEMENS', CAST(1440.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(13392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (342, 1, N'AAA2016000000282', 42381, N'10083 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(278.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (343, 1, N'AAA2016000000289', 42381, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(1116.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (344, 1, N'AAA2016000000290', 42381, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(2232.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (741, 1, N'AAA2016000000309', 42381, N'10086 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(172.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (345, 1, N'AAA2016000000376', 42382, N'10083 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(278.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (346, 1, N'AAA2016000000382', 42383, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(558.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (347, 1, N'AAA2016000000395', 42383, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(558.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (334, 1, N'AAA2016000000399', 42383, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(1116.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (373, 1, N'AAA2016000000422', 42383, N'10083 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(278.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (496, 1, N'AAA2016000000424', 42383, N'10087 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(597.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (374, 1, N'AAA2016000000439', 42383, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(5568.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (696, 1, N'AAA2016000000486', 42384, N'10086 SİEMENS', CAST(396.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(5702.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (355, 1, N'AAA2016000000487', 42384, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(2232.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (356, 1, N'AAA2016000000536', 42388, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (357, 1, N'AAA2016000000556', 42388, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(1116.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (361, 1, N'AAA2016000000596', 42389, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(2232.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (363, 1, N'AAA2016000000599', 42389, N'10083 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(417.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (366, 1, N'AAA2016000000609', 42389, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (367, 1, N'AAA2016000000614', 42389, N'10083 SİEMENS', CAST(15.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(174.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (368, 1, N'AAA2016000000634', 42389, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (369, 1, N'AAA2016000000658', 42390, N'10083 SİEMENS', CAST(16.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(185.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (370, 1, N'AAA2016000000682', 42390, N'10083 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(417.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (371, 1, N'AAA2016000000746', 42394, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (502, 1, N'AAA2016000000835', 42395, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (372, 1, N'AAA2016000000879', 42396, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (375, 1, N'AAA2016000000980', 42398, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (376, 1, N'AAA2016000000986', 42398, N'10083 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(8928.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (377, 1, N'AAA2016000000994', 42398, N'10083 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(4464.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (352, 1, N'AAA2016000000995', 42398, N'10083 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(11160.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (503, 1, N'AAA2016000001000', 42398, N'10087 SİEMENS', CAST(8.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(132.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (378, 1, N'AAA2016000001007', 42399, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(9.300000 AS Numeric(25, 6)), CAST(2232.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (505, 1, N'AAA2016000001043', 42401, N'10087 SİEMENS', CAST(150.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(2490.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (704, 1, N'AAA2016000001400', 42410, N'10086 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(1488.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (506, 1, N'AAA2016000001426', 42411, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (395, 1, N'AAA2016000001450', 42411, N'10083 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(417.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (379, 1, N'AAA2016000001535', 42416, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (743, 1, N'AAA2016000001547', 42416, N'10086 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(57.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (381, 1, N'AAA2016000001563', 42417, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (508, 1, N'AAA2016000001579', 42418, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (359, 1, N'AAA2016000001621', 42419, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (382, 1, N'AAA2016000001705', 42423, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (535, 1, N'AAA2016000001709', 42423, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (536, 1, N'AAA2016000001747', 42424, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (383, 1, N'AAA2016000001760', 42425, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (384, 1, N'AAA2016000001777', 42425, N'10083 SİEMENS', CAST(144.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1670.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (401, 1, N'AAA2016000001864', 42429, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (512, 1, N'AAA2016000001866', 42429, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (402, 1, N'AAA2016000001883', 42429, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (744, 1, N'AAA2016000001890', 42429, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(12.400000 AS Numeric(25, 6)), CAST(2976.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (403, 1, N'AAA2016000001891', 42429, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (404, 1, N'AAA2016000001930', 42430, N'10083 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(278.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (513, 1, N'AAA2016000001947', 42430, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (385, 1, N'AAA2016000002022', 42433, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (386, 1, N'AAA2016000002067', 42436, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (480, 1, N'AAA2016000002070', 42436, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (387, 1, N'AAA2016000002104', 42437, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (388, 1, N'AAA2016000002120', 42437, N'10083 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1392.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (389, 1, N'AAA2016000002265', 42440, N'10083 SİEMENS', CAST(216.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2505.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (481, 1, N'AAA2016000002325', 42444, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (390, 1, N'AAA2016000002327', 42444, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (391, 1, N'AAA2016000002361', 42445, N'10083 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(278.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (392, 1, N'AAA2016000002457', 42447, N'10083 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(417.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (393, 1, N'AAA2016000002480', 42447, N'10083 SİEMENS', CAST(20.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(232.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (394, 1, N'AAA2016000002520', 42450, N'10083 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(278.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (483, 1, N'AAA2016000002554', 42451, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (749, 1, N'AAA2016000002591', 42452, N'10086 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (484, 1, N'AAA2016000002809', 42459, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (380, 1, N'AAA2016000002852', 42460, N'10083 SİEMENS', CAST(100.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(1160.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (397, 1, N'AAA2016000002881', 42460, N'10083 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(556.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (515, 1, N'AAA2016000002909', 42460, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (398, 1, N'AAA2016000002915', 42460, N'10083 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(556.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (399, 1, N'AAA2016000002978', 42465, N'10083 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(23.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (400, 1, N'AAA2016000002980', 42465, N'10083 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(417.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (486, 1, N'AAA2016000003257', 42475, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (405, 1, N'AAA2016000003290', 42478, N'10083 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(8352.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (487, 1, N'AAA2016000003291', 42478, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (406, 1, N'AAA2016000003322', 42479, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (407, 1, N'AAA2016000003371', 42480, N'10083 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(139.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (516, 1, N'AAA2016000003382', 42480, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (408, 1, N'AAA2016000003424', 42482, N'10083 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(2784.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (409, 1, N'AAA2016000003506', 42486, N'10083 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(696.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (751, 1, N'AAA2016000003539', 42486, N'10086 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (752, 1, N'AAA2016000003551', 42487, N'10086 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(172.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (489, 1, N'AAA2016000003642', 42488, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (517, 1, N'AAA2016000003735', 42493, N'10087 SİEMENS', CAST(20.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(332.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (396, 1, N'AAA2016000003831', 42495, N'10083 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(11.600000 AS Numeric(25, 6)), CAST(417.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (492, 1, N'AAA2016000003964', 42501, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (753, 1, N'AAA2016000004197', 42510, N'10086 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (725, 1, N'AAA2016000004205', 42510, N'10086 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (756, 1, N'AAA2016000004378', 42516, N'10086 SİEMENS', CAST(50.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(720.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (518, 1, N'AAA2016000004490', 42520, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (728, 1, N'AAA2016000004532', 42520, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (519, 1, N'AAA2016000004602', 42521, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (520, 1, N'AAA2016000004764', 42528, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (521, 1, N'AAA2016000004858', 42531, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (497, 1, N'AAA2016000005084', 42541, N'10087 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(597.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (522, 1, N'AAA2016000005102', 42542, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (523, 1, N'AAA2016000005154', 42543, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (524, 1, N'AAA2016000005201', 42544, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (525, 1, N'AAA2016000005210', 42544, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (526, 1, N'AAA2016000005219', 42544, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (763, 1, N'AAA2016000005231', 42544, N'10086 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (767, 1, N'AAA2016000005254', 42544, N'10086 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(518.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (527, 1, N'AAA2016000005346', 42549, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (504, 1, N'AAA2016000005385', 42550, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (528, 1, N'AAA2016000005460', 42552, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (530, 1, N'AAA2016000005614', 42570, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (507, 1, N'AAA2016000005696', 42576, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (738, 1, N'AAA2016000005895', 42583, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (770, 1, N'AAA2016000005927', 42584, N'10086 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (773, 1, N'AAA2016000005941', 42584, N'10086 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(6912.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (774, 1, N'AAA2016000005965', 42584, N'10086 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (805, 1, N'AAA2016000005970', 42585, N'10086 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (806, 1, N'AAA2016000006040', 42590, N'10086 SİEMENS', CAST(50.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(720.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (531, 1, N'AAA2016000006231', 42597, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (532, 1, N'AAA2016000006458', 42606, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (533, 1, N'AAA2016000006494', 42607, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (534, 1, N'AAA2016000006518', 42608, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (559, 1, N'AAA2016000006545', 42608, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (538, 1, N'AAA2016000006559', 42608, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (539, 1, N'AAA2016000006569', 42611, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (540, 1, N'AAA2016000006616', 42613, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (783, 1, N'AAA2016000006757', 42614, N'10086 SİEMENS', CAST(5.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(72.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (784, 1, N'AAA2016000007076', 42635, N'10086 SİEMENS', CAST(50.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(720.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (785, 1, N'AAA2016000007134', 42639, N'10086 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (786, 1, N'AAA2016000007137', 42639, N'10086 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(172.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (787, 1, N'AAA2016000007171', 42640, N'10086 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(172.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (541, 1, N'AAA2016000007198', 42640, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (542, 1, N'AAA2016000007221', 42641, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (788, 1, N'AAA2016000007341', 42643, N'10086 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(6912.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (544, 1, N'AAA2016000007355', 42643, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (789, 1, N'AAA2016000007397', 42646, N'10086 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (545, 1, N'AAA2016000007726', 42656, N'10087 SİEMENS', CAST(10.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(166.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (546, 1, N'AAA2016000007735', 42656, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (547, 1, N'AAA2016000007736', 42656, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (548, 1, N'AAA2016000007797', 42660, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (549, 1, N'AAA2016000007847', 42661, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (550, 1, N'AAA2016000007935', 42663, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (794, 1, N'AAA2016000008018', 42667, N'10086 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(28.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (551, 1, N'AAA2016000008143', 42670, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (552, 1, N'AAA2016000008145', 42670, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (766, 1, N'AAA2016000008236', 42674, N'10086 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(172.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (795, 1, N'AAA2016000008266', 42675, N'10086 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(172.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (575, 1, N'AAA2016000008422', 42678, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (576, 1, N'AAA2016000008465', 42682, N'10087 SİEMENS', CAST(1.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (800, 1, N'AAA2016000008632', 42688, N'10086 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (801, 1, N'AAA2016000008715', 42690, N'10086 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (529, 1, N'AAA2016000008761', 42691, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (553, 1, N'AAA2016000008813', 42692, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (554, 1, N'AAA2016000008857', 42692, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (802, 1, N'AAA2016000008970', 42696, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (803, 1, N'AAA2016000009066', 42698, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (555, 1, N'AAA2016000009125', 42699, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (804, 1, N'AAA2016000009127', 42699, N'10086 SİEMENS', CAST(100.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1440.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (556, 1, N'AAA2016000009151', 42699, N'10087 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(597.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (557, 1, N'AAA2016000009199', 42702, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (558, 1, N'AAA2016000009222', 42703, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (560, 1, N'AAA2016000009231', 42703, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (537, 1, N'AAA2016000009274', 42703, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (582, 1, N'AAA2016000009392', 42706, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (807, 1, N'AAA2016000009460', 42710, N'10086 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (561, 1, N'AAA2016000009530', 42711, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (562, 1, N'AAA2016000009615', 42716, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (781, 1, N'AAA2016000009669', 42718, N'10086 SİEMENS', CAST(140.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(2016.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (563, 1, N'AAA2017000000009', 42737, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (564, 1, N'AAA2017000000040', 42738, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (543, 1, N'AAA2017000000056', 42738, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (565, 1, N'AAA2017000000081', 42739, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(484.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (566, 1, N'AAA2017000000269', 42745, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (567, 1, N'AAA2017000000275', 42745, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (568, 1, N'AAA2017000000340', 42746, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (569, 1, N'AAA2017000000409', 42748, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (793, 1, N'AAA2017000000455', 42751, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (570, 1, N'AAA2017000000456', 42751, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (571, 1, N'AAA2017000000465', 42751, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (572, 1, N'AAA2017000000470', 42751, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (573, 1, N'AAA2017000000476', 42751, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (574, 1, N'AAA2017000000482', 42751, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(996.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (797, 1, N'AAA2017000000485', 42751, N'10086 SİEMENS', CAST(52.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(748.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (577, 1, N'AAA2017000000486', 42751, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(1992.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (579, 1, N'AAA2017000000665', 42754, N'10087 SİEMENS', CAST(28.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(464.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (599, 1, N'AAA2017000000764', 42759, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (799, 1, N'AAA2017000000765', 42759, N'10086 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (141, 1, N'AAA2017000001790', 42794, N'10081 SİEMENS', CAST(39.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(670.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (580, 1, N'AAA2017000001817', 42794, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (142, 1, N'AAA2017000001828', 42794, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (143, 1, N'AAA2017000001831', 42794, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (144, 1, N'AAA2017000001832', 42794, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (135, 1, N'AAA2017000001848', 42795, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (136, 1, N'AAA2017000001849', 42795, N'10081 SİEMENS', CAST(8.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(115.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (115, 1, N'AAA2017000001888', 42797, N'10081 SİEMENS', CAST(20.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(344.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (113, 1, N'AAA2017000001931', 42800, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (114, 1, N'AAA2017000001945', 42800, N'10081 SİEMENS', CAST(108.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1857.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (603, 1, N'AAA2017000002165', 42809, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (581, 1, N'AAA2017000002629', 42825, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(1212.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (604, 1, N'AAA2017000002633', 42825, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(1212.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (605, 1, N'AAA2017000002650', 42825, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(484.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (59, 1, N'AAA2017000002666', 42825, N'10081 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(619.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (583, 1, N'AAA2017000002855', 42835, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(4848.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (35, 1, N'AAA2017000002887', 42836, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (607, 1, N'AAA2017000003096', 42845, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (584, 1, N'AAD2016000000018', 42377, N'10087 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(1716.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (585, 1, N'AAD2016000000067', 42389, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (586, 1, N'AAD2016000000077', 42395, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.300000 AS Numeric(25, 6)), CAST(6864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (587, 1, N'AAD2016000000143', 42423, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (588, 1, N'AAD2016000000246', 42459, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (589, 1, N'AAD2016000000286', 42474, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (590, 1, N'AAD2016000000334', 42486, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (591, 1, N'AAD2016000000378', 42501, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (592, 1, N'AAD2016000000440', 42524, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (593, 1, N'AAD2016000000453', 42529, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (594, 1, N'AAD2016000000600', 42586, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (595, 1, N'AAD2016000000654', 42613, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(199.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (596, 1, N'AAD2016000000908', 42703, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (578, 1, N'AAD2016000000930', 42710, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (597, 1, N'AAD2016000000939', 42711, N'10087 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(7968.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (598, 1, N'AAD2016000000942', 42711, N'10087 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(242.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (601, 1, N'AAD2016000000988', 42731, N'10087 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(3984.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (606, 1, N'AAD2017000000066', 42765, N'10087 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(20.200000 AS Numeric(25, 6)), CAST(1212.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (173, 1, N'AAD2017000000089', 42772, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (157, 1, N'AAD2017000000136', 42793, N'10081 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(619.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (158, 1, N'AAD2017000000139', 42793, N'10081 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(825.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (44, 1, N'AAD2017000000265', 42832, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (600, 1, N'AAN2016000000748', 42460, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (602, 1, N'AAN2016000000796', 42467, N'10087 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(16.600000 AS Numeric(25, 6)), CAST(398.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (175, 1, N'AAN2017000000184', 42767, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (172, 1, N'AAN2017000000218', 42772, N'10081 SİEMENS', CAST(6.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(103.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (169, 1, N'AAN2017000000294', 42786, N'10081 SİEMENS', CAST(21.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(361.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (112, 1, N'AAN2017000000385', 42801, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (105, 1, N'AAN2017000000394', 42802, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (68, 1, N'AAN2017000000556', 42823, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (61, 1, N'AAN2017000000575', 42824, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (204, 1, N'ABB2017000000444', 42754, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (187, 1, N'ABB2017000000576', 42760, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (178, 1, N'ABB2017000000660', 42765, N'10081 SİEMENS', CAST(22.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(316.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (146, 1, N'ABB2017000001275', 42794, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (111, 1, N'ABB2017000001394', 42801, N'10081 SİEMENS', CAST(3.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(51.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (47, 1, N'ABB2017000002067', 42831, N'10081 SİEMENS', CAST(3.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(51.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (15, 1, N'ABB2017000002359', 42844, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (16, 1, N'ABB2017000002370', 42844, N'10081 SİEMENS', CAST(15.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(258.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (14, 1, N'ABB2017000002447', 42849, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (192, 1, N'ACC2017000000802', 42759, N'10081 SİEMENS', CAST(71.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1022.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (193, 1, N'ACC2017000000804', 42759, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (106, 1, N'ACC2017000002073', 42802, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (98, 1, N'ACC2017000002310', 42810, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (84, 1, N'ACC2017000002574', 42818, N'10081 SİEMENS', CAST(4.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(68.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (67, 1, N'ACC2017000002725', 42823, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (28, 1, N'ACC2017000003287', 42839, N'10081 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(34.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (17, 1, N'ACC2017000003378', 42844, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (179, 1, N'ACL2017000000177', 42763, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (171, 1, N'ACL2017000000219', 42775, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (168, 1, N'ACL2017000000286', 42787, N'10081 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(34.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (166, 1, N'ACL2017000000317', 42789, N'10081 SİEMENS', CAST(8.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(137.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (23, 1, N'ACL2017000000558', 42842, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (176, 1, N'AGB2017000000130', 42767, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (177, 1, N'AGB2017000000131', 42767, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (62, 1, N'AGB2017000000325', 42824, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (22, 1, N'AGB2017000000367', 42842, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (4, 1, N'AHK2016000011134', 42502, N'10091 SİEMENS', CAST(166.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(3486.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (5, 1, N'AHK2016000011310', 42504, N'10091 SİEMENS', CAST(14.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(294.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (6, 1, N'AHK2016000016672', 42586, N'10091 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(756.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (207, 1, N'AHK2017000001495', 42753, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (208, 1, N'AHK2017000001511', 42753, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(345.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (206, 1, N'AHK2017000001711', 42754, N'10081 SİEMENS', CAST(11.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(158.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (196, 1, N'AHK2017000002104', 42759, N'10081 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(13824.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (184, 1, N'AHK2017000002128', 42760, N'10081 SİEMENS', CAST(49.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(705.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (185, 1, N'AHK2017000002138', 42760, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (186, 1, N'AHK2017000002143', 42760, N'10081 SİEMENS', CAST(360.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(5184.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (122, 1, N'AHK2017000005166', 42795, N'10081 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(825.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (123, 1, N'AHK2017000005167', 42795, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (124, 1, N'AHK2017000005168', 42795, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (125, 1, N'AHK2017000005169', 42795, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (126, 1, N'AHK2017000005171', 42795, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (121, 1, N'AHK2017000005217', 42796, N'10081 SİEMENS', CAST(3.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(51.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (120, 1, N'AHK2017000005218', 42796, N'10081 SİEMENS', CAST(15.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(258.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (109, 1, N'AHK2017000005601', 42802, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (100, 1, N'AHK2017000005972', 42808, N'10081 SİEMENS', CAST(9.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(154.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (93, 1, N'AHK2017000006506', 42815, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (75, 1, N'AHK2017000006926', 42821, N'10081 SİEMENS', CAST(15.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(258.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (69, 1, N'AHK2017000007057', 42822, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (70, 1, N'AHK2017000007091', 42822, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(2064.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (65, 1, N'AHK2017000007206', 42823, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (63, 1, N'AHK2017000007323', 42824, N'10081 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(619.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (58, 1, N'AHK2017000007422', 42825, N'10081 SİEMENS', CAST(72.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1238.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (57, 1, N'AHK2017000007474', 42825, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (48, 1, N'AHK2017000007760', 42830, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (33, 1, N'AHK2017000008045', 42836, N'10081 SİEMENS', CAST(330.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(5676.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (34, 1, N'AHK2017000008079', 42836, N'10081 SİEMENS', CAST(6.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(103.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (27, 1, N'AHK2017000008353', 42839, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (12, 1, N'AHK2017000008969', 42849, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (149, 1, N'AIH2017000000022', 42794, N'10081 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(4.798374 AS Numeric(25, 6)), CAST(3454.830000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (92, 1, N'AIH2017000000026', 42815, N'10081 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(4.822713 AS Numeric(25, 6)), CAST(5787.250000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (72, 1, N'AIH2017000000030', 42822, N'10081 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(4.948654 AS Numeric(25, 6)), CAST(2375.350000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (73, 1, N'AIH2017000000031', 42822, N'10081 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(4.948664 AS Numeric(25, 6)), CAST(23753.580000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (56, 1, N'AIH2017000000038', 42825, N'10081 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(5.336145 AS Numeric(25, 6)), CAST(6403.370000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (37, 1, N'AIH2017000000043', 42835, N'10081 SİEMENS', CAST(10800.000000 AS Numeric(25, 6)), CAST(5.317023 AS Numeric(25, 6)), CAST(57423.850000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (18, 1, N'AIH2017000000046', 42844, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(5.341510 AS Numeric(25, 6)), CAST(1281.960000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (174, 1, N'AIZ2017000000447', 42772, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (101, 1, N'AIZ2017000000865', 42808, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (86, 1, N'AIZ2017000000965', 42818, N'10081 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(619.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (74, 1, N'AIZ2017000001002', 42821, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (71, 1, N'AIZ2017000001016', 42822, N'10081 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(8256.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (64, 1, N'AIZ2017000001051', 42824, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (51, 1, N'AIZ2017000001100', 42829, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (13, 1, N'AIZ2017000001329', 42849, N'10081 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(619.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (197, 1, N'APP2017000000265', 42759, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (182, 1, N'APP2017000000296', 42761, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (181, 1, N'APP2017000000312', 42762, N'10081 SİEMENS', CAST(6.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(103.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (147, 1, N'EAA2017000000296', 42794, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (99, 1, N'EAA2017000000334', 42808, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(1032.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (180, 1, N'EAD2017000000033', 42763, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (85, 1, N'EAD2017000000086', 42818, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (205, 1, N'EBB2017000000180', 42754, N'10081 SİEMENS', CAST(24.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(412.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (201, 1, N'EBB2017000000227', 42759, N'10081 SİEMENS', CAST(6.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(103.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (148, 1, N'EBB2017000000462', 42794, N'10081 SİEMENS', CAST(48.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(825.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (87, 1, N'EBU2017000000150', 42817, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (102, 1, N'ECC2017000000569', 42807, N'10081 SİEMENS', CAST(9.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(154.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (30, 1, N'ECC2017000000809', 42838, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (209, 1, N'EHK2017000000436', 42753, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (198, 1, N'EHK2017000000581', 42759, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (199, 1, N'EHK2017000000588', 42759, N'10081 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(6912.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (183, 1, N'EHK2017000000597', 42760, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (131, 1, N'EHK2017000001632', 42795, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (132, 1, N'EHK2017000001633', 42795, N'10081 SİEMENS', CAST(60.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(864.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (133, 1, N'EHK2017000001637', 42795, N'10081 SİEMENS', CAST(80.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1152.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (134, 1, N'EHK2017000001638', 42795, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3456.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (90, 1, N'EHK2017000002098', 42816, N'10081 SİEMENS', CAST(3.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(51.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (24, 1, N'EHK2017000002774', 42842, N'10081 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(20640.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (19, 1, N'EHK2017000002813', 42844, N'10081 SİEMENS', CAST(8.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(137.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (11, 1, N'EHK2017000002969', 42849, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (10, 1, N'EHK2017000002994', 42850, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(2064.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (167, 1, N'EIZ2017000000289', 42788, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (103, 1, N'EIZ2017000000393', 42807, N'10081 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(619.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (94, 1, N'EIZ2017000000431', 42814, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (66, 1, N'EIZ2017000000486', 42823, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (29, 1, N'EIZ2017000000559', 42838, N'10081 SİEMENS', CAST(2.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(34.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (95, 0, N'FYS2017000000262', 42812, N'10081 SİEMENS', CAST(1.000000 AS Numeric(25, 6)), CAST(25.800000 AS Numeric(25, 6)), CAST(25.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (88, 0, N'HA109831', 42817, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (89, 1, N'HA109831', 42817, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (49, 0, N'HA109867', 42830, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (50, 1, N'HA109867', 42830, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (96, 0, N'HB109804', 42811, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (97, 1, N'HB109804', 42811, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (118, 0, N'HC109759', 42796, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (119, 1, N'HC109759', 42796, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (127, 0, N'HD109752', 42795, N'10081 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (128, 1, N'HD109752', 42795, N'10081 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (129, 0, N'HG109751', 42795, N'10081 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (130, 1, N'HG109751', 42795, N'10081 SİEMENS', CAST(960.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (116, 0, N'HP109762', 42796, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (117, 1, N'HP109762', 42796, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (25, 0, N'HZ109906', 42842, N'10081 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (26, 1, N'HZ109906', 42842, N'10081 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (31, 0, N'IF016988', 42837, N'10081 SİEMENS', CAST(330.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(5676.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (108, 0, N'IF125461', 42802, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(206.400000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (110, 0, N'IF189870', 42801, N'10081 SİEMENS', CAST(15.000000 AS Numeric(25, 6)), CAST(17.200000 AS Numeric(25, 6)), CAST(258.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (32, 0, N'II016988', 42837, N'10081 SİEMENS', CAST(330.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (107, 0, N'II125461', 42802, N'10081 SİEMENS', CAST(12.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (190, 0, N'II836777', 42760, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (140, 1, N'İH961681', 42794, N'10081 SİEMENS', CAST(720.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (91, 1, N'İH961688', 42815, N'10081 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (76, 1, N'İH961694', 42821, N'10081 SİEMENS', CAST(4800.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (77, 1, N'İH961695', 42821, N'10081 SİEMENS', CAST(480.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (55, 1, N'İH961704', 42825, N'10081 SİEMENS', CAST(1200.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (38, 1, N'İH961710', 42835, N'10081 SİEMENS', CAST(10800.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (20, 1, N'İH961713', 42844, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (191, 0, N'OZE2017000000297', 42760, N'10081 SİEMENS', CAST(120.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1728.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (7, 0, N'SM02016000006795', 42502, N'10091 SİEMENS', CAST(14.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(101.430000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (139, 0, N'SM02017000004335', 42794, N'10081 SİEMENS', CAST(84.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(387.070000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (79, 0, N'SM02017000005555', 42821, N'10081 SİEMENS', CAST(2352.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(10838.020000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (54, 0, N'SM02017000005945', 42825, N'10081 SİEMENS', CAST(2325.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(10713.600000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (45, 0, N'SM02017000006444', 42832, N'10081 SİEMENS', CAST(3527.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(16252.420000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (46, 0, N'SM02017000006475', 42832, N'10081 SİEMENS', CAST(1153.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(5313.020000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (8, 0, N'SM12016000009867', 42500, N'10091 SİEMENS', CAST(166.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(1202.670000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (9, 0, N'SM12016000015789', 42579, N'10091 SİEMENS', CAST(36.000000 AS Numeric(25, 6)), CAST(21.000000 AS Numeric(25, 6)), CAST(238.140000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (203, 0, N'SM12017000002136', 42758, N'10081 SİEMENS', CAST(6288.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(28975.100000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (159, 0, N'SM12017000005279', 42793, N'10081 SİEMENS', CAST(690.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(3179.520000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (160, 0, N'SM12017000005280', 42793, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1105.920000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (161, 0, N'SM12017000005291', 42793, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1105.920000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (162, 0, N'SM12017000005292', 42793, N'10081 SİEMENS', CAST(5000.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(23040.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (163, 0, N'SM12017000005293', 42793, N'10081 SİEMENS', CAST(8400.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(38707.200000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (164, 0, N'SM12017000005294', 42793, N'10081 SİEMENS', CAST(2112.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(9732.100000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (165, 0, N'SM12017000005295', 42793, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(1105.920000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (40, 0, N'SM12017000008716', 42834, N'10081 SİEMENS', CAST(9600.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(44236.800000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (39, 0, N'SM12017000008912', 42835, N'10081 SİEMENS', CAST(1273.000000 AS Numeric(25, 6)), CAST(14.400000 AS Numeric(25, 6)), CAST(5865.980000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (188, 0, N'YY201700', 42760, N'10081 SİEMENS', CAST(3600.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (189, 1, N'YY201700', 42760, N'10081 SİEMENS', CAST(3600.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (82, 0, N'YY201709', 42821, N'10081 SİEMENS', CAST(3120.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (80, 1, N'YY201709', 42821, N'10081 SİEMENS', CAST(3120.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (52, 0, N'YY201710', 42829, N'10081 SİEMENS', CAST(10800.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (53, 1, N'YY201710', 42829, N'10081 SİEMENS', CAST(10800.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (137, 0, N'ZM968281', 42795, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
GO
INSERT [dbo].[STI] ([ID], [IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]) VALUES (138, 1, N'ZM968281', 42795, N'10081 SİEMENS', CAST(240.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), CAST(0.000000 AS Numeric(25, 6)), N'ADET')
SET IDENTITY_INSERT [dbo].[STI] OFF
SET IDENTITY_INSERT [dbo].[STK] ON 

INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (6, N'10081 SİEMENS', N'NB MONOFAZE OTOMATLAR')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (7, N'10082 SİEMENS', N'5SQ2160-2YA10 B 10A  OTOMATİK SİGORTA')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (8, N'10083 SİEMENS', N'5SQ2160-2YA16 B 16A  OTOMATİK SİGORTA')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (9, N'10085 SİEMENS', N'5SQ2160-2YA25 B 25A  OTOMATİK SİGORTA')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (10, N'10086 SİEMENS', N'5SQ2160-2YA32 B 32A  OTOMATİK SİGORTA')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (11, N'10087 SİEMENS', N'5SQ2160-2YA40 B 40A  OTOMATİK SİGORTA')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (204, N'BRKY', N'Berkay Ürün')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (201, N'Test01', N'Test Mal Adı 01')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (202, N'Test02', N'Test Mal Adı 02')
INSERT [dbo].[STK] ([ID], [MalKodu], [MalAdi]) VALUES (203, N'Test03', N'Test Mal Adı 03')
SET IDENTITY_INSERT [dbo].[STK] OFF
/****** Object:  StoredProcedure [dbo].[usp_STIDelete]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_STIDelete] 
    @IslemTur smallint,
    @EvrakNo varchar(16),
    @Tarih int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[STI]
	WHERE  [IslemTur] = @IslemTur
	       AND [EvrakNo] = @EvrakNo
	       AND [Tarih] = @Tarih

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STIInsert]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_STIInsert] 
    @IslemTur smallint,
    @EvrakNo varchar(16),
    @Tarih int,
    @MalKodu varchar(30),
    @Miktar numeric(25, 6),
    @Fiyat numeric(25, 6),
    @Tutar numeric(25, 6),
    @Birim varchar(4)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[STI] ([IslemTur], [EvrakNo], [Tarih], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim])
	SELECT @IslemTur, @EvrakNo, @Tarih, @MalKodu, @Miktar, @Fiyat, @Tutar, @Birim
	
	-- Begin Return Select <- do not remove
	SELECT [IslemTur], [EvrakNo], [Tarih], [ID], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]
	FROM   [dbo].[STI]
	WHERE  [IslemTur] = @IslemTur
	       AND [EvrakNo] = @EvrakNo
	       AND [Tarih] = @Tarih
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STISelect]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[usp_STISelect] 
    @MalKodu varchar(30),
    @BaslangicTarihi int,
    @BitisTarihi int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [ID] AS SiraNo, [IslemTur], [EvrakNo], [Tarih], [Miktar] AS GirisMiktar , [Miktar] AS CikisMiktar, [Miktar] AS StokMiktar
	FROM   [dbo].[STI] 
	WHERE  ([MalKodu] = @MalKodu OR @MalKodu IS NULL) 
	       AND ([Tarih] between @BaslangicTarihi 
	       AND @BitisTarihi OR @BitisTarihi IS NULL) 
		   order by [SiraNo], [Tarih] asc

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STIUpdate]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_STIUpdate] 
    @IslemTur smallint,
    @EvrakNo varchar(16),
    @Tarih int,
    @ID int,
    @MalKodu varchar(30),
    @Miktar numeric(25, 6),
    @Fiyat numeric(25, 6),
    @Tutar numeric(25, 6),
    @Birim varchar(4)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[STI]
	SET    [MalKodu] = @MalKodu, [Miktar] = @Miktar, [Fiyat] = @Fiyat, [Tutar] = @Tutar, [Birim] = @Birim
	WHERE  [IslemTur] = @IslemTur
	       AND [EvrakNo] = @EvrakNo
	       AND [Tarih] = @Tarih
	
	-- Begin Return Select <- do not remove
	SELECT [IslemTur], [EvrakNo], [Tarih], [ID], [MalKodu], [Miktar], [Fiyat], [Tutar], [Birim]
	FROM   [dbo].[STI]
	WHERE  [IslemTur] = @IslemTur
	       AND [EvrakNo] = @EvrakNo
	       AND [Tarih] = @Tarih	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STKDelete]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_STKDelete] 
    @MalKodu varchar(30)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[STK]
	WHERE  [MalKodu] = @MalKodu

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STKInsert]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_STKInsert] 
    @MalKodu varchar(30),
    @MalAdi varchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[STK] ([MalKodu], [MalAdi])
	SELECT @MalKodu, @MalAdi
	
	-- Begin Return Select <- do not remove
	SELECT [MalKodu], [ID], [MalAdi]
	FROM   [dbo].[STK]
	WHERE  [MalKodu] = @MalKodu
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STKSelect]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_STKSelect] 
    @MalAdi varchar(30)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [MalKodu], [MalAdi] 
	FROM   [dbo].[STK] 
	WHERE  ([MalAdi] = @MalAdi OR @MalAdi IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_STKUpdate]    Script Date: 17.03.2021 22:45:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_STKUpdate] 
    @MalKodu varchar(30),
    @ID int,
    @MalAdi varchar(50)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[STK]
	SET    [MalAdi] = @MalAdi
	WHERE  [MalKodu] = @MalKodu
	
	-- Begin Return Select <- do not remove
	SELECT [MalKodu], [ID], [MalAdi]
	FROM   [dbo].[STK]
	WHERE  [MalKodu] = @MalKodu	
	-- End Return Select <- do not remove

	COMMIT
GO
USE [master]
GO
ALTER DATABASE [Test] SET  READ_WRITE 
GO
