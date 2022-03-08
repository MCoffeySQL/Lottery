--TRUNCATE TABLE dbo.drawingsXT

INSERT INTO dbo.drawingsXT(
  isActive,
  gameid,
  drawingID,
  gameDate,
  position,
  digit
)
SELECT                    --position1
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  1 AS position,
  digit1
FROM dbo.drawings
WHERE digit1 IS NOT NULL
UNION ALL
SELECT                    --position2
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  2 AS position,
  digit2
FROM dbo.drawings
WHERE digit2 IS NOT NULL
UNION ALL
SELECT                    --position3
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  3 AS position,
  digit3
FROM dbo.drawings
WHERE digit3 IS NOT NULL
UNION ALL
SELECT                    --position4
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  4 AS position,
  digit4
FROM dbo.drawings
WHERE digit4 IS NOT NULL
UNION ALL
SELECT                    --position5
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  5 AS position,
  digit5
FROM dbo.drawings
WHERE digit5 IS NOT NULL
UNION ALL
SELECT                    --position6
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  6 AS position,
  digit6
FROM dbo.drawings
WHERE digit6 IS NOT NULL
UNION ALL
SELECT                    --position7
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  7 AS position,
  digit7
FROM dbo.drawings
WHERE digit7 IS NOT NULL
UNION ALL
SELECT                    --position8
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  8 AS position,
  digit8
FROM dbo.drawings
WHERE digit8 IS NOT NULL
UNION ALL
SELECT                    --position9
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  9 AS position,
  digit9
FROM dbo.drawings
WHERE digit9 IS NOT NULL
UNION ALL
SELECT                    --position10
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  10 AS position,
  digit10
FROM dbo.drawings
WHERE digit10 IS NOT NULL
UNION ALL
SELECT                    --position11
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  11 AS position,
  digit11
FROM dbo.drawings
WHERE digit11 IS NOT NULL
UNION ALL
SELECT                    --position12
  isActive,
  gameID,
  id AS drawingID,
  gameDate,
  12 AS position,
  digit12
FROM dbo.drawings
WHERE digit12 IS NOT NULL
