USE Lottery;
GO

DROP PROCEDURE IF EXISTS dbo.stageNumbers_checkMaxPosition;
GO

CREATE PROCEDURE dbo.stageNumbers_checkMaxPosition
AS
BEGIN

  UPDATE dbo.drawings
    SET isActive = 0,
      shortdescription = 'Number exceeds maxPosition'
  FROM dba.stage_numbers
  INNER JOIN dbo.games
    ON stage_numbers.gameID = dbo.games.id
  WHERE stage_numbers.position01 > games.maxPosition
    OR stage_numbers.position02 > games.maxPosition
    OR stage_numbers.position03 > games.maxPosition
    OR stage_numbers.position04 > games.maxPosition
    OR stage_numbers.position05 > games.maxPosition
    OR stage_numbers.position06 > games.maxPosition
    OR stage_numbers.position07 > games.maxPosition
    OR stage_numbers.position08 > games.maxPosition
    OR stage_numbers.position09 > games.maxPosition
    OR stage_numbers.position10 > games.maxPosition
    OR stage_numbers.position11 > games.maxPosition
    OR stage_numbers.position12 > games.maxPosition
    OR stage_numbers.position13 > games.maxPosition
    OR stage_numbers.position14 > games.maxPosition
    OR stage_numbers.position15 > games.maxPosition
    OR stage_numbers.position16 > games.maxPosition
    OR stage_numbers.position17 > games.maxPosition
    OR stage_numbers.position18 > games.maxPosition
    OR stage_numbers.position19 > games.maxPosition
    OR stage_numbers.position20 > games.maxPosition
END;
GO