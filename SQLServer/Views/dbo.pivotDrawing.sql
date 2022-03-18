USE Lottery;
GO

DROP VIEW IF EXISTS dbo.pivotDrawing;
GO

CREATE VIEW dbo.pivotDrawing
AS
SELECT
  gatherCount.gameID,
  pivotTable.drawingID,
  gatherCount.gameName,
  gatherCount.gameDate,
  gatherCount.positions,
  CASE
    WHEN gatherCount.positions = gatherCount.cPositions
    THEN 1
    ELSE 0
  END AS isValid,
  [1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[100],[101]
FROM(
  SELECT 
    drawingID,
    position,
    digit
  FROM dbo.drawing
) AS t
PIVOT(
  MAX(digit)
FOR position IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[100],[101])
) AS pivotTable
INNER JOIN (
  SELECT 
    drawingInfo.ID AS drawingID,
    games.id AS gameID,
    games.gameName,
    drawingInfo.gameDate,
    games.positions,
    COUNT(*) AS cPositions
  FROM dbo.games
  INNER JOIN dbo.drawingInfo
    ON games.id = drawingInfo.gameID
  INNER JOIN dbo.drawing
    ON drawingInfo.id = drawing.drawingID
  GROUP BY drawingInfo.ID,games.ID,games.gameName,drawingInfo.gameDate,games.positions
) AS gatherCount
  ON pivotTable.drawingID = gatherCount.drawingID



