USE [master]
GO
/****** Object:  Database [EcommerceProject]    Script Date: 12/08/2020 02:42:31 م ******/
CREATE DATABASE [EcommerceProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EcommerceProject', FILENAME = N'I:\Projects\Web\Web Development\E-commerce\Database\EcommerceProject.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EcommerceProject_log', FILENAME = N'I:\Projects\Web\Web Development\E-commerce\Database\EcommerceProject_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EcommerceProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EcommerceProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EcommerceProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EcommerceProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EcommerceProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EcommerceProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EcommerceProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [EcommerceProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EcommerceProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EcommerceProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EcommerceProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EcommerceProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EcommerceProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EcommerceProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EcommerceProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EcommerceProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EcommerceProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EcommerceProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EcommerceProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EcommerceProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EcommerceProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EcommerceProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EcommerceProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EcommerceProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EcommerceProject] SET RECOVERY FULL 
GO
ALTER DATABASE [EcommerceProject] SET  MULTI_USER 
GO
ALTER DATABASE [EcommerceProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EcommerceProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EcommerceProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EcommerceProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EcommerceProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EcommerceProject', N'ON'
GO
USE [EcommerceProject]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Vision] [nvarchar](max) NOT NULL,
	[Mission] [nvarchar](max) NOT NULL,
	[WhoAreWe] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brand]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](150) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactMesaage]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMesaage](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsAnswer] [bit] NOT NULL,
 CONSTRAINT [PK_ContactMesaage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[facebook] [nvarchar](150) NULL,
	[phone] [nvarchar](15) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [bigint] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[UserAddressFK] [bigint] NOT NULL,
	[UserFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Price] [bigint] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderFK] [bigint] NOT NULL,
	[ProductFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Decription] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[SubCatFK] [bigint] NULL,
	[CatFK] [bigint] NOT NULL,
	[BrandFK] [bigint] NOT NULL,
	[IsBestSeller] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductColor]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[ProductFK] [bigint] NOT NULL,
	[ColorFk] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[CategoryFK] [bigint] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[RoleFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 12/08/2020 02:42:32 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[phone] [nvarchar](15) NOT NULL,
	[UserFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AboutUs] ON 

INSERT [dbo].[AboutUs] ([ID], [Vision], [Mission], [WhoAreWe], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Every person has the opportunity to achieve his/her fullest potential and participate in and contribute to all aspects of life.', N'Goodwill works to enhance the dignity and quality of life of individuals and families by strengthening communities, eliminating barriers to opportunity, and helping people in need reach their full potential through learning and the power of work.', N'We are one of the best electronic commerce websites in Egypt', 1, CAST(N'2020-07-06 00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AboutUs] OFF
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'HP', N'/Attachments/Brands/HP-logo.png', 1, CAST(N'2020-06-20 00:00:00.000' AS DateTime), 2, CAST(N'2020-07-07 14:31:51.173' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Toshiba', N'/Attachments/Brands/Toshiba-Logo.png', 1, CAST(N'2020-07-06 00:00:00.000' AS DateTime), 2, CAST(N'2020-07-07 14:34:21.323' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Samsung', N'/Attachments/Brands/Samsung1-logo.png', 1, CAST(N'2020-07-06 00:00:00.000' AS DateTime), 2, CAST(N'2020-07-07 14:58:49.487' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (10004, N'Microsoft', N'/Attachments/Brands/Microsoft_logo_(2012)_modified.svg.png', 1, CAST(N'2020-07-07 13:39:38.153' AS DateTime), 2, CAST(N'2020-07-07 14:37:15.540' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (10005, N'LG', N'/Attachments/Brands/lg1-logo.png', 1, CAST(N'2020-07-07 13:41:49.067' AS DateTime), 2, CAST(N'2020-07-07 15:00:24.857' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (10006, N'Apple', N'/Attachments/Brands/Apple1-logo.png', 1, CAST(N'2020-07-07 13:42:23.863' AS DateTime), 2, CAST(N'2020-07-07 15:02:52.447' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (10007, N'Nokia', N'/Attachments/Brands/Nokia.png', 1, CAST(N'2020-07-07 13:45:08.730' AS DateTime), 2, CAST(N'2020-07-07 14:40:30.727' AS DateTime))
INSERT [dbo].[Brand] ([ID], [Name], [Image], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (10008, N'Google', N'/Attachments/Brands/Google_logo.svg.png', 1, CAST(N'2020-07-07 14:26:42.000' AS DateTime), NULL, CAST(N'2020-07-08 16:59:33.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Laptop', 1, CAST(N'2020-06-20 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Smart Phone', 1, CAST(N'2020-07-06 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Head phone', 1, CAST(N'2020-07-06 00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (10007, N'Screens', 1, CAST(N'2020-07-08 18:41:19.917' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ID], [Name], [Code], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Red', N'#ff0000', 2, CAST(N'2020-07-28 13:37:01.580' AS DateTime), NULL, NULL)
INSERT [dbo].[Color] ([ID], [Name], [Code], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Green', N'#00ff00', 2, CAST(N'2020-07-28 13:38:49.813' AS DateTime), NULL, NULL)
INSERT [dbo].[Color] ([ID], [Name], [Code], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Blue', N'#0000ff', 2, CAST(N'2020-07-28 14:40:10.000' AS DateTime), 2, CAST(N'2020-07-28 14:42:05.740' AS DateTime))
INSERT [dbo].[Color] ([ID], [Name], [Code], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Yellow', N'#ffff00', 2, CAST(N'2020-07-29 13:05:09.177' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[ContactMesaage] ON 

INSERT [dbo].[ContactMesaage] ([ID], [Name], [Email], [Message], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsAnswer]) VALUES (10, N'George S. Patton', N'georgs@gmail.com', N'Wars may be fought with weapons, but they are won by men. It is the spirit of men who follow and of the man who leads that gains the victory.', 2, CAST(N'2020-07-14 13:12:21.190' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[ContactMesaage] ([ID], [Name], [Email], [Message], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsAnswer]) VALUES (11, N'Ibrahim Elsayed', N'ibrahim.elsayed.26498@gmail.com', N'Customer testimonials can be the most persuasive social proof on your website. We''ll share how to find your own positive testimonials and why you should.', 2, CAST(N'2020-08-12 14:19:57.700' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[ContactMesaage] ([ID], [Name], [Email], [Message], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsAnswer]) VALUES (16, N'Ibrahim Elsayed', N'Mo@gmail.com', N';kjs;fj', 2, CAST(N'2020-08-12 14:37:14.387' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ContactMesaage] OFF
SET IDENTITY_INSERT [dbo].[ContactUs] ON 

INSERT [dbo].[ContactUs] ([ID], [Email], [address], [facebook], [phone], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'asmofficial@gmail.com
', N'ShebinElkom 40 Parice Sreet 133/2
', N'web.facebook.com/asmofficial', N'+201012895020
', 1, CAST(N'2020-07-06 00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (2, N'Dolby', 2000, N'/Attachments/Products/labtop.png', N'RAM 2 G', 1, CAST(N'2020-02-20 00:00:00.000' AS DateTime), 2, CAST(N'2020-07-06 18:17:48.273' AS DateTime), NULL, 1, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10004, N'ACER', 5000, N'/Attachments/Products/laptop1.jpg', N'RAM 4 G
Core i 5', 1, CAST(N'2020-07-06 18:32:19.860' AS DateTime), 2, CAST(N'2020-07-06 18:32:43.227' AS DateTime), NULL, 1, 1, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10005, N'probook hp', 6000, N'/Attachments/Products/labtop2.jpg', N'RAM 6 G Core i 7	', 1, CAST(N'2020-07-06 18:34:06.000' AS DateTime), 1, CAST(N'2020-07-07 23:00:14.730' AS DateTime), NULL, 1, 1, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10006, N'Hp probook 2020', 10000, N'/Attachments/Products/laptp3.jpg', N'RAM 8 G
Core i 9', 1, CAST(N'2020-07-06 18:36:22.527' AS DateTime), 2, CAST(N'2020-07-06 18:36:37.677' AS DateTime), NULL, 1, 1, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10007, N'SPH1', 5000, N'/Attachments/Products/SPh1.jpg', N'RAM 3 G', 1, CAST(N'2020-07-06 18:45:20.000' AS DateTime), 1, CAST(N'2020-07-07 23:00:24.297' AS DateTime), NULL, 2, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10008, N'SPH2', 3000, N'/Attachments/Products/SPh2.jpg', N'RAM 2 G', 1, CAST(N'2020-07-06 18:46:03.670' AS DateTime), 2, CAST(N'2020-07-06 18:46:15.187' AS DateTime), NULL, 2, 3, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10009, N'Smart Phone 2020', 10000, N'/Attachments/Products/SPh4.jpg', N'RAM 8 G', 1, CAST(N'2020-07-06 18:46:50.297' AS DateTime), 2, CAST(N'2020-07-06 18:47:01.570' AS DateTime), NULL, 2, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10010, N'Smart Phone 2021', 12000, N'/Attachments/Products/SPh3.jpg', N'RAM 12 G', 1, CAST(N'2020-07-06 18:47:43.217' AS DateTime), 2, CAST(N'2020-07-06 18:47:52.737' AS DateTime), NULL, 2, 3, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10011, N'HPh1', 500, N'/Attachments/Products/HPh1.jpg', N'Bluetooth', 1, CAST(N'2020-07-06 18:50:43.003' AS DateTime), 2, CAST(N'2020-07-06 18:50:56.673' AS DateTime), NULL, 4, 2, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (10012, N'HPh2', 600, N'/Attachments/Products/HPh2.jpg', N'Bluetooth
Mice', 1, CAST(N'2020-07-06 18:51:19.000' AS DateTime), 1, CAST(N'2020-07-07 22:59:59.667' AS DateTime), NULL, 4, 3, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (20002, N'iphone 6 plus', 7000, N'/Attachments/Products/iphone.png', N'I phone six plus.
IOS', 1, CAST(N'2020-07-07 14:22:40.000' AS DateTime), 1, CAST(N'2020-07-08 16:54:50.107' AS DateTime), NULL, 2, 10006, 0)
INSERT [dbo].[Product] ([ID], [Name], [Price], [Image], [Decription], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [SubCatFK], [CatFK], [BrandFK], [IsBestSeller]) VALUES (20003, N'HeadPhone2022', 7000, N'/Attachments/Products/hph2022.jpg', N'Bluetooth
Wifi', 1, CAST(N'2020-07-07 22:54:56.373' AS DateTime), 2, CAST(N'2020-07-07 23:18:51.613' AS DateTime), NULL, 4, 10006, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductColor] ON 

INSERT [dbo].[ProductColor] ([ID], [Image], [ProductFK], [ColorFk], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N' ', 20003, 1, 2, CAST(N'2020-07-28 21:31:01.583' AS DateTime), NULL, NULL)
INSERT [dbo].[ProductColor] ([ID], [Image], [ProductFK], [ColorFk], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N' ', 20002, 3, 2, CAST(N'2020-07-28 21:46:18.453' AS DateTime), 2, CAST(N'2020-07-29 12:27:52.157' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductColor] OFF
INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([ID], [Name], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [CategoryFK]) VALUES (2, N'PC Screens', 1, CAST(N'2020-07-22 18:54:20.007' AS DateTime), 1, CAST(N'2020-07-22 18:55:04.540' AS DateTime), 10007)
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [Phone], [Address], [RoleFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (1, N'Ibrahim Elsayed', N'ibrahim.elsayed.26498@gmail.com', N'123', N'+201033939718', N'Alex', 1, NULL, CAST(N'2020-06-20 00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [Phone], [Address], [RoleFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (2, N'Omar', N'omar@gmail.com', N'123', N'123', N'Menouf', 2, NULL, CAST(N'2020-06-20 21:14:53.233' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [Phone], [Address], [RoleFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (3, N'Ahmed', N'a@gmail.com', N'123', N'123', N'Alex', 2, NULL, CAST(N'2020-06-29 08:08:15.727' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [Phone], [Address], [RoleFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (4, N'Ahmed Mohmed', N'A.M@gmail.com', N'1234', N'+201033939718', N'Alex, Egypt', 2, NULL, CAST(N'2020-07-12 20:55:10.940' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [Phone], [Address], [RoleFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (5, N'John Smith', N'j.s@gmail.com', N'123', N'+20123456789', N'Alex', 2, NULL, CAST(N'2020-07-29 14:07:14.347' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [Phone], [Address], [RoleFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (6, N'Micheal', N'm@m.com', N'asd', N'kjf', N'kjfd', 2, NULL, CAST(N'2020-07-29 14:14:41.950' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserAddress] ON 

INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'Alex', N'+201033939718', 1, 1, CAST(N'2020-08-12 06:48:18.787' AS DateTime), NULL, NULL)
INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'Alexandria', N'+201033939718', 1, 1, CAST(N'2020-08-12 06:49:41.240' AS DateTime), NULL, NULL)
INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'Menouf', N'+201033939718', 2, 2, CAST(N'2020-08-12 07:57:51.127' AS DateTime), NULL, NULL)
INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'Menouf', N'+201033939718', 2, 2, CAST(N'2020-08-12 08:00:15.043' AS DateTime), NULL, NULL)
INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'Menouf, Almenofia', N'+201033939718', 2, 2, CAST(N'2020-08-12 10:44:14.167' AS DateTime), NULL, NULL)
INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'Alexandria', N'+201033939718', 1, 1, CAST(N'2020-08-12 14:10:51.487' AS DateTime), NULL, NULL)
INSERT [dbo].[UserAddress] ([ID], [Address], [phone], [UserFK], [CreatedBy], [CreationDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'jj', N'+201033939718', 1, 1, CAST(N'2020-08-12 14:14:14.397' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserAddress] OFF
ALTER TABLE [dbo].[AboutUs]  WITH CHECK ADD  CONSTRAINT [FK_AboutUs_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[AboutUs] CHECK CONSTRAINT [FK_AboutUs_User]
GO
ALTER TABLE [dbo].[AboutUs]  WITH CHECK ADD  CONSTRAINT [FK_AboutUs_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[AboutUs] CHECK CONSTRAINT [FK_AboutUs_User1]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_User]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_User1]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_User]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_User1]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_User]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_User1]
GO
ALTER TABLE [dbo].[ContactMesaage]  WITH CHECK ADD  CONSTRAINT [FK_ContactMesaage_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactMesaage] CHECK CONSTRAINT [FK_ContactMesaage_User]
GO
ALTER TABLE [dbo].[ContactMesaage]  WITH CHECK ADD  CONSTRAINT [FK_ContactMesaage_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactMesaage] CHECK CONSTRAINT [FK_ContactMesaage_User1]
GO
ALTER TABLE [dbo].[ContactUs]  WITH CHECK ADD  CONSTRAINT [FK_ContactUs_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactUs] CHECK CONSTRAINT [FK_ContactUs_User]
GO
ALTER TABLE [dbo].[ContactUs]  WITH CHECK ADD  CONSTRAINT [FK_ContactUs_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactUs] CHECK CONSTRAINT [FK_ContactUs_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserFK])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User2] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User2]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserAddress] FOREIGN KEY([UserAddressFK])
REFERENCES [dbo].[UserAddress] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserAddress]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderFK])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductFK])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_User]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_User1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandFK])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CatFK])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([SubCatFK])
REFERENCES [dbo].[SubCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User1]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_Color] FOREIGN KEY([ColorFk])
REFERENCES [dbo].[Color] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_Color]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_Product] FOREIGN KEY([ProductFK])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_Product]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_User]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_User1]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryFK])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_User]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleFK])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User1]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User] FOREIGN KEY([UserFK])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User1]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User2] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User2]
GO
USE [master]
GO
ALTER DATABASE [EcommerceProject] SET  READ_WRITE 
GO
