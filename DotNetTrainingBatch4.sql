USE [master]
GO
/****** Object:  Database [DotNetTrainingBatch4]    Script Date: 6/15/2024 9:26:39 PM ******/
CREATE DATABASE [DotNetTrainingBatch4] ON  PRIMARY 
( NAME = N'DotNetTrainingBatch4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DotNetTrainingBatch4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DotNetTrainingBatch4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DotNetTrainingBatch4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DotNetTrainingBatch4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DotNetTrainingBatch4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET ARITHABORT OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET  MULTI_USER 
GO
ALTER DATABASE [DotNetTrainingBatch4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DotNetTrainingBatch4] SET DB_CHAINING OFF 
GO
USE [DotNetTrainingBatch4]
GO
/****** Object:  Table [dbo].[Tbl_Blog]    Script Date: 6/15/2024 9:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[BlogTitle] [varchar](50) NOT NULL,
	[BlogAuthor] [varchar](50) NOT NULL,
	[BlogContent] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Blog] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Blog] ON 
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (1, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (2, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (3, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (4, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (5, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (6, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (8, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (9, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (10, N'Test Tile', N'Test Auther', N'Test Content')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (11, N'titile 2', N'author 2', N'content 2')
GO
INSERT [dbo].[Tbl_Blog] ([BlogId], [BlogTitle], [BlogAuthor], [BlogContent]) VALUES (13, N'titile 1', N'author 1', N'content 1')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Blog] OFF
GO
USE [master]
GO
ALTER DATABASE [DotNetTrainingBatch4] SET  READ_WRITE 
GO
