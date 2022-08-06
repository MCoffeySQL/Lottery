USE Lottery;
GO

TRUNCATE TABLE dbo.drawing;
GO

INSERT INTO dbo.drawing(
  isActive,
  drawingID,
  position,
  digit
)
SELECT
  isActive,
  id,
  1,
  digit1
FROM lottery2.dbo.drawings
WHERE digit1 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  2,
  digit2
FROM lottery2.dbo.drawings
WHERE digit2 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  3,
  digit3
FROM lottery2.dbo.drawings
WHERE digit3 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  4,
  digit4
FROM lottery2.dbo.drawings
WHERE digit4 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  5,
  digit5
FROM lottery2.dbo.drawings
WHERE digit5 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  6,
  digit6
FROM lottery2.dbo.drawings
WHERE digit6 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  7,
  digit7
FROM lottery2.dbo.drawings
WHERE digit7 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  8,
  digit8
FROM lottery2.dbo.drawings
WHERE digit8 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  9,
  digit9
FROM lottery2.dbo.drawings
WHERE digit9 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  10,
  digit10
FROM lottery2.dbo.drawings
WHERE digit10 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  11,
  digit11
FROM lottery2.dbo.drawings
WHERE digit11 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  12,
  digit12
FROM lottery2.dbo.drawings
WHERE digit12 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  100,
  digit100
FROM lottery2.dbo.drawings
WHERE digit100 IS NOT NULL
UNION
SELECT
  isActive,
  id,
  101,
  digit101
FROM lottery2.dbo.drawings
WHERE digit101 IS NOT NULL

