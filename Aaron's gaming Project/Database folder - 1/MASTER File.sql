USE [master]
GO
/****** Object:  Database [GamingProject]    Script Date: 22/09/2016 1:24:40 p.m. ******/
CREATE DATABASE [GamingProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GamingProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER_AARO\MSSQL\DATA\GamingProject.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GamingProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER_AARO\MSSQL\DATA\GamingProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GamingProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GamingProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
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
ALTER DATABASE [GamingProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GamingProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GamingProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GamingProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GamingProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GamingProject] SET RECOVERY FULL 
GO
ALTER DATABASE [GamingProject] SET  MULTI_USER 
GO
ALTER DATABASE [GamingProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GamingProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GamingProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GamingProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GamingProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GamingProject', N'ON'
GO
USE [GamingProject]
GO
/****** Object:  Schema [Game]    Script Date: 22/09/2016 1:24:40 p.m. ******/
CREATE SCHEMA [Game]
GO
/****** Object:  Schema [Hardware]    Script Date: 22/09/2016 1:24:40 p.m. ******/
CREATE SCHEMA [Hardware]
GO
/****** Object:  Schema [PublicMarket]    Script Date: 22/09/2016 1:24:40 p.m. ******/
CREATE SCHEMA [PublicMarket]
GO
/****** Object:  Table [Game].[GamePlatform]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Game].[GamePlatform](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[PC_Platform] [bit] NULL,
	[PS_Platform] [bit] NULL,
	[XBOX_Platform] [bit] NULL,
	[Phone_Platform] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Game].[Games]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Game].[Games](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[GenreID] [int] NULL DEFAULT ((12)),
	[Title] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[PurchancePrice] [varchar](255) NULL,
	[ReleaseDate] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Game].[GameScore]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Game].[GameScore](
	[ScoreID] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Gamescore] [varchar](255) NULL,
	[Gamingscoringcompany] [nvarchar](50) NULL,
	[Personrating] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ScoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Game].[Genres]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Game].[Genres](
	[GenreID] [int] NOT NULL,
	[Genre] [nvarchar](50) NULL,
	[GenreDesp] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Hardware].[PCRequirementsCPU]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Hardware].[PCRequirementsCPU](
	[CPUID] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[CPURequirements] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Hardware].[PCRequirementsGPU]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Hardware].[PCRequirementsGPU](
	[GPUID] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[GPURequirements] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GPUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Hardware].[PCRequirementsRam]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Hardware].[PCRequirementsRam](
	[RAMID] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[RAMRequirements] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RAMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PublicMarket].[Market]    Script Date: 22/09/2016 1:24:40 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PublicMarket].[Market](
	[MarketID] [int] IDENTITY(1,1) NOT NULL,
	[GameID] [int] NULL,
	[Totalsales] [varchar](max) NULL,
	[Numberofsales] [varchar](max) NULL,
	[Cost] [varchar](max) NULL,
	[Releasedate] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Game].[GamePlatform] ON 

GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (1, 1, 1, 1, 1, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (2, 2, 1, 0, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (3, 3, 1, 1, 1, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (4, 4, 1, 0, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (5, 5, 1, 1, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (6, 6, 1, 1, 1, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (7, 7, 1, 0, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (8, 8, 1, 1, 1, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (9, 9, 1, 0, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (10, 10, 1, 1, 1, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (11, 11, 1, 1, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (12, 12, 1, 0, 0, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (13, 13, 1, 0, 1, 0)
GO
INSERT [Game].[GamePlatform] ([CategoryID], [GameID], [PC_Platform], [PS_Platform], [XBOX_Platform], [Phone_Platform]) VALUES (14, 14, 1, 0, 0, 1)
GO
SET IDENTITY_INSERT [Game].[GamePlatform] OFF
GO
SET IDENTITY_INSERT [Game].[Games] ON 

GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (1, 1, N'Grand Theft Auto:5', N'Rockstar Games', N'91.99NZD', N'14 Apr, 2015')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (2, 3, N'Rust', N'Facepunch Studios', N'23.99NZD', N'12 Dec, 2013')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (3, 4, N'Rocket League', N'Psyonix, Inc', N'23.99NZD', N'7 Jul, 2015')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (4, 5, N'Dead by Daylight', N'Behaviour Digital Inc.', N'23.99NZD', N'14 Jun, 2016')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (5, 2, N'No Mans Sky', N'Hello Games', N'89.95NZD', N'13 Aug, 2016 ')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (6, 6, N'DOOM', N'id Software', N'99.95NZD', N'13 May,2016')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (7, 3, N'ARK: Survival Evolved', N' Studio Wildcard	', N'34.99NZD', N' 3 Jun, 2015')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (8, 7, N'Fallout 4', N'Bethesda Softworks', N'99.95NZD', N' 10 Nov, 2015 ')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (9, 11, N'Total War: WARHAMMER', N'Creative Assembly', N'99.99NZD', N'24 May 2016')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (10, 7, N'The Elder Scrolls V: Skyrim', N'Bethesda Game Studios', N'23.99NZD', N'11 Nov 2011')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (11, 6, N'Killing Floor 2', N'Tripwire Interactive', N'35.99NZD', N'22 Apr 2015')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (12, 6, N'Counter-Strike: Global Offensive', N'Valve', N'17.99NZD', N'22 Aug 2012')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (13, 1, N'Scrap Mechanic', N'Axolot Games', N'23.99NZD', N'20 Jan 2016')
GO
INSERT [Game].[Games] ([GameID], [GenreID], [Title], [Company], [PurchancePrice], [ReleaseDate]) VALUES (14, 11, N'Age of Empires? III: Complete Collection', N'Ensemble Studios', N'47.99NZD', N'15 Sep, 2009')
GO
SET IDENTITY_INSERT [Game].[Games] OFF
GO
SET IDENTITY_INSERT [Game].[GameScore] ON 

GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (1, 1, N'Grand Theft Auto:5', N'10/10', N'IGN', N'Dan Stapleton')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (2, 2, N'Rust', N'7/10', N'GameSpot', N'Community')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (3, 3, N'Rocket League', N'8.7/10', N'Metacritic', N'Community')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (4, 4, N'Dead by Daylight', N'7/10', N'Trusted Reviews', N'Stuart Andrews')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (5, 5, N'No Mans Sky', N'5.8/10', N'Steam', N'Community')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (6, 6, N'DOOM', N'10/10', N'PCGAMER', N'James Davenport')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (7, 7, N'ARK: Survival Evolved', N'9/10', N'Gamespew', N'GERAINT')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (8, 8, N'Fallout 4', N'9.5/10', N'IGN', N'Dan Stapleton')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (9, 9, N'Total War: WARHAMMER', N'9/10', N'GameSpot', N'Daniel Starkey ')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (10, 10, N'The Elder Scrolls V: Skyrim', N'9.5/10', N'Gameinformer', N'Andrew Reiner')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (11, 11, N'Killing Floor 2', N'7.9/10', N'Steam', N'Community')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (12, 12, N'Counter-Strike: Global Offensive', N'9.5/10', N'Destructoid', N'Allistair Pinsof')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (13, 13, N'Scrap Mechanic', N'N/A', N'Game in Alpha', N'Unknown')
GO
INSERT [Game].[GameScore] ([ScoreID], [GameID], [Title], [Gamescore], [Gamingscoringcompany], [Personrating]) VALUES (14, 14, N'Age of Empires? III: Complete Collection', N'10/10', N'Pc Gamespy', N'Dave "Fargo" Kosak')
GO
SET IDENTITY_INSERT [Game].[GameScore] OFF
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (1, N'Action', N'The action Gerne is a video game genre that emphasizes physical challenges, including hand?eye coordination and reaction-time.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (2, N'Adventure', N'The video game genre is therefore defined by its gameplay, unlike the literary genre, which is defined by the subject it addresses, the activity of adventure.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (3, N'Survival', N'Survival games genre that are a game that generally start the player with minimal resources in a hostile, open-world environment or not, and require them to collect resources, craft tools, weapons, and shelter, and survive as long as possible.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (4, N'Sports', N'Sports games are games in which players control either players or managers of a real or fictional sports.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (5, N'Survival horror', N'Survival Horror games drop the player in a horror setting where survival against usually supernatural enemies is made difficult by sparse distribution of weaponry and ammunition and often a more realistic approach of the protagonists physical capabilities. The goal of these games is usually to escape the hazardous situation and trying to survive.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (6, N'First-person shooter', N'First-person shooters are a type of three-dimensional shooter game, featuring a first-person point of view with which the player sees the action through the eyes of the player character. They are unlike third-person shooters, in which the player can see (usually from behind) the character they are controlling. The primary design element is combat, mainly involving firearms')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (7, N'Role-playing', N'Role-Playing (RPG): Role-Playing games (RPGs) belong to a wide a varied game genre that focuses on character development.	')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (8, N'Turn-based strategy,', N'Turn-Based games are divided in turns. Players can usually only interact with the game during their turn.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (9, N'Indie', N'Independent video games (commonly referred to as indie games) are video games created without video game publisher financial support usually by individuals or small teams')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (10, N'Simulation', N'A simulation video game describes a diverse super-category of video games, generally designed to closely simulate aspects of a real or fictional reality.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (11, N'Real-time strategy', N'In an RTS, as in other wargames, the participants position and maneuver units and structures under their control to secure areas of the map and/or destroy their opponents assets. In a typical RTS, it is possible to create additional units and structures during the course of a game.')
GO
INSERT [Game].[Genres] ([GenreID], [Genre], [GenreDesp]) VALUES (12, N'Unsorted', N'Unsorted')
GO
SET IDENTITY_INSERT [Hardware].[PCRequirementsCPU] ON 

GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (1, 1, N'Intel Core 2 Quad CPU Q6600 @ 2.40GHz (4 CPUs) / AMD Phenom 9850 Quad-Core Processor (4 CPUs) @ 2.5GHz')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (2, 2, N'Intel Core 2 Duo E4400 2.0GHz. Athlon II X2 450')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (3, 3, N'Any 2.4 GHz Dual core.')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (4, 4, N'Intel Core i3-4170 or AMD FX-8120 ')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (5, 5, N'Intel Core i3 ')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (6, 6, N'Intel Core i5 @ 3.3 GHz or better / AMD FX-8320.')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (7, 7, N'Any 2 GHz Dual-Core 64-bit CPU')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (8, 8, N'Intel Core i5-2300 2.8 GHz/AMD Phenom II X4 945 3.0 GHz or equivalent.')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (9, 9, N'Intel? Core? 2 Duo 3.0Ghz.')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (10, 10, N'Quad-core Intel or AMD CPU.')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (11, 11, N'Processor: Core 2 Duo E8200 2.66GHz or Phenom II X2 545.')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (12, 12, N'Intel CPU: Dual-Core Pentium D @ 2.4GHz,AMD CPU: Dual-Core AMD Athlon 64 X2 @ 2.0GHz')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (13, 13, N'Intel Core i5 @ 2.8 GHz (or AMD equivalent)')
GO
INSERT [Hardware].[PCRequirementsCPU] ([CPUID], [GameID], [CPURequirements]) VALUES (14, 14, N'PC with 1.4 Ghz equivalent or higher processor that supports SSE.')
GO
SET IDENTITY_INSERT [Hardware].[PCRequirementsCPU] OFF
GO
SET IDENTITY_INSERT [Hardware].[PCRequirementsGPU] ON 

GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (1, 1, N'NVIDIA 9800 GT 1GB / AMD HD 4870 1GB (DX 10, 10.1, *11)')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (2, 2, N'GeForce GTX 650 1GB. Radeon HD 7720. ')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (3, 3, N'Graphics: NVIDIA GTX 260 or ATI 4850.')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (4, 4, N'GeForce GTX 460 1GB or AMD HD 6850 1GB ')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (5, 5, N'nVidia GTX 480, AMD Radeon 7870 ')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (6, 6, N'Nvidia GTX 670 2GB/ AMD Radeon HD 7870 (2GB VRAM)')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (7, 7, N' DirectX11 Compatible GPU with 1 GB Video RAM.')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (8, 8, N'NVIDIA GTX 550 Ti 2GB/AMD Radeon HD 7870 2GB or equivalent.')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (9, 9, N'(DirectX 11) AMD Radeon HD 5770 1024MB | NVIDIA GTS 450 1024MB | Intel HD4000 @720P.')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (10, 10, N'DirectX 9 compatible NVIDIA or AMD ATI video card with 1GB of RAM (Nvidia GeForce GTX 260 or higher; ATI Radeon 4890 or higher).')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (11, 11, N'GeForce GTS 250 or Radeon HD 4830.')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (12, 12, N'NVidia GPU: NVidia GTX 200 or greater/AMD GPU: AMD HD4000 or greater')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (13, 13, N'NVIDIA GeForce GTX 560 / AMD Radeon HD 7800 series or better OpenGL 3.3.')
GO
INSERT [Hardware].[PCRequirementsGPU] ([GPUID], [GameID], [GPURequirements]) VALUES (14, 14, N'64 MB video card with HT&L.')
GO
SET IDENTITY_INSERT [Hardware].[PCRequirementsGPU] OFF
GO
SET IDENTITY_INSERT [Hardware].[PCRequirementsRam] ON 

GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (1, 1, N'4GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (2, 2, N'8 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (3, 3, N'2 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (4, 4, N'8 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (5, 5, N'8 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (6, 6, N'8 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (7, 7, N'4 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (8, 8, N'8 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (9, 9, N'3 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (10, 10, N'4 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (11, 11, N'3 GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (12, 12, N'1 GB XP / 2GB Vista')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (13, 13, N'8GB')
GO
INSERT [Hardware].[PCRequirementsRam] ([RAMID], [GameID], [RAMRequirements]) VALUES (14, 14, N'256 MB')
GO
SET IDENTITY_INSERT [Hardware].[PCRequirementsRam] OFF
GO
SET IDENTITY_INSERT [PublicMarket].[Market] ON 

GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (1, 1, N'$2 Billion + ', N'54 Million +', N'$265 Million', N'14 Apr, 2015')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (2, 2, N'$22 Million +', N'2.4 Million +', N'Unannounced', N'12 Dec, 2013')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (3, 3, N'$110 million+', N'3.5 Million +', N'$2 Millon(For Console - PC Port unannouced))', N'7 Jul, 2015')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (4, 4, N'Unannouced', N' 1 Million +', N'On Going', N'14 Jun, 2016')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (5, 5, N'Unannouced', N'800,000+(PC PORT)', N'Unannouced', N'13 Aug, 2016 ')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (6, 6, N'Unknown', N'Unknown', N'Unknown', N'13 May,2016')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (7, 7, N'Unknown', N'Unknown', N'Unknown', N' 3 Jun, 2015')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (8, 8, N'Unknown', N'Unknown', N'Unknown', N' 10 Nov, 2015 ')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (9, 9, N'Unknown', N'Unknown', N'Unknown', N'24 May 2016')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (10, 10, N'Unknown', N'Unknown', N'Unknown', N'11 Nov 2011')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (11, 11, N'Unknown', N'Unknown', N'Unknown', N'22 Apr 2015')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (12, 12, N'Unknown', N'Unknown', N'Unknown', N'22 Aug 2012')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (13, 13, N'Unknown', N'Unknown', N'Unknown', N'20 Jan 2016')
GO
INSERT [PublicMarket].[Market] ([MarketID], [GameID], [Totalsales], [Numberofsales], [Cost], [Releasedate]) VALUES (14, 14, N'Unknown', N'Unknown', N'Unknown', N'15 Sep, 2009')
GO
SET IDENTITY_INSERT [PublicMarket].[Market] OFF
GO
ALTER TABLE [Hardware].[PCRequirementsCPU]  WITH CHECK ADD  CONSTRAINT [FK_Game_Games] FOREIGN KEY([GameID])
REFERENCES [Game].[Games] ([GameID])
GO
ALTER TABLE [Hardware].[PCRequirementsCPU] CHECK CONSTRAINT [FK_Game_Games]
GO
ALTER TABLE [Hardware].[PCRequirementsGPU]  WITH CHECK ADD  CONSTRAINT [FK_Game_Games1] FOREIGN KEY([GameID])
REFERENCES [Game].[Games] ([GameID])
GO
ALTER TABLE [Hardware].[PCRequirementsGPU] CHECK CONSTRAINT [FK_Game_Games1]
GO
ALTER TABLE [Hardware].[PCRequirementsRam]  WITH CHECK ADD  CONSTRAINT [FK_Game_Games2] FOREIGN KEY([GameID])
REFERENCES [Game].[Games] ([GameID])
GO
ALTER TABLE [Hardware].[PCRequirementsRam] CHECK CONSTRAINT [FK_Game_Games2]
GO
USE [master]
GO
ALTER DATABASE [GamingProject] SET  READ_WRITE 
GO
