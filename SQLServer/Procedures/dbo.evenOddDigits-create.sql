 USE Lottery;
 GO

 CREATE OR ALTER PROCEDURE evenOddDigits
   @gameID INT,
   @startDate DATETIME,
   @endDate DATETIME
 AS 
 EXECUTE AS CALLER
BEGIN
   --display the count of count of even vs odd digits in the draw

   IF @startDate IS NULL
     SELECT @startDate = MIN(gameDate) FROM dbo.drawingInfo WHERE gameID = @gameID

  IF @endDate IS NULL
    SET @endDate = GETDATE()

   SELECT 
     even,
     odd,
     COUNT(*) AS cDual
   FROM ( 
    SELECT 
      drawingID,
      CASE
        WHEN digit%2 = 1 THEN 'Odd' ELSE 'Even' END AS dual
    FROM dbo.drawing
    INNER JOIN dbo.drawingInfo
      ON drawing.drawingID = drawingInfo.id
    WHERE drawingInfo.isActive = 1
      AND drawing.isActive = 1
      AND drawing.position < 100
      AND drawingInfo.gameID = 1
  ) AS t
  PIVOT(
    COUNT(dual)
    FOR dual IN ([Even],[Odd])) AS pivotTable
  GROUP BY even,odd;
END