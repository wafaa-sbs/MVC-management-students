USE [master]
GO
/****** Object:  Database [students_management]    Script Date: 15/02/2021 23:55:35 ******/
CREATE DATABASE [students_management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'students_management', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\students_management.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'students_management_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\students_management_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [students_management] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [students_management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [students_management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [students_management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [students_management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [students_management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [students_management] SET ARITHABORT OFF 
GO
ALTER DATABASE [students_management] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [students_management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [students_management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [students_management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [students_management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [students_management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [students_management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [students_management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [students_management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [students_management] SET  ENABLE_BROKER 
GO
ALTER DATABASE [students_management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [students_management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [students_management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [students_management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [students_management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [students_management] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [students_management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [students_management] SET RECOVERY FULL 
GO
ALTER DATABASE [students_management] SET  MULTI_USER 
GO
ALTER DATABASE [students_management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [students_management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [students_management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [students_management] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [students_management] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [students_management] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'students_management', N'ON'
GO
ALTER DATABASE [students_management] SET QUERY_STORE = OFF
GO
USE [students_management]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/02/2021 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 15/02/2021 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](max) NULL,
	[Lname] [nvarchar](max) NULL,
	[NIC] [nvarchar](max) NULL,
	[Adress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [students_management] SET  READ_WRITE 
GO
