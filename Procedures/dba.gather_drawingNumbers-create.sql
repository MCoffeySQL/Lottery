USE Lottery;
GO

DROP PROCEDURE IF EXISTS dba.gather_drawingNumbers;
GO

CREATE PROCEDURE dba.gather_drawingNumbers
AS
BEGIN
  INSERT INTO dbo.drawing_numbers(
    drawingID,
    isActive,
    position,
    number,
    number_char,
    shortDescription
  )
  SELECT
    drawings.ID,
    1 AS isActive,
    1 AS position,
    stage_numbers.position01,
    RIGHT('0' + CAST(stage_numbers.position01 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position01 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    2 AS position,
    stage_numbers.position02,
    RIGHT('0' + CAST(stage_numbers.position02 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position02 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    3 AS position,
    stage_numbers.position03,
    RIGHT('0' + CAST(stage_numbers.position03 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position03 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    4 AS position,
    stage_numbers.position04,
    RIGHT('0' + CAST(stage_numbers.position04 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position04 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    5 AS position,
    stage_numbers.position05,
    RIGHT('0' + CAST(stage_numbers.position05 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position05 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    6 AS position,
    stage_numbers.position06,
    RIGHT('0' + CAST(stage_numbers.position06 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position06 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    7 AS position,
    stage_numbers.position07,
    RIGHT('0' + CAST(stage_numbers.position07 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position07 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    8 AS position,
    stage_numbers.position08,
    RIGHT('0' + CAST(stage_numbers.position08 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position08 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    9 AS position,
    stage_numbers.position09,
    RIGHT('0' + CAST(stage_numbers.position09 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position09 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    10 AS position,
    stage_numbers.position10,
    RIGHT('0' + CAST(stage_numbers.position10 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position10 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    11 AS position,
    stage_numbers.position11,
    RIGHT('0' + CAST(stage_numbers.position11 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position11 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    12 AS position,
    stage_numbers.position12,
    RIGHT('0' + CAST(stage_numbers.position12 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position12 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    13 AS position,
    stage_numbers.position13,
    RIGHT('0' + CAST(stage_numbers.position13 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position13 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    14 AS position,
    stage_numbers.position14,
    RIGHT('0' + CAST(stage_numbers.position14 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position14 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    15 AS position,
    stage_numbers.position15,
    RIGHT('0' + CAST(stage_numbers.position15 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position15 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    16 AS position,
    stage_numbers.position16,
    RIGHT('0' + CAST(stage_numbers.position16 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position16 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    17 AS position,
    stage_numbers.position17,
    RIGHT('0' + CAST(stage_numbers.position17 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position17 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    18 AS position,
    stage_numbers.position18,
    RIGHT('0' + CAST(stage_numbers.position18 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position18 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    19 AS position,
    stage_numbers.position19,
    RIGHT('0' + CAST(stage_numbers.position19 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position19 IS NOT NULL
  UNION
  SELECT
    drawings.ID,
    1 AS isActive,
    20 AS position,
    stage_numbers.position20,
    RIGHT('0' + CAST(stage_numbers.position20 AS VARCHAR),2),
    NULL AS shortDescription
  FROM dbo.drawings
  INNER JOIN dba.stage_numbers
    ON drawings.gameID = stage_numbers.gameID
    AND MONTH(drawings.gameDate) = stage_numbers.[month]
    AND DAY(drawings.gameDate) = stage_numbers.[day]
    AND YEAR(drawings.gameDate) = stage_numbers.[year]
  WHERE stage_numbers.position20 IS NOT NULL
END
