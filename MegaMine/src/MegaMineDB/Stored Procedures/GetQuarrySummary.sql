﻿if objectproperty(object_id('dbo.GetQuarrySummary'), N'IsProcedure') = 1
	drop procedure [dbo].GetQuarrySummary
go

create procedure [dbo].[GetQuarrySummary]
as
begin
	set nocount on
	declare @columns nvarchar(500),
		@totals nvarchar(1000)
	select @columns = isnull(@columns + ', ', '') + quotename(ProductTypeName),
		@totals = isnull(@totals + ' + ', '') + 'coalesce(' + quotename(ProductTypeName) + ', 0)'
	from ProductType order by DisplayOrder;

	create table #Quarry
	(
	   QuarryId int,
	   QuarryName nvarchar(200),
	   Colours nvarchar(2000)
	);

	with QuarryColours as 
	(
		select q.QuarryId, QuarryName, ColourName
		from QuarryMaterialColour qmc
		inner join Quarry q on qmc.QuarryId = q.QuarryId
		inner join MaterialColour mc on qmc.MaterialColourId = mc.MaterialColourId
	)
	insert into #Quarry
	select QuarryId, QuarryName,  
		Colours = STUFF((select ',' + qc1.ColourName from QuarryColours qc1 where qc1.QuarryName = qc2.QuarryName for xml path('')),1,1,'')
	from QuarryColours as qc2
	group by qc2.QuarryName, qc2.QuarryId;

	declare @query nvarchar(4000) = '
	with SummaryData as
	(
		select QuarryName, q.Colours, pt.ProductTypeName, MaterialCount = count(MaterialId)
		from #Quarry q
		left join Material m on q.QuarryId = m.QuarryId
		left join ProductType pt on m.ProductTypeId = pt.ProductTypeId 
		group by pt.ProductTypeName, QuarryName, q.Colours
	)
	select QuarryName, Colours, ' + @columns + ', Total = ' + @totals + ' from SummaryData
	pivot(sum(MaterialCount) for ProductTypeName IN (' + @columns + ')) as SummaryPivot
	order by QuarryName';

	execute sp_executesql @query

	drop table #Quarry
	set nocount off
end
go

