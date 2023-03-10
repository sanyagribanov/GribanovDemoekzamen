USE [master]
GO
/****** Object:  Database [Blagodat]    Script Date: 06.03.2023 9:07:36 ******/
CREATE DATABASE [Blagodat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blagodat', FILENAME = N'D:\sqlll123\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Blagodat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Blagodat_log', FILENAME = N'D:\sqlll123\MSSQL15.SQLEXPRESS01\MSSQL\DATA\Blagodat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Blagodat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blagodat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blagodat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blagodat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blagodat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blagodat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blagodat] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blagodat] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Blagodat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blagodat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blagodat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blagodat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blagodat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blagodat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blagodat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blagodat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blagodat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blagodat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blagodat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blagodat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blagodat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blagodat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blagodat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blagodat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blagodat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blagodat] SET  MULTI_USER 
GO
ALTER DATABASE [Blagodat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blagodat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blagodat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blagodat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Blagodat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Blagodat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Blagodat] SET QUERY_STORE = OFF
GO
USE [Blagodat]
GO
/****** Object:  Table [dbo].[barcodes]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[barcodes](
	[id] [int] NOT NULL,
	[code] [varchar](13) NOT NULL,
 CONSTRAINT [PK_barcodes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[fio] [varchar](100) NOT NULL,
	[Adress] [varchar](100) NOT NULL,
	[Birthday] [date] NOT NULL,
	[PassCode] [int] NOT NULL,
	[PassNumber] [int] NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemID] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[CostPerHour] [int] NOT NULL,
	[AmountOfItem] [int] NOT NULL,
	[ItemTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemTypes]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypes](
	[TypeID] [int] NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ItemTypes] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_service]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_service](
	[IDOrder] [int] NOT NULL,
	[IDService] [int] NOT NULL,
 CONSTRAINT [PK_order_service] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC,
	[IDService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [nvarchar](50) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderTime] [int] NOT NULL,
	[DateCreate] [date] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[DateClose] [date] NULL,
	[RentalTime] [date] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Title] [nchar](50) NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id] [int] NOT NULL,
	[services_name] [nchar](50) NOT NULL,
	[services_code] [nchar](50) NOT NULL,
	[cost] [int] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[title] [nchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06.03.2023 9:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Login] [varchar](50) NULL,
	[RoleID] [int] NULL,
	[Password] [varchar](50) NULL,
	[photo] [nchar](100) NULL,
	[fio] [nchar](100) NULL,
	[date] [datetime] NULL,
	[auth] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[barcodes] ([id], [code]) VALUES (0, N'2023030612312')
GO
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462527, N'xawugosune-1385@yopmail.com', N'Николаев Даниил Всеволодович', N'614164, г. Санкт-Петербург, ул. Степная, 30, кв. 75', CAST(N'2001-02-10' AS Date), 2280, 223523, N'cl12346')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462529, N'boippaxeufrepra-7093@yopmail.com', N'Иванов Иван Ильич', N'660540, г. Санкт-Петербург, ул. Солнечная, 25, кв. 78', CAST(N'1998-10-01' AS Date), 9120, 554296, N'cl12348')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462530, N'zapramaxesu-7741@yopmail.com', N'Филиппова Анна Глебовна', N'125837, г. Санкт-Петербург, ул. Шоссейная, 40, кв. 92', CAST(N'1976-05-31' AS Date), 2367, 558134, N'cl12349')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462531, N'rouzecroummegre-3899@yopmail.com', N'Иванов Михаил Владимирович', N'125703, г. Санкт-Петербург, ул. Партизанская, 49, кв. 84', CAST(N'1985-11-04' AS Date), 7101, 669343, N'cl12350')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462532, N'ziyeuddocrabri-4748@yopmail.com', N'Власов Дмитрий Александрович', N'625283, г. Санкт-Петербург, ул. Победы, 46, кв. 7', CAST(N'1998-08-17' AS Date), 3455, 719630, N'cl12351')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462533, N'ketameissoinnei-1951@yopmail.com', N'Серова Екатерина Львовна', N'614611, г. Санкт-Петербург, ул. Молодежная, 50, кв. 78', CAST(N'1984-10-24' AS Date), 2377, 871623, N'cl12352')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462534, N'yipraubaponou-5849@yopmail.com', N'Борисова Ирина Ивановна', N'454311, г. Санкт-Петербург, ул. Новая, 19, кв. 78', CAST(N'1976-10-14' AS Date), 8755, 921148, N'cl12353')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462535, N'crapedocouca-3572@yopmail.com', N'Зайцев Никита Артёмович', N'660007, г. Санкт-Петербург, ул. Октябрьская, 19, кв. 42', CAST(N'1999-10-14' AS Date), 4355, 104594, N'cl12354')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462536, N'ceigoixakaunni-9227@yopmail.com', N'Медведев Святослав Евгеньевич', N'603036, г. Санкт-Петербург, ул. Садовая, 4, кв. 13', CAST(N'1985-07-13' AS Date), 2791, 114390, N'cl12355')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462537, N'yeimmeiwauzomo-7054@yopmail.com', N'Коротков Кирилл Алексеевич', N'450983, г. Санкт-Петербург, ул. Комсомольская, 26, кв. 60', CAST(N'1976-05-26' AS Date), 5582, 126286, N'cl12356')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462538, N'poleifenevi-1560@yopmail.com', N'Калашникова Арина Максимовна', N'394782, г. Санкт-Петербург, ул. Чехова, 3, кв. 14', CAST(N'1999-08-13' AS Date), 2978, 133653, N'cl12357')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462539, N'kauprezofautei-6607@yopmail.com', N'Минина Таисия Кирилловна', N'603002, г. Санкт-Петербург, ул. Дзержинского, 28, кв. 56', CAST(N'1985-10-13' AS Date), 7512, 141956, N'cl12358')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462540, N'quaffaullelourei-1667@yopmail.com', N'Наумов Серафим Романович', N'450558, г. Санкт-Петербург, ул. Набережная, 30, кв. 71', CAST(N'1999-04-15' AS Date), 5046, 158433, N'cl12359')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462541, N'jsteele@rojas-robinson.net', N'Воробьева Василиса Евгеньевна', N'394060, г. Санкт-Петербург, ул. Фрунзе, 43, кв. 79', CAST(N'1999-01-13' AS Date), 2460, 169505, N'cl12360')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462542, N'vhopkins@lewis-mullen.com', N'Калинин Александр Андреевич', N'410661, г. Санкт-Петербург, ул. Школьная, 50, кв. 53', CAST(N'1999-01-07' AS Date), 3412, 174593, N'cl12361')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462543, N'nlewis@yahoo.com', N'Кузнецова Милана Владиславовна', N'625590, г. Санкт-Петербург, ул. Коммунистическая, 20, кв. 34', CAST(N'1999-01-24' AS Date), 4950, 183034, N'cl12362')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462544, N'garciadavid@mckinney-mcbride.com', N'Фирсов Егор Романович', N'625683, г. Санкт-Петербург, ул. 8 Марта, 20, кв. 21', CAST(N'1993-09-02' AS Date), 5829, 219464, N'cl12363')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462545, N'cbradley@castro.com', N'Зимина Агния Александровна', N'400562, г. Санкт-Петербург, ул. Зеленая, 32, кв. 67', CAST(N'1998-09-03' AS Date), 6443, 208059, N'cl12364')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462546, N'cuevascatherine@carlson.biz', N'Титов Андрей Глебович', N'614510, г. Санкт-Петербург, ул. Маяковского, 47, кв. 72', CAST(N'1985-10-23' AS Date), 7079, 213265, N'cl12365')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462547, N'thomasmoore@wilson-singh.net', N'Орлов Николай Егорович', N'410542, г. Санкт-Петербург, ул. Светлая, 46, кв. 82', CAST(N'1985-07-27' AS Date), 8207, 522702, N'cl12366')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462548, N'jessica84@hotmail.com', N'Кузнецова Аиша Михайловна', N'620839, г. Санкт-Петербург, ул. Цветочная, 8, кв. 100', CAST(N'1998-10-04' AS Date), 9307, 232158, N'cl12367')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462549, N'jessicapark@hotmail.com', N'Куликов Никита Георгиевич', N'443890, г. Санкт-Петербург, ул. Коммунистическая, 1, кв. 10', CAST(N'1999-04-23' AS Date), 1357, 242839, N'cl12368')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462550, N'ginaritter@schneider-buchanan.com', N'Карпова София Егоровна', N'603379, г. Санкт-Петербург, ул. Спортивная, 46, кв. 95', CAST(N'1993-10-01' AS Date), 1167, 256636, N'cl12369')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462551, N'stephen99@yahoo.com', N'Смирнова Дарья Макаровна', N'603721, г. Санкт-Петербург, ул. Гоголя, 41, кв. 57', CAST(N'1976-03-22' AS Date), 1768, 266986, N'cl12370')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462552, N'lopezlisa@hotmail.com', N'Абрамова Александра Мироновна', N'410172, г. Санкт-Петербург, ул. Северная, 13, кв. 86', CAST(N'1999-03-26' AS Date), 1710, 427875, N'cl12371')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462553, N'lori17@hotmail.com', N'Наумов Руслан Михайлович', N'420151, г. Санкт-Петербург, ул. Вишневая, 32, кв. 81', CAST(N'1999-10-11' AS Date), 1806, 289145, N'cl12372')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462554, N'campbellkevin@gardner.com', N'Бочаров Никита Матвеевич', N'125061, г. Санкт-Петербург, ул. Подгорная, 8, кв. 74', CAST(N'1997-06-29' AS Date), 1587, 291249, N'cl12373')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462555, N'morganhoward@clark.com', N'Соловьев Давид Ильич', N'630370, г. Санкт-Петербург, ул. Шоссейная, 24, кв. 81', CAST(N'1984-03-06' AS Date), 1647, 306372, N'cl12374')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462556, N'carsontamara@gmail.com', N'Васильева Валерия Дмитриевна', N'614753, г. Санкт-Петербург, ул. Полевая, 35, кв. 39', CAST(N'1999-09-30' AS Date), 1742, 316556, N'cl12375')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462557, N'kevinpatel@gmail.com', N'Макарова Василиса Андреевна', N'426030, г. Санкт-Петербург, ул. Маяковского, 44, кв. 93', CAST(N'1999-04-08' AS Date), 1474, 326347, N'cl12376')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462558, N'sethbishop@yahoo.com', N'Алексеев Матвей Викторович', N'450375, г. Санкт-Петербург, ул. Клубная, 44, кв. 80', CAST(N'1998-08-02' AS Date), 1452, 339539, N'cl12377')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462559, N'drollins@schultz-soto.net', N'Никитина Полина Александровна', N'625560, г. Санкт-Петербург, ул. Некрасова, 12, кв. 66', CAST(N'1976-09-19' AS Date), 2077, 443480, N'cl12378')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462560, N'pblack@copeland-winters.org', N'Окулова Олеся Алексеевна', N'630201, г. Санкт-Петербург, ул. Комсомольская, 17, кв. 25', CAST(N'1999-04-03' AS Date), 2147, 357518, N'cl12379')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462561, N'johnathon.oberbrunner@yahoo.com', N'Захарова Полина Яновна', N'190949, г. Санкт-Петербург, ул. Мичурина, 26, кв. 93', CAST(N'1976-04-21' AS Date), 2687, 363884, N'cl12380')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462562, N'bradly29@gmail.com', N'Зайцев Владимир Давидович', N'350501, г. Санкт-Петербург, ул. Парковая, 2, кв. 7', CAST(N'1998-01-26' AS Date), 2376, 443711, N'cl12381')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462563, N'stark.cristina@hilpert.biz', N'Иванов Виталий Даниилович', N'450048, г. Санкт-Петербург, ул. Коммунистическая, 21, кв. 3', CAST(N'1976-08-11' AS Date), 2568, 386237, N'cl12382')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462564, N'bruen.eleanore@yahoo.com', N'Захаров Матвей Романович', N'644921, г. Санкт-Петербург, ул. Школьная, 46, кв. 37', CAST(N'1993-07-12' AS Date), 2556, 439376, N'cl12383')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462565, N'percival.halvorson@yahoo.com', N'Иванов Степан Степанович', N'614228, г. Санкт-Петербург, ул. Дорожная, 36, кв. 54', CAST(N'1998-09-19' AS Date), 2737, 407501, N'cl12384')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462566, N'javonte71@kuhlman.biz', N'Ткачева Милана Тимуровна', N'350940, г. Санкт-Петербург, ул. Первомайская, 23, кв. 2', CAST(N'1998-05-24' AS Date), 2581, 441645, N'cl12385')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462567, N'vconnelly@kautzer.com', N'Семенов Даниил Иванович', N'344990, г. Санкт-Петербург, ул. Красноармейская, 19, кв. 92', CAST(N'1976-01-04' AS Date), 2675, 427933, N'cl12386')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462568, N'anabelle07@schultz.info', N'Виноградов Вячеслав Дмитриевич', N'410248, г. Санкт-Петербург, ул. Чкалова, 11, кв. 75', CAST(N'1976-07-12' AS Date), 2967, 434531, N'cl12387')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462569, N'nitzsche.katlynn@yahoo.com', N'Соболева Николь Фёдоровна', N'400839, г. Санкт-Петербург, ул. 8 Марта, 46, кв. 44', CAST(N'1976-05-02' AS Date), 3070, 449655, N'cl12388')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462570, N'corine16@von.com', N'Тихонова Анна Львовна', N'450539, г. Санкт-Петербург, ул. Заводская, 3, кв. 81', CAST(N'1985-03-23' AS Date), 3108, 451174, N'cl12389')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462571, N'otha.wisozk@lubowitz.org', N'Кузнецова Ульяна Савельевна', N'614591, г. Санкт-Петербург, ул. Цветочная, 20, кв. 40', CAST(N'1999-06-03' AS Date), 3250, 464705, N'cl12390')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462572, N'may.kirlin@hotmail.com', N'Смирнова Анна Германовна', N'400260, г. Санкт-Петербург, ул. Больничная, 30, кв. 53', CAST(N'1997-07-18' AS Date), 3392, 471644, N'cl12391')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462573, N'bryana.kautzer@yahoo.com', N'Черепанова Анна Давидовна', N'660924, г. Санкт-Петербург, ул. Молодежная, 32, кв. 59', CAST(N'1985-11-06' AS Date), 3497, 487819, N'cl12392')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462574, N'deborah.christiansen@quigley.biz', N'Григорьев Максим Кириллович', N'644133, г. Санкт-Петербург, ул. Гагарина, 28, кв. 69', CAST(N'1999-05-26' AS Date), 3560, 491260, N'cl12393')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462575, N'connelly.makayla@yahoo.com', N'Голубев Даниэль Александрович', N'450698, г. Санкт-Петербург, ул. Вокзальная, 14, кв. 37', CAST(N'1999-06-14' AS Date), 3620, 506034, N'cl12394')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462576, N'tatum.collins@fay.org', N'Миронов Юрий Денисович', N'620653, г. Санкт-Петербург, ул. Западная, 15, кв. 25', CAST(N'1985-01-26' AS Date), 3774, 511438, N'cl12395')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462577, N'itzel73@anderson.com', N'Терехов Михаил Андреевич', N'644321, г. Санкт-Петербург, ул. Клубная, 32, кв. 10', CAST(N'1976-07-06' AS Date), 3862, 521377, N'cl12396')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462578, N'arjun39@hotmail.com', N'Орлова Алиса Михайловна', N'603653, г. Санкт-Петербург, ул. Молодежная, 2, кв. 45', CAST(N'1997-02-24' AS Date), 3084, 535966, N'cl12397')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462579, N'ohara.rebeka@yahoo.com', N'Кулаков Константин Даниилович', N'410181, г. Санкт-Петербург, ул. Механизаторов, 16, кв. 74', CAST(N'1993-06-20' AS Date), 4021, 541528, N'cl12398')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462580, N'danika58@rath.com', N'Кудрявцев Максим Романович', N'394207, г. Санкт-Петербург, ул. Свердлова, 31, кв. 28', CAST(N'1998-05-10' AS Date), 4109, 554053, N'cl12399')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462581, N'janae.bogan@gmail.com', N'Соболева Кира Фёдоровна', N'420633, г. Санкт-Петербург, ул. Матросова, 18, кв. 41', CAST(N'1998-03-14' AS Date), 4537, 564868, N'cl12400')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462582, N'vern91@yahoo.com', N'Коновалов Арсений Максимович', N'445720, г. Санкт-Петербург, ул. Матросова, 50, кв. 67', CAST(N'1985-02-18' AS Date), 4914, 572471, N'cl12401')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462583, N'mariana.leannon@larkin.net', N'Гусев Михаил Дмитриевич', N'400646, г. Санкт-Петербург, ул. Октябрьская, 47, кв. 65', CAST(N'1999-11-23' AS Date), 4445, 581302, N'cl12402')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462584, N'vmoore@gmail.com', N'Суханова Варвара Матвеевна', N'644410, г. Санкт-Петербург, ул. Красная, 17, кв. 69', CAST(N'1993-09-13' AS Date), 4743, 598180, N'cl12403')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462585, N'damon.mcclure@mills.com', N'Орлова Ясмина Васильевна', N'400750, г. Санкт-Петербург, ул. Школьная, 36, кв. 71', CAST(N'1984-06-24' AS Date), 4741, 601821, N'cl12404')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462586, N'grady.reilly@block.com', N'Васильева Ксения Константиновна', N'660590, г. Санкт-Петербург, ул. Дачная, 37, кв. 70', CAST(N'1999-08-01' AS Date), 4783, 612567, N'cl12405')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462587, N'boyd.koss@yahoo.com', N'Борисова Тамара Данииловна', N'426083, г. Санкт-Петербург, ул. Механизаторов, 41, кв. 26', CAST(N'1993-05-29' AS Date), 4658, 621200, N'cl12406')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462588, N'obartell@franecki.info', N'Дмитриев Мирон Ильич', N'410569, г. Санкт-Петербург, ул. Парковая, 36, кв. 17', CAST(N'1985-04-13' AS Date), 4908, 634613, N'cl12407')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462589, N'reina75@ferry.net', N'Лебедева Анна Александровна', N'443375, г. Санкт-Петербург, ул. Дзержинского, 50, кв. 95', CAST(N'1985-03-30' AS Date), 5092, 642468, N'cl12408')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462590, N'karson28@hotmail.com', N'Пономарев Артём Маркович', N'614316, г. Санкт-Петербург, ул. Первомайская, 48, кв. 31', CAST(N'1984-06-02' AS Date), 5155, 465274, N'cl12409')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462591, N'damaris61@okon.com', N'Борисова Елена Михайловна', N'445685, г. Санкт-Петербург, ул. Зеленая, 7, кв. 47', CAST(N'1976-05-23' AS Date), 5086, 666893, N'cl12410')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462592, N'carroll.jerod@hotmail.com', N'Моисеев Камиль Максимович', N'614505, г. Санкт-Петербург, ул. Нагорная, 37, кв. 31', CAST(N'1999-06-17' AS Date), 5333, 675375, N'cl12411')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462593, N'ron.treutel@quitzon.com', N'Герасимова Дарья Константиновна', N'426629, г. Санкт-Петербург, ул. Весенняя, 32, кв. 46', CAST(N'1984-10-13' AS Date), 5493, 684572, N'cl12412')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462594, N'olen79@yahoo.com', N'Михайлова Мария Марковна', N'603743, г. Санкт-Петербург, ул. Матросова, 19, кв. 20', CAST(N'1976-12-02' AS Date), 5150, 696226, N'cl12413')
INSERT [dbo].[Clients] ([ClientID], [Email], [fio], [Adress], [Birthday], [PassCode], [PassNumber], [Password]) VALUES (45462595, N'pacocha.robbie@yahoo.com', N'Коршунов Кирилл Максимович', N'450750, г. Санкт-Петербург, ул. Клубная, 23, кв. 90', CAST(N'1985-05-22' AS Date), 1308, 703305, N'cl12414')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44632/45462524', 45462526, 120, CAST(N'2022-03-12' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44633/45462527', 45462527, 600, CAST(N'2022-03-13' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 2)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44634/454625281', 45462528, 120, CAST(N'2022-03-14' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 3)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44635/45462529', 45462529, 600, CAST(N'2022-03-15' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 4)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44636/45462530', 45462530, 320, CAST(N'2022-03-16' AS Date), 3, CAST(N'2022-04-16' AS Date), CAST(N'2023-01-30' AS Date), 5)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44637/45462531', 45462531, 480, CAST(N'2022-03-17' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 6)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44638/45462532', 45462532, 240, CAST(N'2022-03-18' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 7)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44639/45462533', 45462533, 360, CAST(N'2022-03-19' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 8)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44640/45462534', 45462534, 720, CAST(N'2022-03-20' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 9)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44642/45462536', 45462536, 600, CAST(N'2022-03-22' AS Date), 3, CAST(N'2022-03-22' AS Date), CAST(N'2023-01-30' AS Date), 11)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44643/45462537', 45462537, 120, CAST(N'2022-03-23' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 12)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44644/45462538', 45462538, 600, CAST(N'2022-03-24' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 13)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44645/45462539', 45462539, 320, CAST(N'2022-03-25' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 14)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44646/45462540', 45462540, 480, CAST(N'2022-03-26' AS Date), 3, CAST(N'2022-04-26' AS Date), CAST(N'2023-01-30' AS Date), 15)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44647/45462541', 45462541, 240, CAST(N'2022-03-27' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 16)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44648/45462542', 45462542, 360, CAST(N'2022-03-28' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 17)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44649/45462543', 45462543, 720, CAST(N'2022-03-29' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 18)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44650/45462544', 45462544, 120, CAST(N'2022-03-30' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 19)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44651/45462545', 45462545, 600, CAST(N'2022-03-31' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 20)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44652/45462546', 45462546, 120, CAST(N'2022-04-01' AS Date), 3, CAST(N'2022-04-01' AS Date), CAST(N'2023-01-30' AS Date), 21)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44653/45462547', 45462547, 600, CAST(N'2022-04-02' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 22)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44654/45462548', 45462548, 320, CAST(N'2022-04-03' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 23)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44655/45462549', 45462549, 480, CAST(N'2022-04-04' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 24)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44656/45462550', 45462550, 240, CAST(N'2022-04-05' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 25)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44657/45462551', 45462551, 360, CAST(N'2022-04-06' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 26)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44658/45462552', 45462552, 720, CAST(N'2022-04-07' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 27)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44659/45462553', 45462553, 120, CAST(N'2022-04-08' AS Date), 3, CAST(N'2022-04-08' AS Date), CAST(N'2023-01-30' AS Date), 28)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44660/45462554', 45462554, 600, CAST(N'2022-04-09' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 29)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44661/45462555', 45462555, 120, CAST(N'2022-04-10' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 30)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44662/45462556', 45462556, 600, CAST(N'2022-04-11' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 31)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44663/45462557', 45462557, 320, CAST(N'2022-04-12' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 32)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44664/45462558', 45462558, 480, CAST(N'2022-04-13' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 33)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44665/45462559', 45462559, 240, CAST(N'2022-04-14' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 34)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44666/45462560', 45462560, 360, CAST(N'2022-04-15' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 35)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44653/45462561', 45462561, 720, CAST(N'2022-04-02' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 36)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44654/45462562', 45462562, 120, CAST(N'2022-04-03' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 37)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44655/45462563', 45462563, 600, CAST(N'2022-04-04' AS Date), 3, CAST(N'2022-04-04' AS Date), CAST(N'2023-01-30' AS Date), 38)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44656/45462564', 45462564, 120, CAST(N'2022-04-05' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 39)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44657/45462565', 45462565, 600, CAST(N'2022-04-06' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 40)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44658/45462566', 45462566, 320, CAST(N'2022-04-07' AS Date), 3, CAST(N'2022-04-07' AS Date), CAST(N'2023-01-30' AS Date), 41)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44659/45462567', 45462567, 480, CAST(N'2022-04-08' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 42)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44660/45462568', 45462568, 240, CAST(N'2022-04-09' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 43)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44652/45462569', 45462569, 360, CAST(N'2022-04-01' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 44)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44653/45462570', 45462570, 720, CAST(N'2022-04-02' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 45)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44654/45462571', 45462571, 480, CAST(N'2022-04-03' AS Date), 2, NULL, CAST(N'2023-01-30' AS Date), 46)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44655/45462572', 45462572, 320, CAST(N'2022-04-04' AS Date), 3, CAST(N'2022-04-04' AS Date), CAST(N'2023-01-30' AS Date), 47)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44656/45462573', 45462573, 480, CAST(N'2022-04-05' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 48)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44657/45462574', 45462574, 240, CAST(N'2022-04-06' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 49)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderTime], [DateCreate], [OrderStatus], [DateClose], [RentalTime], [ID]) VALUES (N'44658/45462575', 45462575, 360, CAST(N'2022-04-07' AS Date), 1, NULL, CAST(N'2023-01-30' AS Date), 50)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Role] ([Title], [RoleID]) VALUES (N'Администратор                                     ', 1)
INSERT [dbo].[Role] ([Title], [RoleID]) VALUES (N'Продавец                                          ', 2)
INSERT [dbo].[Role] ([Title], [RoleID]) VALUES (N'Старший смены                                     ', 3)
GO
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (31, N'Прокат опорного оборудования для катка            ', N'JUR8R                                             ', 500)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (34, N'Обучение катанию на коньках                       ', N'JKFBJ09                                           ', 1000)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (44, N'Прокат салазок                                    ', N'DHBGFY563                                         ', 450)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (45, N'Прокат набора защитного оборудования              ', N'JFH7382                                           ', 800)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (57, N'Прокат ледянки                                    ', N'JHVSJF6                                           ', 300)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (88, N'Катание на Большом катке                          ', N'DJHGBS982                                         ', 400)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (89, N'Прокат детских коньков                            ', N'OIJNB12                                           ', 800)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (92, N'Прокат санок                                      ', N'HJBUJE21J                                         ', 300)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (98, N'Прокат шлема                                      ', N'63748HF                                           ', 300)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (99, N'Прокат вартушки                                   ', N'BSFBHV63                                          ', 100)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (123, N'Катание на горках                                 ', N'638VVNQ3                                          ', 500)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (336, N'Прокат коньков                                    ', N'8HFJHG443                                         ', 1200)
INSERT [dbo].[Services] ([id], [services_name], [services_code], [cost]) VALUES (353, N'Заточка коньков                                   ', N'87FDJKHJ                                          ', 500)
GO
INSERT [dbo].[status] ([id], [title]) VALUES (1, N'Новая                                             ')
INSERT [dbo].[status] ([id], [title]) VALUES (2, N'В прокате                                         ')
INSERT [dbo].[status] ([id], [title]) VALUES (3, N'Закрыта                                           ')
GO
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (101, N'Ivanov@namecomp.ru', 1, N'2L6KZG', N'Null                                                                                                ', N'Иванов Иван Иванович                                                                                ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (102, N'petrov@namecomp.ru', 2, N'uzWC67', N'Null                                                                                                ', N'Петров Петр Петрович                                                                                ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (103, N'fedorov@namecomp.ru', 1, N'8ntwUp', N'Null                                                                                                ', N'Федоров Федор Федорович                                                                             ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (104, N'mironov@namecomp.ru', 3, N'YOyhfR1', N'Null                                                                                                ', N'Миронов Вениамин Куприянович                                                                        ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (107, N'hohlov@namecomp.ru', 2, N'LdNyos', N'Null                                                                                                ', N'Хохлов Владимир Мэлсович                                                                            ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (108, N'strelkov@namecomp.ru', 2, N'gynQMT', N'Null                                                                                                ', N'Стрелков Мстислав Георгьевич                                                                        ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 0)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (109, N'belyeva@@namecomp.ru', 2, N'AtnDjr', N'Null                                                                                                ', N'Беляева Лилия Наумовна                                                                              ', CAST(N'2023-03-07T18:13:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserID], [Login], [RoleID], [Password], [photo], [fio], [date], [auth]) VALUES (110, N'smirnova@@namecomp.ru', 2, N'JlFRCZ', N'Null                                                                                                ', N'Смирнова Ульяна Гордеевна                                                                           ', CAST(N'2023-02-07T13:13:00.000' AS DateTime), 1)
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemTypes] FOREIGN KEY([ItemTypeID])
REFERENCES [dbo].[ItemTypes] ([TypeID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemTypes]
GO
ALTER TABLE [dbo].[order_service]  WITH CHECK ADD  CONSTRAINT [FK_order_service_Orders] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[order_service] CHECK CONSTRAINT [FK_order_service_Orders]
GO
ALTER TABLE [dbo].[order_service]  WITH CHECK ADD  CONSTRAINT [FK_order_service_Services] FOREIGN KEY([IDService])
REFERENCES [dbo].[Services] ([id])
GO
ALTER TABLE [dbo].[order_service] CHECK CONSTRAINT [FK_order_service_Services]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_status] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
USE [master]
GO
ALTER DATABASE [Blagodat] SET  READ_WRITE 
GO
