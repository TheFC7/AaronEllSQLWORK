use GamingProject

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
