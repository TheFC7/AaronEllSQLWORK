Use GamingProject
go
Create View game.FinalGameplatform as 
Select	[CategoryID] , [GameID], 

	case [PC_Platform] when '1' then 'Yes'
	else 'No'
	end as [PC_Platform], 

	case [PS_Platform]
	when '1' then 'Yes'
	else 'No'
	end as [PS_Platform],

	case [XBOX_Platform]
	when '1' then 'Yes'
	else 'No'
	end as [XBOX_Platform],

	case [Phone_Platform]
	when '1' then 'Yes'
	else 'No'
	end as [Phone_Platform]

	from game.GamePlatform
