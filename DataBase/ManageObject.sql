/*    ==脚本参数==

    源服务器版本 : SQL Server 2017 (14.0.1000)
    源数据库引擎版本 : Microsoft SQL Server Express Edition
    源数据库引擎类型 : 独立的 SQL Server

    目标服务器版本 : SQL Server 2017
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/
USE [master]
GO
/****** Object:  Database [ObjectManage]    Script Date: 2017/10/9 16:02:53 ******/
CREATE DATABASE [ObjectManage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ObjectManage', FILENAME = N'D:\Software\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ObjectManage.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ObjectManage_log', FILENAME = N'D:\Software\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ObjectManage_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ObjectManage] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ObjectManage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ObjectManage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ObjectManage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ObjectManage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ObjectManage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ObjectManage] SET ARITHABORT OFF 
GO
ALTER DATABASE [ObjectManage] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ObjectManage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ObjectManage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ObjectManage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ObjectManage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ObjectManage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ObjectManage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ObjectManage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ObjectManage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ObjectManage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ObjectManage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ObjectManage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ObjectManage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ObjectManage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ObjectManage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ObjectManage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ObjectManage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ObjectManage] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ObjectManage] SET  MULTI_USER 
GO
ALTER DATABASE [ObjectManage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ObjectManage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ObjectManage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ObjectManage] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ObjectManage] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ObjectManage] SET QUERY_STORE = OFF
GO
USE [ObjectManage]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ObjectManage]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2017/10/9 16:02:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[no] [varchar](11) NOT NULL,
	[name] [nvarchar](10) NOT NULL,
	[age] [nvarchar](10) NULL,
	[phoneNumber] [nvarchar](10) NULL,
	[sex] [nvarchar](10) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2017/10/9 16:02:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[no] [varchar](11) NOT NULL,
	[name] [nvarchar](10) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[student] ([no], [name], [age], [phoneNumber], [sex]) VALUES (N'123', N'1', N'1', N'1', N'男')
INSERT [dbo].[student] ([no], [name], [age], [phoneNumber], [sex]) VALUES (N'1234', N'121', N'1', N'12', N'15')
INSERT [dbo].[student] ([no], [name], [age], [phoneNumber], [sex]) VALUES (N'124', N'1243', N'2134', N'1234', N'124')
INSERT [dbo].[student] ([no], [name], [age], [phoneNumber], [sex]) VALUES (N'1243', N'124', N'124', N'1243', N'1')
INSERT [dbo].[student] ([no], [name], [age], [phoneNumber], [sex]) VALUES (N'1421', N'qr', N'1', N'1235', N'qr')
INSERT [dbo].[student] ([no], [name], [age], [phoneNumber], [sex]) VALUES (N'2', N'41qre', N'12', N'12', N'男')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'12', N'131124')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'1234', N'12512')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'1234214', N'213421')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'12351', N'1234124')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'1235215', N'1243214')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'124125', N'12124')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'12551', N'1243')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'142', N'1414')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'2', N'李四')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'214', N'1421')
INSERT [dbo].[teacher] ([no], [name]) VALUES (N'5', N'小明')
USE [master]
GO
ALTER DATABASE [ObjectManage] SET  READ_WRITE 
GO
