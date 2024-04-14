USE lottery
GO

DROP VIEW IF EXISTS dbo.pivot_drawingNumbers;
GO

CREATE VIEW dbo.pivot_drawingNumbers
AS
SELECT
  gatherPivot.drawingID,
  drawings.gameID,
  drawings.drawOrder,
  games.[name],
  drawings.gameDate,
  games.[match],
  gatherPivot.[1],
  gatherPivot.[2],
  gatherPivot.[3],
  gatherPivot.[4],
  gatherPivot.[5],
  gatherPivot.[6],
  gatherPivot.[7],
  gatherPivot.[8],
  gatherPivot.[9],
  gatherPivot.[10],
  gatherPivot.[11],
  gatherPivot.[12],
  gatherPivot.[13],
  gatherPivot.[14],
  gatherPivot.[15],
  gatherPivot.[16],
  gatherPivot.[17],
  gatherPivot.[18],
  gatherPivot.[19],
  gatherPivot.[20]
FROM (
  SELECT drawingID,[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20]
  FROM (
    SELECT 
      drawingID,
      position,
      number_char
    FROM dbo.drawing_numbers
    ) AS sourceTable
  PIVOT (
    MAX(number_char)
    FOR position IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20])
    ) AS pivotTable
  ) AS gatherPivot
INNER JOIN dbo.drawings
  ON drawings.id = gatherPivot.drawingID
INNER JOIN dbo.games
  ON games.id = drawings.gameID