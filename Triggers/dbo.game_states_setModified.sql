USE Lottery;
GO

DROP TRIGGER IF EXISTS dbo.game_states_setModified;
GO

CREATE OR ALTER TRIGGER dbo.game_states_setModified
ON dbo.game_states
AFTER UPDATE
AS 
  UPDATE dbo.game_states
  SET dateModified = GETDATE()
  FROM dbo.game_states
  JOIN inserted AS inserted
    ON game_states.id = inserted.id;
GO

ALTER TABLE dbo.game_states
ENABLE TRIGGER game_states_setModified
GO


