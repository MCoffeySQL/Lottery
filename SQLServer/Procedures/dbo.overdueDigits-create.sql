USE Lottery;
GO

CREATE OR ALTER PROCEDURE dbo.overdueDigits
  @gameID INT = 1,
  @startDate DATETIME,
  @endDate DATETIME,
  @returnRows INT = 10
AS
--return the specified rows by rank
--rank is used to gather the rows as there could be a tie between digits
--default rank of 10
BEGIN
  --determine the 1st drawing for the game.
  SELECT @startDate = MIN(gameDate) FROM dbo.drawingInfo WHERE gameID = @gameID

  SELECT
    gameID,
    digit,
    maxDate AS gameDate,
    rankDigit AS rankItem
  FROM (
    SELECT 
      drawingInfo.gameID,
      drawing.digit,
      MAX(drawingInfo.gameDate) AS maxDate,
      RANK() OVER(ORDER BY MAX(drawingInfo.gameDate) ASC) AS rankDigit
    FROM dbo.drawing
    INNER JOIN dbo.drawingInfo
      ON drawing.drawingID = drawingInfo.id
    WHERE drawingInfo.isActive = 1
      AND drawing.isActive = 1
      AND drawing.position < 100
      AND gameID = @gameID
      AND gameDate >= @startDate
      AND gameDate < @endDate
    GROUP BY drawingInfo.gameID,drawing.digit 
  ) AS gatherDigits
  WHERE rankDigit <= @returnRows
END
