USE Lottery;
GO

DROP PROCEDURE IF EXISTS dba.gather_drawings;
GO

CREATE PROCEDURE dba.gather_drawings
AS
BEGIN
  INSERT INTO dbo.drawings(
    gameID,
    [state],
    isActive,
    gameDate,
    drawOrder
  )
  SELECT 
    gameID,
    [state],
    1 AS isActive,
    TRY_CAST(CAST([month] AS VARCHAR) + '/' +
      CAST([day] AS VARCHAR) + '/' +
      CAST([year] AS VARCHAR) AS DATE) AS gameDate,
    drawOrder
  FROM dba.stage_numbers
  WHERE NOT EXISTS(
    SELECT 1
    FROM dbo.drawings
    WHERE drawings.gameID = stage_numbers.gameID
      AND stage_numbers.[month] = MONTH(drawings.gameDate)
      AND stage_numbers.[day] = DAY(drawings.gameDate)
      AND stage_numbers.[year] = YEAR(drawings.gameDate)
    )
    AND stage_numbers.isActive = 1;
END

