use GamingProject


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

