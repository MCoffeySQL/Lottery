USE Lottery;
GO

DROP TRIGGER IF EXISTS dbo.drawings_setModified;
GO

CREATE OR ALTER TRIGGER dbo.drawings_setModified
ON dbo.drawings
AFTER UPDATE
AS 
  UPDATE dbo.drawings
  SET dateModified = GETDATE()
  FROM dbo.drawings
  JOIN inserted AS inserted
    ON drawings.id = inserted.id;
GO

ALTER TABLE dbo.drawings
ENABLE TRIGGER drawings_setModified
GO


