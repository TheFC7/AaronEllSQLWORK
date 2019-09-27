Use GamingProject 
go
Create function Fixpublicmarket (@cost varchar(MAX)) 
Returns varchar(MAX)
as
begin 
declare
		@totalsales varchar(MAX),
		@numberofsales varchar(MAX)	;
			
select	@cost = a.Cost,
		@totalsales = a.Totalsales, 
		@numberofsales = a.Numberofsales

from [PublicMarket].[Market] as a
where totalsales = @totalsales and Cost = @cost and Numberofsales = @numberofsales
if (@cost = 'Unknown') set @cost = 'N/A'
if(@totalsales = 'Unknown') set @totalsales = 'N/A' 
if(@numberofsales = 'Unknown') set @numberofsales = 'N/A'
return @cost 
return @totalsales 
Return @numberofsales 
end

