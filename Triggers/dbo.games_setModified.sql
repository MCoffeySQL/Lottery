USE Lottery;
GO

DROP TRIGGER IF EXISTS dbo.games_setModified;
GO

CREATE OR ALTER TRIGGER dbo.games_setModified
ON dbo.games
AFTER UPDATE
AS 
  UPDATE dbo.games
  SET dateModified = GETDATE()
  FROM dbo.games
  JOIN inserted AS inserted
    ON games.id = inserted.id;
GO

ALTER TABLE dbo.games
ENABLE TRIGGER games_setModified
GO


