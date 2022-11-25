USE [master]
GO
/****** Object:  Database [MyWorldDB]    Script Date: 26/11/2022 00:14:51 ******/
CREATE DATABASE [MyWorldDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyWorldDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MyWorldDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyWorldDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MyWorldDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MyWorldDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyWorldDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyWorldDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyWorldDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyWorldDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyWorldDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyWorldDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyWorldDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyWorldDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyWorldDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyWorldDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyWorldDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyWorldDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyWorldDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyWorldDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyWorldDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyWorldDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyWorldDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyWorldDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyWorldDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyWorldDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyWorldDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyWorldDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyWorldDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyWorldDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MyWorldDB] SET  MULTI_USER 
GO
ALTER DATABASE [MyWorldDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyWorldDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyWorldDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyWorldDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyWorldDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyWorldDB] SET QUERY_STORE = OFF
GO
USE [MyWorldDB]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 26/11/2022 00:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](200) NULL,
	[LastName] [varchar](100) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](10) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MyWorldDB] SET  READ_WRITE 
GO