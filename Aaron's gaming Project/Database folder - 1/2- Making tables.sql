Use GamingProject;
go

Create table Game.Genres
(	GenreID int Primary key not null,
	Genre Nvarchar(50),
	GenreDesp NVarchar(MAX) ) ;

Create Table Game.Games (
GameID int identity (1,1) Primary Key Not null,
GenreID int Default 12,
Title Nvarchar(50),
Company Nvarchar(50),
PurchancePrice varchar(255),
ReleaseDate Varchar(500) ) ;

Create Table Game.GamePlatform
(	CategoryID int identity Primary Key Not NULL,
	GameID int,
	PC_Platform Bit,
	PS_Platform Bit,
	XBOX_Platform Bit,
	Phone_Platform Bit);

Create table Game.GameScore
(	ScoreID int identity (1,1) Primary Key not Null,
	GameID int,
	Title NVarchar(255),
	Gamescore varchar(255),
	Gamingscoringcompany NVarchar(50),
	Personrating Nvarchar(50) );

Create table PublicMarket.Market
(	MarketID int identity (1,1) Primary key not null,
	GameID int,
	Totalsales varchar(max),
	Numberofsales varchar(max),
	Cost varchar(max),
	Releasedate varchar(500) );

Create table Hardware.PCRequirementsCPU
(	CPUID int Identity(1,1)Primary Key not null,
	GameID int,
	CPURequirements varchar(255)    
	CONSTRAINT FK_Game_Games FOREIGN KEY (GameID)     
    REFERENCES Game.Games (GameID) );

Create table Hardware.PCRequirementsGPU
(	GPUID int Identity(1,1)Primary Key not null,
	GameID int,
	GPURequirements varchar(255)   
	CONSTRAINT FK_Game_Games1 FOREIGN KEY (GameID)     
    REFERENCES Game.Games (GameID) );

	Create table Hardware.PCRequirementsRam
(	RAMID int Identity(1,1)Primary Key not null,
	GameID int,
	RAMRequirements varchar(255)    
	CONSTRAINT FK_Game_Games2 FOREIGN KEY (GameID)     
    REFERENCES Game.Games (GameID) ) ;


