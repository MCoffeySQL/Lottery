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
  [1] AS position1,
  [2] AS position2,
  [3] AS position3,
  [4] AS position4,
  [5] AS position5,
  [6] AS position6,
  [7] AS position7,
  [8] AS position8,
  [9] AS position9,
  [10] AS position10,
  [11] AS position11,
  [12] AS position12,
  [100] AS position100,
  [101] AS position101
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



