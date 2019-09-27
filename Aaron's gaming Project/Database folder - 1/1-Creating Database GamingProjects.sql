If not exists (select * from sys.databases where name = 'GamingProject' )

CREATE DATABASE GamingProject
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GamingProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER_AARO\MSSQL\DATA\GamingProject.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GamingProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER_AARO\MSSQL\DATA\GamingProject_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GamingProject] SET COMPATIBILITY_LEVEL = 120
GO
ALTER DATABASE [GamingProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GamingProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GamingProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GamingProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GamingProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [GamingProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GamingProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GamingProject] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [GamingProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GamingProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GamingProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GamingProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GamingProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GamingProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GamingProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GamingProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GamingProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GamingProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GamingProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GamingProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GamingProject] SET  READ_WRITE 
GO
ALTER DATABASE [GamingProject] SET RECOVERY FULL 
GO
ALTER DATABASE [GamingProject] SET  MULTI_USER 
GO
ALTER DATABASE [GamingProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GamingProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GamingProject] SET DELAYED_DURABILITY = DISABLED 
GO
USE [GamingProject]
GO

IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [GamingProject] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO


create schema Game
go
Create schema PublicMarket
go
Create Schema Hardware
go