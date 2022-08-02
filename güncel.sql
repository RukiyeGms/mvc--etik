USE [master]
GO
/****** Object:  Database [otomasyonDB]    Script Date: 2.08.2022 11:47:52 ******/
CREATE DATABASE [otomasyonDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'otomasyonDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\otomasyonDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'otomasyonDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\otomasyonDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [otomasyonDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [otomasyonDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [otomasyonDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [otomasyonDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [otomasyonDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [otomasyonDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [otomasyonDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [otomasyonDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [otomasyonDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [otomasyonDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [otomasyonDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [otomasyonDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [otomasyonDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [otomasyonDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [otomasyonDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [otomasyonDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [otomasyonDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [otomasyonDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [otomasyonDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [otomasyonDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [otomasyonDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [otomasyonDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [otomasyonDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [otomasyonDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [otomasyonDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [otomasyonDB] SET  MULTI_USER 
GO
ALTER DATABASE [otomasyonDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [otomasyonDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [otomasyonDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [otomasyonDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [otomasyonDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [otomasyonDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [otomasyonDB] SET QUERY_STORE = OFF
GO
USE [otomasyonDB]
GO
/****** Object:  Table [dbo].[basvuru]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[basvuru](
	[Id] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Baslik] [nvarchar](100) NOT NULL,
	[Ozet] [nvarchar](100) NOT NULL,
	[Onerilen_Etik_Kurulu] [int] NOT NULL,
	[Calisma_Alanı] [int] NOT NULL,
	[Aciklama] [nvarchar](100) NOT NULL,
	[Zaman_Damgası] [date] NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_basvuru] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calisma_alani]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calisma_alani](
	[Id] [int] NOT NULL,
	[Calisma_Alani_Adi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_calisma_alani] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etik_kurul]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etik_kurul](
	[Id] [int] NOT NULL,
	[Etik_Kurul_Adi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_etik_kurul] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[il_table]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[il_table](
	[id] [int] NOT NULL,
	[il_adi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_il_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kurum_table]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kurum_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kurum_adi] [varchar](255) NOT NULL,
	[il_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenim_durumu]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenim_durumu](
	[Id] [int] NOT NULL,
	[Type_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ogrenim_durumu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parola]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parola](
	[id] [int] NOT NULL,
	[parola] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_parola] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status_table]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_table](
	[id] [int] NOT NULL,
	[status_type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unvan]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unvan](
	[id] [int] NOT NULL,
	[unvan_adi] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_unvan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_types]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_types](
	[Id] [int] NOT NULL,
	[Type_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_user_types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2.08.2022 11:47:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Id] [int] NOT NULL,
	[User_Type] [int] NOT NULL,
	[Ad] [nvarchar](100) NOT NULL,
	[Soyad] [nvarchar](100) NOT NULL,
	[Unvan] [int] NOT NULL,
	[Uzmanlık_Alani] [nvarchar](100) NOT NULL,
	[Ogrenim_Durumu] [int] NOT NULL,
	[Kurumu] [int] NOT NULL,
	[Dogum_Tarihi] [datetime] NOT NULL,
	[Tckn] [nvarchar](100) NOT NULL,
	[Eposta] [nvarchar](100) NOT NULL,
	[Parola_id] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (1, N'Adana')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (2, N'Adıyaman')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (3, N'Afyonkarahisar')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (4, N'Ağrı')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (5, N'Amasya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (6, N'Ankara')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (7, N'Antalya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (8, N'Artvin')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (9, N'Aydın')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (10, N'Balıkesir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (11, N'Bilecik')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (12, N'Bingöl')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (13, N'Bitlis')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (14, N'Bolu')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (15, N'Burdur')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (16, N'Bursa')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (17, N'Çanakkale')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (18, N'Çankırı')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (19, N'Çorum')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (20, N'Denizli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (21, N'Diyarbakır')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (22, N'Edirne')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (23, N'Elazığ')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (24, N'Erzincan')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (25, N'Erzurum')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (26, N'Eskişehir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (27, N'Gaziantep')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (28, N'Giresun')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (29, N'Gümüşhane')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (30, N'Hakkari')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (31, N'Hatay')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (32, N'Isparta')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (33, N'Mersin')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (34, N'İstanbul')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (35, N'İzmir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (36, N'Kars')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (37, N'Kastamonu')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (38, N'Kayseri')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (39, N'Kırklareli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (40, N'Kırşehir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (41, N'Kocaeli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (42, N'Konya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (43, N'Kütahya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (44, N'Malatya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (45, N'Manisa')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (46, N'Kahramanmaraş')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (47, N'Mardin')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (48, N'Muğla')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (49, N'Muş')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (50, N'Nevşehir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (51, N'Niğde')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (52, N'Ordu')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (53, N'Rize')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (54, N'Sakarya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (55, N'Samsun')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (56, N'Siirt')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (57, N'Sinop')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (58, N'Sivas')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (59, N'Tekirdağ')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (60, N'Tokat')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (61, N'Trabzon')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (62, N'Tunceli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (63, N'Şanlıurfa')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (64, N'Uşak')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (65, N'Van')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (66, N'Yozgat')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (67, N'Zonguldak')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (68, N'Aksaray')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (69, N'Bayburt')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (70, N'Karaman')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (71, N'Kırıkkale')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (72, N'Batman')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (73, N'Şırnak')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (74, N'Bartın')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (75, N'Ardahan')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (76, N'Iğdır')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (77, N'Yalova')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (78, N'Karabük')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (79, N'Kilis')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (80, N'Osmaniye')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (81, N'Düzce')
GO
SET IDENTITY_INSERT [dbo].[kurum_table] ON 
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (1, N'ABDULLAH GÜL ÜNİVERSİTESİ', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (2, N'ACIBADEM MEHMET ALİ AYDINLAR ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (3, N'ADANA ALPARSLAN TÜRKEŞ BİLİM VE TEKNOLOJİ ÜNİVERSİTESİ', 1)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (4, N'ADIYAMAN ÜNİVERSİTESİ', 2)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (5, N'AFYON KOCATEPE ÜNİVERSİTESİ', 3)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (6, N'AFYONKARAHİSAR SAĞLIK BİLİMLERİ ÜNİVERSİTESİ', 3)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (7, N'AĞRI İBRAHİM ÇEÇEN ÜNİVERSİTESİ', 4)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (8, N'AKDENİZ ÜNİVERSİTESİ', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (9, N'AKSARAY ÜNİVERSİTESİ', 68)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (10, N'ALANYA ALAADDİN KEYKUBAT ÜNİVERSİTESİ', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (11, N'ALANYA HAMDULLAH EMİN PAŞA ÜNİVERSİTESİ', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (12, N'ALTINBAŞ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (13, N'AMASYA ÜNİVERSİTESİ', 5)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (14, N'ANADOLU ÜNİVERSİTESİ', 26)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (15, N'ANKA TEKNOLOJİ ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (16, N'ANKARA BİLİM ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (17, N'ANKARA HACI BAYRAM VELİ ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (18, N'ANKARA MEDİPOL ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (19, N'ANKARA MÜZİK VE GÜZEL SANATLAR ÜNİVERSİTESİ	', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (20, N'ANKARA SOSYAL BİLİMLER ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (21, N'ANKARA ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (22, N'ANKARA YILDIRIM BEYAZIT ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (23, N'ANTALYA AKEV ÜNİVERSİTESİ', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (24, N'ANTALYA BİLİM ÜNİVERSİTESİ', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (25, N'ARDAHAN ÜNİVERSİTESİ', 75)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (26, N'ARTVİN ÇORUH ÜNİVERSİTESİ', 8)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (27, N'ATAŞEHİR ADIGÜZEL MESLEK YÜKSEKOKULU', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (28, N'ATATÜRK ÜNİVERSİTESİ', 25)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (29, N'ATILIM ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (30, N'AVRASYA ÜNİVERSİTESİ', 61)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (31, N'AYDIN ADNAN MENDERES ÜNİVERSİTESİ', 9)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (32, N'BAHÇEŞEHİR ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (33, N'BALIKESİR ÜNİVERSİTESİ', 10)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (34, N'BANDIRMA ONYEDİ EYLÜL ÜNİVERSİTESİ', 10)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (35, N'BARTIN ÜNİVERSİTESİ', 74)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (36, N'BAŞKENT ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (37, N'BATMAN ÜNİVERSİTESİ', 72)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (38, N'BAYBURT ÜNİVERSİTESİ', 69)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (39, N'BEYKENT ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (40, N'BEYKOZ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (41, N'BEZM-İ ÂLEM VAKIF ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (42, N'BİLECİK ŞEYH EDEBALİ ÜNİVERSİTESİ', 11)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (43, N'BİNGÖL ÜNİVERSİTESİ', 12)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (44, N'BİRUNİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (45, N'BİTLİS EREN ÜNİVERSİTESİ', 13)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (46, N'BOĞAZİÇİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (47, N'BOLU ABANT İZZET BAYSAL ÜNİVERSİTESİ', 14)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (48, N'BURDUR MEHMET AKİF ERSOY ÜNİVERSİTESİ', 15)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (49, N'BURSA TEKNİK ÜNİVERSİTESİ', 16)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (50, N'BURSA ULUDAĞ ÜNİVERSİTESİ', 16)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (51, N'ÇAĞ ÜNİVERSİTESİ', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (52, N'ÇANAKKALE ONSEKİZ MART ÜNİVERSİTESİ', 17)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (53, N'ÇANKAYA ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (54, N'ÇANKIRI KARATEKİN ÜNİVERSİTESİ', 18)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (55, N'ÇUKUROVA ÜNİVERSİTESİ', 1)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (56, N'DEMİROĞLU BİLİM ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (57, N'DİCLE ÜNİVERSİTESİ', 21)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (58, N'DOĞUŞ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (59, N'DOKUZ EYLÜL ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (60, N'DÜZCE ÜNİVERSİTESİ', 81)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (61, N'EGE ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (62, N'ERCİYES ÜNİVERSİTESİ', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (63, N'ERZİNCAN BİNALİ YILDIRIM ÜNİVERSİTESİ', 24)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (64, N'ERZURUM TEKNİK ÜNİVERSİTESİ', 25)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (65, N'ESKİŞEHİR OSMANGAZİ ÜNİVERSİTESİ', 26)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (66, N'ESKİŞEHİR TEKNİK ÜNİVERSİTESİ', 26)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (67, N'FATİH SULTAN MEHMET VAKIF ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (68, N'FENERBAHÇE ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (69, N'FIRAT ÜNİVERSİTESİ', 23)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (70, N'GALATASARAY ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (71, N'GAZİ ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (72, N'GAZİANTEP İSLAM BİLİM VE TEKNOLOJİ ÜNİVERSİTESİ', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (73, N'GAZİANTEP ÜNİVERSİTESİ', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (74, N'GEBZE TEKNİK ÜNİVERSİTESİ', 41)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (76, N'GİRESUN ÜNİVERSİTESİ', 28)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (77, N'GÜMÜŞHANE ÜNİVERSİTESİ', 29)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (78, N'HACETTEPE ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (79, N'HAKKARİ ÜNİVERSİTESİ', 30)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (80, N'HALİÇ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (81, N'HARRAN ÜNİVERSİTESİ', 63)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (82, N'HASAN KALYONCU ÜNİVERSİTESİ', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (83, N'HATAY MUSTAFA KEMAL ÜNİVERSİTESİ', 31)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (84, N'HİTİT ÜNİVERSİTESİ', 19)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (85, N'IĞDIR ÜNİVERSİTESİ', 76)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (86, N'ISPARTA UYGULAMALI BİLİMLER ÜNİVERSİTESİ', 32)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (87, N'IŞIK ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (88, N'İBN HALDUN ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (89, N'İHSAN DOĞRAMACI BİLKENT ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (90, N'İNÖNÜ ÜNİVERSİTESİ', 44)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (91, N'İSKENDERUN TEKNİK ÜNİVERSİTESİ', 31)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (92, N'İSTANBUL AREL ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (93, N'İSTANBUL ATLAS ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (94, N'İSTANBUL AYDIN ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (95, N'İSTANBUL BİLGİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (96, N'İSTANBUL ESENYURT ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (97, N'İSTANBUL GALATA ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (98, N'İSTANBUL GEDİK ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (99, N'İSTANBUL GELİŞİM ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (100, N'İSTANBUL KENT ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (101, N'İSTANBUL KÜLTÜR ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (102, N'İSTANBUL MEDENİYET ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (104, N'İSTANBUL MEDİPOL ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (105, N'İSTANBUL OKAN ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (106, N'İSTANBUL RUMELİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (107, N'İSTANBUL SABAHATTİN ZAİM ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (108, N'İSTANBUL SAĞLIK VE SOSYAL BİLİMLER MESLEK YÜKSEKOKULU', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (109, N'İSTANBUL SAĞLIK VE TEKNOLOJİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (110, N'İSTANBUL ŞİŞLİ MESLEK YÜKSEKOKULU', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (111, N'İSTANBUL TEKNİK ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (112, N'İSTANBUL TİCARET ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (113, N'İSTANBUL TOPKAPI ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (114, N'İSTANBUL ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (115, N'İSTANBUL ÜNİVERSİTESİ-CERRAHPAŞA', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (116, N'İSTANBUL YENİ YÜZYIL ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (117, N'İSTANBUL 29 MAYIS ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (118, N'İSTİNYE ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (119, N'İZMİR BAKIRÇAY ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (120, N'İZMİR DEMOKRASİ ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (121, N'İZMİR EKONOMİ ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (122, N'İZMİR KATİP ÇELEBİ ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (123, N'İZMİR KAVRAM MESLEK YÜKSEKOKULU', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (124, N'İZMİR TINAZTEPE ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (125, N'İZMİR YÜKSEK TEKNOLOJİ ENSTİTÜSÜ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (126, N'KADİR HAS ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (127, N'KAFKAS ÜNİVERSİTESİ', 36)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (128, N'KAHRAMANMARAŞ İSTİKLAL ÜNİVERSİTESİ', 46)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (129, N'KAHRAMANMARAŞ SÜTÇÜ İMAM ÜNİVERSİTESİ', 46)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (130, N'KAPADOKYA ÜNİVERSİTESİ', 50)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (131, N'KARABÜK ÜNİVERSİTESİ', 78)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (132, N'KARADENİZ TEKNİK ÜNİVERSİTESİ', 61)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (133, N'KARAMANOĞLU MEHMETBEY ÜNİVERSİTESİ', 70)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (134, N'KASTAMONU ÜNİVERSİTESİ', 37)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (135, N'KAYSERİ ÜNİVERSİTESİ', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (136, N'KIRIKKALE ÜNİVERSİTESİ', 71)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (137, N'KIRKLARELİ ÜNİVERSİTESİ', 39)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (138, N'KIRŞEHİR AHİ EVRAN ÜNİVERSİTESİ', 40)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (139, N'KİLİS 7 ARALIK ÜNİVERSİTESİ', 79)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (140, N'KOCAELİ SAĞLIK VE TEKNOLOJİ ÜNİVERSİTESİ', 41)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (141, N'KOCAELİ ÜNİVERSİTESİ', 41)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (142, N'KOÇ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (143, N'KONYA GIDA VE TARIM ÜNİVERSİTESİ', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (144, N'KONYA TEKNİK ÜNİVERSİTESİ', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (145, N'KTO KARATAY ÜNİVERSİTESİ', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (146, N'KÜTAHYA DUMLUPINAR ÜNİVERSİTESİ', 43)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (147, N'KÜTAHYA SAĞLIK BİLİMLERİ ÜNİVERSİTESİ', 43)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (148, N'LOKMAN HEKİM ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (150, N'MALATYA TURGUT ÖZAL ÜNİVERSİTESİ', 44)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (151, N'MALTEPE ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (152, N'MANİSA CELÂL BAYAR ÜNİVERSİTESİ', 45)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (153, N'MARDİN ARTUKLU ÜNİVERSİTESİ', 47)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (154, N'MARMARA ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (155, N'MEF ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (156, N'MERSİN ÜNİVERSİTESİ', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (157, N'MİMAR SİNAN GÜZEL SANATLAR ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (158, N'MUDANYA ÜNİVERSİTESİ', 16)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (159, N'MUĞLA SITKI KOÇMAN ÜNİVERSİTESİ', 48)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (160, N'MUNZUR ÜNİVERSİTESİ', 62)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (161, N'MUŞ ALPARSLAN ÜNİVERSİTESİ', 49)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (162, N'NECMETTİN ERBAKAN ÜNİVERSİTESİ', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (163, N'NEVŞEHİR HACI BEKTAŞ VELİ ÜNİVERSİTESİ', 50)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (164, N'NİĞDE ÖMER HALİSDEMİR ÜNİVERSİTESİ', 51)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (165, N'NİŞANTAŞI ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (166, N'NUH NACİ YAZGAN ÜNİVERSİTESİ', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (167, N'ONDOKUZ MAYIS ÜNİVERSİTESİ', 55)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (168, N'ORDU ÜNİVERSİTESİ', 52)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (169, N'ORTA DOĞU TEKNİK ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (170, N'OSMANİYE KORKUT ATA ÜNİVERSİTESİ', 80)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (171, N'OSTİM TEKNİK ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (172, N'ÖZYEĞİN ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (173, N'PAMUKKALE ÜNİVERSİTESİ', 20)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (174, N'PİRİ REİS ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (175, N'RECEP TAYYİP ERDOĞAN ÜNİVERSİTESİ', 53)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (176, N'SABANCI ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (177, N'SAĞLIK BİLİMLERİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (178, N'SAKARYA UYGULAMALI BİLİMLER ÜNİVERSİTESİ', 54)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (179, N'SAKARYA ÜNİVERSİTESİ', 54)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (180, N'SAMSUN ÜNİVERSİTESİ', 55)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (181, N'SANKO ÜNİVERSİTESİ', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (182, N'SELÇUK ÜNİVERSİTESİ', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (183, N'SİİRT ÜNİVERSİTESİ', 56)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (184, N'SİNOP ÜNİVERSİTESİ', 57)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (185, N'SİVAS BİLİM VE TEKNOLOJİ ÜNİVERSİTESİ', 58)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (186, N'SİVAS CUMHURİYET ÜNİVERSİTESİ', 58)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (187, N'SÜLEYMAN DEMİREL ÜNİVERSİTESİ', 32)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (188, N'ŞIRNAK ÜNİVERSİTESİ', 73)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (189, N'TARSUS ÜNİVERSİTESİ', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (190, N'TED ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (191, N'TEKİRDAĞ NAMIK KEMAL ÜNİVERSİTESİ', 59)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (192, N'TOBB EKONOMİ VE TEKNOLOJİ ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (193, N'TOKAT GAZİOSMANPAŞA ÜNİVERSİTESİ', 60)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (194, N'TOROS ÜNİVERSİTESİ', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (195, N'TRABZON ÜNİVERSİTESİ', 61)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (196, N'TRAKYA ÜNİVERSİTESİ', 22)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (197, N'TÜRK HAVA KURUMU ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (198, N'TÜRK-ALMAN ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (199, N'TÜRKİYE ULUSLARARASI İSLAM, BİLİM VE TEKNOLOJİ ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (200, N'TÜRK-JAPON BİLİM VE TEKNOLOJİ ÜNİVERSİTESİ	', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (201, N'UFUK ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (202, N'UŞAK ÜNİVERSİTESİ', 64)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (203, N'ÜSKÜDAR ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (204, N'VAN YÜZÜNCÜ YIL ÜNİVERSİTESİ', 65)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (205, N'YALOVA ÜNİVERSİTESİ', 77)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (206, N'YAŞAR ÜNİVERSİTESİ', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (207, N'YEDİTEPE ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (208, N'YILDIZ TEKNİK ÜNİVERSİTESİ', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (209, N'YOZGAT BOZOK ÜNİVERSİTESİ', 66)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (210, N'YÜKSEK İHTİSAS ÜNİVERSİTESİ', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (211, N'ZONGULDAK BÜLENT ECEVİT ÜNİVERSİTESİ', 67)
GO
SET IDENTITY_INSERT [dbo].[kurum_table] OFF
GO
ALTER TABLE [dbo].[basvuru]  WITH CHECK ADD  CONSTRAINT [FK_basvuru_calisma_alani] FOREIGN KEY([Calisma_Alanı])
REFERENCES [dbo].[calisma_alani] ([Id])
GO
ALTER TABLE [dbo].[basvuru] CHECK CONSTRAINT [FK_basvuru_calisma_alani]
GO
ALTER TABLE [dbo].[basvuru]  WITH CHECK ADD  CONSTRAINT [FK_basvuru_etik_kurul] FOREIGN KEY([Onerilen_Etik_Kurulu])
REFERENCES [dbo].[etik_kurul] ([Id])
GO
ALTER TABLE [dbo].[basvuru] CHECK CONSTRAINT [FK_basvuru_etik_kurul]
GO
ALTER TABLE [dbo].[basvuru]  WITH CHECK ADD  CONSTRAINT [FK_basvuru_status_table] FOREIGN KEY([status])
REFERENCES [dbo].[status_table] ([id])
GO
ALTER TABLE [dbo].[basvuru] CHECK CONSTRAINT [FK_basvuru_status_table]
GO
ALTER TABLE [dbo].[basvuru]  WITH CHECK ADD  CONSTRAINT [FK_basvuru_users1] FOREIGN KEY([User_Id])
REFERENCES [dbo].[users] ([Id])
GO
ALTER TABLE [dbo].[basvuru] CHECK CONSTRAINT [FK_basvuru_users1]
GO
ALTER TABLE [dbo].[kurum_table]  WITH CHECK ADD  CONSTRAINT [fk_kurum_ili] FOREIGN KEY([il_id])
REFERENCES [dbo].[il_table] ([id])
GO
ALTER TABLE [dbo].[kurum_table] CHECK CONSTRAINT [fk_kurum_ili]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_kurum_table] FOREIGN KEY([Kurumu])
REFERENCES [dbo].[kurum_table] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_kurum_table]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_ogrenim_durumu] FOREIGN KEY([Ogrenim_Durumu])
REFERENCES [dbo].[ogrenim_durumu] ([Id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_ogrenim_durumu]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_parola] FOREIGN KEY([Parola_id])
REFERENCES [dbo].[parola] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_parola]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_unvan] FOREIGN KEY([Unvan])
REFERENCES [dbo].[unvan] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_unvan]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_user_types] FOREIGN KEY([User_Type])
REFERENCES [dbo].[user_types] ([Id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_user_types]
GO
USE [master]
GO
ALTER DATABASE [otomasyonDB] SET  READ_WRITE 
GO
