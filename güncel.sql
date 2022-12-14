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
	[Calisma_Alan??] [int] NOT NULL,
	[Aciklama] [nvarchar](100) NOT NULL,
	[Zaman_Damgas??] [date] NOT NULL,
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
	[Uzmanl??k_Alani] [nvarchar](100) NOT NULL,
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
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (2, N'Ad??yaman')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (3, N'Afyonkarahisar')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (4, N'A??r??')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (5, N'Amasya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (6, N'Ankara')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (7, N'Antalya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (8, N'Artvin')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (9, N'Ayd??n')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (10, N'Bal??kesir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (11, N'Bilecik')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (12, N'Bing??l')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (13, N'Bitlis')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (14, N'Bolu')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (15, N'Burdur')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (16, N'Bursa')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (17, N'??anakkale')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (18, N'??ank??r??')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (19, N'??orum')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (20, N'Denizli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (21, N'Diyarbak??r')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (22, N'Edirne')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (23, N'Elaz????')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (24, N'Erzincan')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (25, N'Erzurum')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (26, N'Eski??ehir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (27, N'Gaziantep')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (28, N'Giresun')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (29, N'G??m????hane')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (30, N'Hakkari')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (31, N'Hatay')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (32, N'Isparta')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (33, N'Mersin')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (34, N'??stanbul')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (35, N'??zmir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (36, N'Kars')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (37, N'Kastamonu')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (38, N'Kayseri')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (39, N'K??rklareli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (40, N'K??r??ehir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (41, N'Kocaeli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (42, N'Konya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (43, N'K??tahya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (44, N'Malatya')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (45, N'Manisa')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (46, N'Kahramanmara??')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (47, N'Mardin')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (48, N'Mu??la')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (49, N'Mu??')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (50, N'Nev??ehir')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (51, N'Ni??de')
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
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (59, N'Tekirda??')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (60, N'Tokat')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (61, N'Trabzon')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (62, N'Tunceli')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (63, N'??anl??urfa')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (64, N'U??ak')
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
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (71, N'K??r??kkale')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (72, N'Batman')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (73, N'????rnak')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (74, N'Bart??n')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (75, N'Ardahan')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (76, N'I??d??r')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (77, N'Yalova')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (78, N'Karab??k')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (79, N'Kilis')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (80, N'Osmaniye')
GO
INSERT [dbo].[il_table] ([id], [il_adi]) VALUES (81, N'D??zce')
GO
SET IDENTITY_INSERT [dbo].[kurum_table] ON 
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (1, N'ABDULLAH G??L ??N??VERS??TES??', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (2, N'ACIBADEM MEHMET AL?? AYDINLAR ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (3, N'ADANA ALPARSLAN T??RKE?? B??L??M VE TEKNOLOJ?? ??N??VERS??TES??', 1)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (4, N'ADIYAMAN ??N??VERS??TES??', 2)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (5, N'AFYON KOCATEPE ??N??VERS??TES??', 3)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (6, N'AFYONKARAH??SAR SA??LIK B??L??MLER?? ??N??VERS??TES??', 3)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (7, N'A??RI ??BRAH??M ??E??EN ??N??VERS??TES??', 4)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (8, N'AKDEN??Z ??N??VERS??TES??', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (9, N'AKSARAY ??N??VERS??TES??', 68)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (10, N'ALANYA ALAADD??N KEYKUBAT ??N??VERS??TES??', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (11, N'ALANYA HAMDULLAH EM??N PA??A ??N??VERS??TES??', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (12, N'ALTINBA?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (13, N'AMASYA ??N??VERS??TES??', 5)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (14, N'ANADOLU ??N??VERS??TES??', 26)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (15, N'ANKA TEKNOLOJ?? ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (16, N'ANKARA B??L??M ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (17, N'ANKARA HACI BAYRAM VEL?? ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (18, N'ANKARA MED??POL ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (19, N'ANKARA M??Z??K VE G??ZEL SANATLAR ??N??VERS??TES??	', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (20, N'ANKARA SOSYAL B??L??MLER ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (21, N'ANKARA ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (22, N'ANKARA YILDIRIM BEYAZIT ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (23, N'ANTALYA AKEV ??N??VERS??TES??', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (24, N'ANTALYA B??L??M ??N??VERS??TES??', 7)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (25, N'ARDAHAN ??N??VERS??TES??', 75)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (26, N'ARTV??N ??ORUH ??N??VERS??TES??', 8)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (27, N'ATA??EH??R ADIG??ZEL MESLEK Y??KSEKOKULU', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (28, N'ATAT??RK ??N??VERS??TES??', 25)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (29, N'ATILIM ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (30, N'AVRASYA ??N??VERS??TES??', 61)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (31, N'AYDIN ADNAN MENDERES ??N??VERS??TES??', 9)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (32, N'BAH??E??EH??R ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (33, N'BALIKES??R ??N??VERS??TES??', 10)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (34, N'BANDIRMA ONYED?? EYL??L ??N??VERS??TES??', 10)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (35, N'BARTIN ??N??VERS??TES??', 74)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (36, N'BA??KENT ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (37, N'BATMAN ??N??VERS??TES??', 72)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (38, N'BAYBURT ??N??VERS??TES??', 69)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (39, N'BEYKENT ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (40, N'BEYKOZ ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (41, N'BEZM-?? ??LEM VAKIF ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (42, N'B??LEC??K ??EYH EDEBAL?? ??N??VERS??TES??', 11)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (43, N'B??NG??L ??N??VERS??TES??', 12)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (44, N'B??RUN?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (45, N'B??TL??S EREN ??N??VERS??TES??', 13)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (46, N'BO??AZ?????? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (47, N'BOLU ABANT ??ZZET BAYSAL ??N??VERS??TES??', 14)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (48, N'BURDUR MEHMET AK??F ERSOY ??N??VERS??TES??', 15)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (49, N'BURSA TEKN??K ??N??VERS??TES??', 16)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (50, N'BURSA ULUDA?? ??N??VERS??TES??', 16)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (51, N'??A?? ??N??VERS??TES??', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (52, N'??ANAKKALE ONSEK??Z MART ??N??VERS??TES??', 17)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (53, N'??ANKAYA ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (54, N'??ANKIRI KARATEK??N ??N??VERS??TES??', 18)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (55, N'??UKUROVA ??N??VERS??TES??', 1)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (56, N'DEM??RO??LU B??L??M ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (57, N'D??CLE ??N??VERS??TES??', 21)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (58, N'DO??U?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (59, N'DOKUZ EYL??L ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (60, N'D??ZCE ??N??VERS??TES??', 81)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (61, N'EGE ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (62, N'ERC??YES ??N??VERS??TES??', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (63, N'ERZ??NCAN B??NAL?? YILDIRIM ??N??VERS??TES??', 24)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (64, N'ERZURUM TEKN??K ??N??VERS??TES??', 25)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (65, N'ESK????EH??R OSMANGAZ?? ??N??VERS??TES??', 26)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (66, N'ESK????EH??R TEKN??K ??N??VERS??TES??', 26)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (67, N'FAT??H SULTAN MEHMET VAKIF ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (68, N'FENERBAH??E ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (69, N'FIRAT ??N??VERS??TES??', 23)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (70, N'GALATASARAY ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (71, N'GAZ?? ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (72, N'GAZ??ANTEP ??SLAM B??L??M VE TEKNOLOJ?? ??N??VERS??TES??', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (73, N'GAZ??ANTEP ??N??VERS??TES??', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (74, N'GEBZE TEKN??K ??N??VERS??TES??', 41)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (76, N'G??RESUN ??N??VERS??TES??', 28)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (77, N'G??M????HANE ??N??VERS??TES??', 29)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (78, N'HACETTEPE ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (79, N'HAKKAR?? ??N??VERS??TES??', 30)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (80, N'HAL???? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (81, N'HARRAN ??N??VERS??TES??', 63)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (82, N'HASAN KALYONCU ??N??VERS??TES??', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (83, N'HATAY MUSTAFA KEMAL ??N??VERS??TES??', 31)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (84, N'H??T??T ??N??VERS??TES??', 19)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (85, N'I??DIR ??N??VERS??TES??', 76)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (86, N'ISPARTA UYGULAMALI B??L??MLER ??N??VERS??TES??', 32)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (87, N'I??IK ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (88, N'??BN HALDUN ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (89, N'??HSAN DO??RAMACI B??LKENT ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (90, N'??N??N?? ??N??VERS??TES??', 44)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (91, N'??SKENDERUN TEKN??K ??N??VERS??TES??', 31)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (92, N'??STANBUL AREL ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (93, N'??STANBUL ATLAS ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (94, N'??STANBUL AYDIN ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (95, N'??STANBUL B??LG?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (96, N'??STANBUL ESENYURT ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (97, N'??STANBUL GALATA ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (98, N'??STANBUL GED??K ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (99, N'??STANBUL GEL??????M ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (100, N'??STANBUL KENT ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (101, N'??STANBUL K??LT??R ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (102, N'??STANBUL MEDEN??YET ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (104, N'??STANBUL MED??POL ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (105, N'??STANBUL OKAN ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (106, N'??STANBUL RUMEL?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (107, N'??STANBUL SABAHATT??N ZA??M ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (108, N'??STANBUL SA??LIK VE SOSYAL B??L??MLER MESLEK Y??KSEKOKULU', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (109, N'??STANBUL SA??LIK VE TEKNOLOJ?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (110, N'??STANBUL ??????L?? MESLEK Y??KSEKOKULU', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (111, N'??STANBUL TEKN??K ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (112, N'??STANBUL T??CARET ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (113, N'??STANBUL TOPKAPI ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (114, N'??STANBUL ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (115, N'??STANBUL ??N??VERS??TES??-CERRAHPA??A', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (116, N'??STANBUL YEN?? Y??ZYIL ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (117, N'??STANBUL 29 MAYIS ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (118, N'??ST??NYE ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (119, N'??ZM??R BAKIR??AY ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (120, N'??ZM??R DEMOKRAS?? ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (121, N'??ZM??R EKONOM?? ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (122, N'??ZM??R KAT??P ??ELEB?? ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (123, N'??ZM??R KAVRAM MESLEK Y??KSEKOKULU', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (124, N'??ZM??R TINAZTEPE ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (125, N'??ZM??R Y??KSEK TEKNOLOJ?? ENST??T??S??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (126, N'KAD??R HAS ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (127, N'KAFKAS ??N??VERS??TES??', 36)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (128, N'KAHRAMANMARA?? ??ST??KLAL ??N??VERS??TES??', 46)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (129, N'KAHRAMANMARA?? S??T???? ??MAM ??N??VERS??TES??', 46)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (130, N'KAPADOKYA ??N??VERS??TES??', 50)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (131, N'KARAB??K ??N??VERS??TES??', 78)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (132, N'KARADEN??Z TEKN??K ??N??VERS??TES??', 61)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (133, N'KARAMANO??LU MEHMETBEY ??N??VERS??TES??', 70)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (134, N'KASTAMONU ??N??VERS??TES??', 37)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (135, N'KAYSER?? ??N??VERS??TES??', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (136, N'KIRIKKALE ??N??VERS??TES??', 71)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (137, N'KIRKLAREL?? ??N??VERS??TES??', 39)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (138, N'KIR??EH??R AH?? EVRAN ??N??VERS??TES??', 40)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (139, N'K??L??S 7 ARALIK ??N??VERS??TES??', 79)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (140, N'KOCAEL?? SA??LIK VE TEKNOLOJ?? ??N??VERS??TES??', 41)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (141, N'KOCAEL?? ??N??VERS??TES??', 41)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (142, N'KO?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (143, N'KONYA GIDA VE TARIM ??N??VERS??TES??', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (144, N'KONYA TEKN??K ??N??VERS??TES??', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (145, N'KTO KARATAY ??N??VERS??TES??', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (146, N'K??TAHYA DUMLUPINAR ??N??VERS??TES??', 43)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (147, N'K??TAHYA SA??LIK B??L??MLER?? ??N??VERS??TES??', 43)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (148, N'LOKMAN HEK??M ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (150, N'MALATYA TURGUT ??ZAL ??N??VERS??TES??', 44)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (151, N'MALTEPE ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (152, N'MAN??SA CEL??L BAYAR ??N??VERS??TES??', 45)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (153, N'MARD??N ARTUKLU ??N??VERS??TES??', 47)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (154, N'MARMARA ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (155, N'MEF ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (156, N'MERS??N ??N??VERS??TES??', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (157, N'M??MAR S??NAN G??ZEL SANATLAR ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (158, N'MUDANYA ??N??VERS??TES??', 16)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (159, N'MU??LA SITKI KO??MAN ??N??VERS??TES??', 48)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (160, N'MUNZUR ??N??VERS??TES??', 62)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (161, N'MU?? ALPARSLAN ??N??VERS??TES??', 49)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (162, N'NECMETT??N ERBAKAN ??N??VERS??TES??', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (163, N'NEV??EH??R HACI BEKTA?? VEL?? ??N??VERS??TES??', 50)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (164, N'N????DE ??MER HAL??SDEM??R ??N??VERS??TES??', 51)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (165, N'N????ANTA??I ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (166, N'NUH NAC?? YAZGAN ??N??VERS??TES??', 38)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (167, N'ONDOKUZ MAYIS ??N??VERS??TES??', 55)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (168, N'ORDU ??N??VERS??TES??', 52)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (169, N'ORTA DO??U TEKN??K ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (170, N'OSMAN??YE KORKUT ATA ??N??VERS??TES??', 80)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (171, N'OST??M TEKN??K ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (172, N'??ZYE????N ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (173, N'PAMUKKALE ??N??VERS??TES??', 20)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (174, N'P??R?? RE??S ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (175, N'RECEP TAYY??P ERDO??AN ??N??VERS??TES??', 53)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (176, N'SABANCI ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (177, N'SA??LIK B??L??MLER?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (178, N'SAKARYA UYGULAMALI B??L??MLER ??N??VERS??TES??', 54)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (179, N'SAKARYA ??N??VERS??TES??', 54)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (180, N'SAMSUN ??N??VERS??TES??', 55)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (181, N'SANKO ??N??VERS??TES??', 27)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (182, N'SEL??UK ??N??VERS??TES??', 42)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (183, N'S????RT ??N??VERS??TES??', 56)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (184, N'S??NOP ??N??VERS??TES??', 57)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (185, N'S??VAS B??L??M VE TEKNOLOJ?? ??N??VERS??TES??', 58)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (186, N'S??VAS CUMHUR??YET ??N??VERS??TES??', 58)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (187, N'S??LEYMAN DEM??REL ??N??VERS??TES??', 32)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (188, N'??IRNAK ??N??VERS??TES??', 73)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (189, N'TARSUS ??N??VERS??TES??', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (190, N'TED ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (191, N'TEK??RDA?? NAMIK KEMAL ??N??VERS??TES??', 59)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (192, N'TOBB EKONOM?? VE TEKNOLOJ?? ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (193, N'TOKAT GAZ??OSMANPA??A ??N??VERS??TES??', 60)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (194, N'TOROS ??N??VERS??TES??', 33)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (195, N'TRABZON ??N??VERS??TES??', 61)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (196, N'TRAKYA ??N??VERS??TES??', 22)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (197, N'T??RK HAVA KURUMU ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (198, N'T??RK-ALMAN ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (199, N'T??RK??YE ULUSLARARASI ??SLAM, B??L??M VE TEKNOLOJ?? ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (200, N'T??RK-JAPON B??L??M VE TEKNOLOJ?? ??N??VERS??TES??	', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (201, N'UFUK ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (202, N'U??AK ??N??VERS??TES??', 64)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (203, N'??SK??DAR ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (204, N'VAN Y??Z??NC?? YIL ??N??VERS??TES??', 65)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (205, N'YALOVA ??N??VERS??TES??', 77)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (206, N'YA??AR ??N??VERS??TES??', 35)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (207, N'YED??TEPE ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (208, N'YILDIZ TEKN??K ??N??VERS??TES??', 34)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (209, N'YOZGAT BOZOK ??N??VERS??TES??', 66)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (210, N'Y??KSEK ??HT??SAS ??N??VERS??TES??', 6)
GO
INSERT [dbo].[kurum_table] ([id], [kurum_adi], [il_id]) VALUES (211, N'ZONGULDAK B??LENT ECEV??T ??N??VERS??TES??', 67)
GO
SET IDENTITY_INSERT [dbo].[kurum_table] OFF
GO
ALTER TABLE [dbo].[basvuru]  WITH CHECK ADD  CONSTRAINT [FK_basvuru_calisma_alani] FOREIGN KEY([Calisma_Alan??])
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
