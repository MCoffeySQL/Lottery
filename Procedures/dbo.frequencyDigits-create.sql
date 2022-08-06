CREATE OR ALTER PROCEDURE dbo.frequencyDigits
  @gameID INT,
  @startDate DATETIME,
  @endDate DATETIME
AS
EXECUTE AS CALLER
BEGIN
  IF @startDate IS NULL
    --assign the 1st occurance of the game
    SELECT @startDate = MIN(gameDate) FROM dbo.drawingInfo WHERE gameID = @gameID;

  IF @endDate IS NULL
    --assign the current date
    SET @endDate = GETDATE();

  SELECT 
    gameNumbers.digit,
    gatherDigits.cDigit
  FROM dbo.gameNumbers
  LEFT JOIN (
    SELECT 
      drawing.digit,
      COUNT(*) AS cDigit
    FROM dbo.drawing
    INNER JOIN dbo.drawingInfo
      ON drawing.drawingID = drawingInfo.id
    WHERE drawing.isActive = 1
      AND drawingInfo.isActive = 1
      AND drawingInfo.gameID = @gameID
      AND drawingInfo.gameDate = @startDate
      AND drawingInfo.gameDate = @endDate  
    GROUP BY drawing.digit
  ) AS gatherDigits
    ON gameNumbers.digit = gatherDigits.digit
  WHERE gameNumbers.isActive = 1
    AND gameNumbers.gameID = 1
  ORDER BY gameNumbers.digit ASC
END;