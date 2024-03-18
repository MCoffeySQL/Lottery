USE Lottery;
GO

DROP VIEW IF EXISTS dbo.pivot_drawingNumbers;
GO

CREATE VIEW dbo.pivot_drawingNumbers
AS
SELECT
  drawingID,
  [1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20]
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
  )AS pivotTable
