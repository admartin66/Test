with a as 
(
	select [delivery ID], ROW_NUMBER() over (partition by [delivery ID] order by [delivery id]) as duplicateRecCount from Ultraship_Utilization where [Shipment Number] = '100349'
)
delete from a where duplicateRecCount > 1