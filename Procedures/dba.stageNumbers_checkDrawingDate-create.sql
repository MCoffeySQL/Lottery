USE Lottery;
GO

DROP PROCEDURE IF EXISTS dba.stageNumbers_checkDrawingDate;
GO

CREATE PROCEDURE dba.stageNumbers_checkDrawingDate
AS
BEGIN
  UPDATE dba.stage_numbers
  SET isActive = 0,
    shortDescription = 'Invalid Date'
  WHERE TRY_CAST(CAST([month] AS VARCHAR) + '/' +
      CAST([day] AS VARCHAR) + '/' +
      CAST([year] AS VARCHAR) AS DATE) IS NULL
END