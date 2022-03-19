USE Lottery;
GO

CREATE OR ALTER procedure dbo.topDigits
  @gameID INT,
  @startDate DATETIME,
  @endDate DATETIME,
  @returnRows INT = 10
AS 
EXECUTE AS CALLER
--return digits that have a rank lte the requested rows
--using rank as if only the top # of rows were returned there could be a tie in the 
--number of times drawn and it is uncertain how that tie would be broken.
--This example uses a CTE, a subquery could be used - 
--
--performance testing not completed
BEGIN 
  WITH gatherRows
  AS (
  SELECT --TOP (@returnRows)
    drawing.digit,
    COUNT(*) AS cDigit,
    ROW_NUMBER() OVER(ORDER BY COUNT(*) DESC) AS rnValue,
    RANK() OVER(ORDER BY COUNT(*) DESC) AS rValue
  FROM dbo.drawing
  INNER JOIN dbo.drawingInfo
    ON drawing.drawingID = drawingInfo.id
  WHERE drawing.isActive = 1
    AND drawingInfo.isActive = 1
    AND drawingInfo.gameID = @gameID
    AND drawingInfo.gameDate >= @startDate
    AND drawingInfo.gameDate < @endDate
    AND position < 100
  GROUP BY drawing.digit

  )
  SELECT 
    digit,
    cDigit,
    rnValue,
    rValue
  FROM gatherRows
  WHERE rValue <= @returnRows
  ORDER BY cDigit DESC,digit ASC;
END
