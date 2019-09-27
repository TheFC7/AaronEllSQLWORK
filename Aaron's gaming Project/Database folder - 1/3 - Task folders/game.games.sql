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

	Update game.Games
	set [GenreID] = '1'
	where GameID = '1'

	Update game.Games
	set [GenreID] = '3'
	where GameID = '2'

	Update game.Games
	set [GenreID] = '4'
	where GameID = '3'

	Update game.Games
	set [GenreID] = '5'
	where GameID = '4'

	Update game.Games
	set [GenreID] = '2'
	where GameID = '5'

	Update game.Games
	set [GenreID] = '6'
	where GameID = '6'

	Update game.Games
	set [GenreID] = '3'
	where GameID = '7'

	Update game.Games
	set [GenreID] = '7'
	where GameID = '8'

	
	Update game.Games
	set [GenreID] = '11'
	where GameID = '9'

	Update game.Games
	set [GenreID] = '7'
	where GameID = '10'

	Update game.Games
	set [GenreID] = '6'
	where GameID = '11'

	Update game.Games
	set [GenreID] = '6'
	where GameID = '12'

	Update game.Games
	set [GenreID] = '1'
	where GameID = '13'

	Update game.Games
	set [GenreID] = '11'
	where GameID = '14'


