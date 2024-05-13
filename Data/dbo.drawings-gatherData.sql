USE Lottery;
GO

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET NOCOUNT ON;

DELETE FROM dbo.drawings;
GO

DBCC CHECKIDENT ('drawings', RESEED, 0);
GO

INSERT INTO dbo.drawings(
  gameID,
  [state],
  isActive,
  gameDate,
  drawOrder
)
SELECT
  gather.gameID,
  gather.[state],
  gather.isActive,
  gather.gameDate,
  gather.drawOrder
FROM (
  SELECT 
    stage_numbers.gameID,
    stage_numbers.[state],
    1 AS isActive,
    TRY_CAST(RIGHT('0' + stage_numbers.[month],2) + '/' + 
      RIGHT('0' + stage_numbers.[day],2) + '/' + 
      CAST(stage_numbers.[year] AS VARCHAR) AS DATE) AS gameDate,
    ISNULL(stage_numbers.drawOrder,0) AS drawOrder
  FROM dbo.stage_numbers
) AS gather
WHERE gather.gameDate IS NOT NULL;