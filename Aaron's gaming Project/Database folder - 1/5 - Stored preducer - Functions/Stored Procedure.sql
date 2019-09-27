Use GamingProject
go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Game.ID @gameID int
as
select a.Gameid, a.Company, a.Title,s.Genre from game.Games as a
inner join game.Genres as s on a.GenreID = s.GenreID
where @GameID = a.GameID

exec game.id @gameid = 1
