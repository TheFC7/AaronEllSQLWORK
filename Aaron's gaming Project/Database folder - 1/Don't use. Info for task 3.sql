-- Creating table data --
Use GamingProject;

INSERT INTO Game.Games ( Title, Company, PurchancePrice, ReleaseDate )
Values	('Grand Theft Auto:5', 'Rockstar Games', '91.99NZD', '14 Apr, 2015'),
		('Rust','Facepunch Studios','23.99NZD','12 Dec, 2013' ),
		('Rocket League','Psyonix, Inc','23.99NZD','7 Jul, 2015'),
		('Dead by Daylight','Behaviour Digital Inc.','23.99NZD','14 Jun, 2016'),
		('No Mans Sky','Hello Games','89.95NZD', '13 Aug, 2016 '),
		('DOOM','id Software', '99.95NZD', '13 May,2016' ),
		('ARK: Survival Evolved', ' Studio Wildcard	', '34.99NZD', ' 3 Jun, 2015' ),
		('Fallout 4','Bethesda Softworks', '99.95NZD',' 10 Nov, 2015 '),
		('Total War: WARHAMMER','Creative Assembly', 	'99.99NZD',	'24 May 2016'),
		('The Elder Scrolls V: Skyrim','Bethesda Game Studios','23.99NZD','11 Nov 2011'),
		('Killing Floor 2','Tripwire Interactive', '35.99NZD', '22 Apr 2015'),
		('Counter-Strike: Global Offensive', 'Valve','17.99NZD','22 Aug 2012'),
		('Scrap Mechanic','Axolot Games','23.99NZD','20 Jan 2016'),
		('Age of Empires® III: Complete Collection','Ensemble Studios','47.99NZD','15 Sep, 2009')

		;
select * from game.Games;

Declare @categoryID int 
set @categoryID = @categoryID - 1;

Insert into Game.GamePlatform (GameID, PC_Platform, PS_Platform, XBOX_Platform, Phone_Platform )
Values	('1','1','1','1','2'),
		('2','1','2','2','2'),
		('3','1','1','1','2'),
		('4','1','2','2','2'),
		('5','1','1','2','2'),
		('6','1','1','1','2'),
		('7','1','2','2','2'),
		('8','1','1','1','2'),
		('9','1','2','2','2'),
		('10','1','1','1','2'),
		('11','1','1','2','2'),
		('12','1','2','2','2'),
		('13','1','2','1','2'),
		('14','1','2','2','1');


select * from game.GamePlatform
--other than the Game ID
--1 = Yes 
--2 = No
--3 = Unknown

Insert into Game.Genres (GenreID ,Genre, GenreDesp)	
Values	('1', 'Action','The action Gerne is a video game genre that emphasizes physical challenges, including hand–eye coordination and reaction-time.'),
		('2','Adventure','The video game genre is therefore defined by its gameplay, unlike the literary genre, which is defined by the subject it addresses, the activity of adventure.'),
		('3','Survival','Survival games genre that are a game that generally start the player with minimal resources in a hostile, open-world environment or not, and require them to collect resources, craft tools, weapons, and shelter, and survive as long as possible.'),
		('4','Sports','Sports games are games in which players control either players or managers of a real or fictional sports.'),
		('5','Survival horror','Survival Horror games drop the player in a horror setting where survival against usually supernatural enemies is made difficult by sparse distribution of weaponry and ammunition and often a more realistic approach of the protagonists physical capabilities. The goal of these games is usually to escape the hazardous situation and trying to survive.'),
		('6','First-person shooter','First-person shooters are a type of three-dimensional shooter game, featuring a first-person point of view with which the player sees the action through the eyes of the player character. They are unlike third-person shooters, in which the player can see (usually from behind) the character they are controlling. The primary design element is combat, mainly involving firearms'),
		('7','Role-playing','Role-Playing (RPG): Role-Playing games (RPGs) belong to a wide a varied game genre that focuses on character development.	'),
		('8','Turn-based strategy,','Turn-Based games are divided in turns. Players can usually only interact with the game during their turn.'),
		('9','Indie','Independent video games (commonly referred to as indie games) are video games created without video game publisher financial support usually by individuals or small teams'),
		('10','Simulation','A simulation video game describes a diverse super-category of video games, generally designed to closely simulate aspects of a real or fictional reality.'),
		('11','Real-time strategy','In an RTS, as in other wargames, the participants position and maneuver units and structures under their control to secure areas of the map and/or destroy their opponents assets. In a typical RTS, it is possible to create additional units and structures during the course of a game.'),
		('12','Unsorted','Unsorted') 
;
select * from game.Genres;

insert into game.GameScore (GameID, Title)
select gameid, Title from game.Games;


	Update game.GameScore
	set Personrating = 'Dan Stapleton',Gamescore = '10/10' , Gamingscoringcompany = 'IGN' 
	where ScoreID = 1

	Update game.GameScore
	set Personrating = 'Community', Gamescore = '7/10' , Gamingscoringcompany = 'GameSpot' 
	where ScoreID = 2

	Update game.GameScore
	set Personrating = 'Community',Gamescore = '8.7/10' , Gamingscoringcompany = 'Metacritic' 
	where ScoreID = 3

	Update game.GameScore
	set Personrating = 'Stuart Andrews',Gamescore = '7/10' , Gamingscoringcompany = 'Trusted Reviews' 
	where ScoreID = 4

	Update game.GameScore
	set Personrating = 'Community',Gamescore = '5.8/10' , Gamingscoringcompany = 'Steam' 
	where ScoreID = 5

	Update game.GameScore
	set Personrating = 'James Davenport',Gamescore = '10/10' , Gamingscoringcompany = 'PCGAMER' 
	where ScoreID = 6

	Update game.GameScore
	set Personrating = 'GERAINT',Gamescore = '9/10' , Gamingscoringcompany = 'Gamespew' 
	where ScoreID = 7

	Update game.GameScore
	set Personrating = 'Dan Stapleton',Gamescore = '9.5/10' , Gamingscoringcompany = 'IGN' 
	where ScoreID = 8

	Update game.GameScore
	set Personrating = 'Daniel Starkey ',Gamescore = '9/10' , Gamingscoringcompany = 'GameSpot' 
	where ScoreID = 9

	Update game.GameScore
	set Personrating = 'Andrew Reiner',Gamescore = '9.5/10' , Gamingscoringcompany = 'Gameinformer' 
	where ScoreID = 10

	Update game.GameScore
	set Personrating = 'Community',Gamescore = '7.9/10' , Gamingscoringcompany = 'Steam' 
	where ScoreID = 11

	Update game.GameScore
	set Personrating = 'Allistair Pinsof',Gamescore = '9.5/10' , Gamingscoringcompany = 'Destructoid' 
	where ScoreID = 12

	Update game.GameScore
	set Personrating = 'Unknown',Gamescore = 'N/A' , Gamingscoringcompany = 'Game in Alpha' 
	where ScoreID = 13

	Update game.GameScore
	set Personrating = 'Dave "Fargo" Kosak',Gamescore = '10/10' , Gamingscoringcompany = 'Pc Gamespy' 
	where ScoreID = 14

;
select * from game.GameScore


Insert into PublicMarket.Market	(GameID, Releasedate)
select gameid, ReleaseDate from game.Games;

select * from publicmarket.market
Update PublicMarket.Market
	set Totalsales = '$2 Billion + ',
		Numberofsales = '54 Million +',
		cost = '$265 Million'
	where GameID = 1

Update PublicMarket.Market
	set Totalsales ='$22 Million +' ,
		Numberofsales ='2.4 Million +' ,
		cost = 'Unannounced' 
	where GameID = 2

Update PublicMarket.Market
	set Totalsales = '$110 million+' ,
		Numberofsales = '3.5 Million +' ,
		cost = '$2 Millon(For Console - PC Port unannouced))'
	where GameID = 3

Update PublicMarket.Market
	set Totalsales = 'Unannouced',
		Numberofsales = ' 1 Million +',
		cost = 'On Going'
	where GameID = 4

Update PublicMarket.Market
	set Totalsales = 'Unannouced',
		Numberofsales ='800,000+(PC PORT)' ,
		cost = 'Unannouced'
	where GameID = 5

Update PublicMarket.Market
	set Totalsales = 'Unknown' ,
		Numberofsales = 'Unknown' ,
		cost = 'Unknown'
	where GameID = 6

Update PublicMarket.Market
	set Totalsales = 'Unknown',
		Numberofsales ='Unknown' ,
		cost = 'Unknown'
	where GameID = 7

Update PublicMarket.Market
	set Totalsales ='Unknown' ,
		Numberofsales ='Unknown' ,
		cost = 'Unknown'
	where GameID = 8

Update PublicMarket.Market
	set Totalsales ='Unknown' ,
		Numberofsales ='Unknown' ,
		cost = 'Unknown'
	where GameID = 9

Update PublicMarket.Market
	set Totalsales ='Unknown' ,
		Numberofsales ='Unknown' ,
		cost = 'Unknown'
	where GameID = 10

Update PublicMarket.Market
	set Totalsales = 'Unknown',
		Numberofsales = 'Unknown',
		cost = 'Unknown'
	where GameID = 11

Update PublicMarket.Market
	set Totalsales = 'Unknown',
		Numberofsales = 'Unknown',
		cost = 'Unknown'
	where GameID = 12

Update PublicMarket.Market
	set Totalsales = 'Unknown',
		Numberofsales = 'Unknown',
		cost = 'Unknown'
	where GameID = 13

Update PublicMarket.Market
	set Totalsales = 'Unknown',
		Numberofsales = 'Unknown',
		cost = 'Unknown'
	where GameID = 14



select * from PublicMarket.Market

select * from [Game].[GamePlatform]
select * from [Game].[Games]
select * from [Game].[GameScore]
select * from [Game].[Genres] 
select * from [Hardware].[PCRequirementsCPU]
select * from [Hardware].[PCRequirementsGPU]
select * from [Hardware].[PCRequirementsRam]
select * from [PublicMarket].[Market]

select * from game.games
insert into hardware.PCRequirementsCPU (GameID ,CPURequirements)
values	('1','Intel Core 2 Quad CPU Q6600 @ 2.40GHz (4 CPUs) / AMD Phenom 9850 Quad-Core Processor (4 CPUs) @ 2.5GHz'),
		('2','Intel Core 2 Duo E4400 2.0GHz. Athlon II X2 450'),
		('3','Any 2.4 GHz Dual core.'),
		('4','Intel Core i3-4170 or AMD FX-8120 '),
		('5','Intel Core i3 '),
		('6','Intel Core i5 @ 3.3 GHz or better / AMD FX-8320.'),
		('7','Any 2 GHz Dual-Core 64-bit CPU'),
		('8','Intel Core i5-2300 2.8 GHz/AMD Phenom II X4 945 3.0 GHz or equivalent.'),
		('9','Intel® Core™ 2 Duo 3.0Ghz.'),
		('10','Quad-core Intel or AMD CPU.'),
		('11','Processor: Core 2 Duo E8200 2.66GHz or Phenom II X2 545.'),
		('12','Intel CPU: Dual-Core Pentium D @ 2.4GHz,AMD CPU: Dual-Core AMD Athlon 64 X2 @ 2.0GHz'),
		('13','Intel Core i5 @ 2.8 GHz (or AMD equivalent)'),
		('14','PC with 1.4 Ghz equivalent or higher processor that supports SSE.')



insert into Hardware.PCRequirementsGPU(GameID,GPURequirements) 
values	('1','NVIDIA 9800 GT 1GB / AMD HD 4870 1GB (DX 10, 10.1, *11)'),
		('2','GeForce GTX 650 1GB. Radeon HD 7720. '),
		('3','Graphics: NVIDIA GTX 260 or ATI 4850.'),
		('4','GeForce GTX 460 1GB or AMD HD 6850 1GB '),
		('5','nVidia GTX 480, AMD Radeon 7870 '),
		('6','Nvidia GTX 670 2GB/ AMD Radeon HD 7870 (2GB VRAM)'),
		('7',' DirectX11 Compatible GPU with 1 GB Video RAM.'),
		('8','NVIDIA GTX 550 Ti 2GB/AMD Radeon HD 7870 2GB or equivalent.'),
		('9','(DirectX 11) AMD Radeon HD 5770 1024MB | NVIDIA GTS 450 1024MB | Intel HD4000 @720P.'),
		('10','DirectX 9 compatible NVIDIA or AMD ATI video card with 1GB of RAM (Nvidia GeForce GTX 260 or higher; ATI Radeon 4890 or higher).'),
		('11','GeForce GTS 250 or Radeon HD 4830.'),
		('12','NVidia GPU: NVidia GTX 200 or greater/AMD GPU: AMD HD4000 or greater'),
		('13','NVIDIA GeForce GTX 560 / AMD Radeon HD 7800 series or better OpenGL 3.3.'),
		('14','64 MB video card with HT&L.')


insert into Hardware.PCRequirementsRam (GameID, RAMRequirements)
values  ('1','4GB'),
		('2','8 GB'),
		('3','2 GB'),
		('4','8 GB'),
		('5','8 GB'),
		('6','8 GB'),
		('7','4 GB'),
		('8','8 GB'),
		('9','3 GB'),
		('10','4 GB'),
		('11','3 GB'),
		('12','1 GB XP / 2GB Vista'),
		('13','8GB'),
		('14','256 MB')
