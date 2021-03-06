IF OBJECTPROPERTY(OBJECT_ID('quarry.WidgetQuarryMaterialColourMaterialCounts'), N'IsProcedure') = 1
	DROP PROCEDURE [quarry].[WidgetQuarryMaterialColourMaterialCounts] 
GO

CREATE PROCEDURE [quarry].[WidgetQuarryMaterialColourMaterialCounts] 
(
	@CompanyId int
)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @QuarryTop5 AS TABLE(QuarryId int)

	INSERT INTO @QuarryTop5(QuarryId)
	SELECT TOP 5 QuarryId 
	FROM quarry.Material
	WHERE CompanyId = @CompanyId AND DeletedInd = 0 AND ProcessTypeId = 1
	GROUP BY QuarryId
	ORDER BY COUNT(MaterialId) DESC;

	SELECT Id = CONVERT(varchar(40), NEWID()), [Key] = mc.ColourName, X = qry.QuarryName, Y = COUNT(mat.MaterialId), KeyOrder = 0, xOrder = 0
	FROM quarry.Material mat
	JOIN quarry.Quarry qry on qry.QuarryId = mat.QuarryId
	JOIN quarry.MaterialColour mc on mc.MaterialColourId = mat.MaterialColourId
	WHERE EXISTS(SELECT 1 FROM @QuarryTop5 q5 WHERE q5.QuarryId = mat.QuarryId)
	AND mat.CompanyId = @CompanyId AND mat.DeletedInd = 0 AND mat.ProcessTypeId = 1
	GROUP BY mat.QuarryId, qry.QuarryName, mat.MaterialColourId, mc.ColourName
	ORDER BY KeyOrder, [Key], XOrder, X

	SET NOCOUNT OFF
END
go
--exec [quarry].[WidgetQuarryMaterialColourMaterialCounts]  4;