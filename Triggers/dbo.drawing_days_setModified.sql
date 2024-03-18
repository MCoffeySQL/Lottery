USE Lottery;
GO

DROP TRIGGER IF EXISTS dbo.drawing_days_setModified;
GO

CREATE OR ALTER TRIGGER dbo.drawing_days_setModified
ON dbo.drawing_days
AFTER UPDATE
AS 
  UPDATE dbo.drawing_days
  SET dateModified = GETDATE()
  FROM dbo.drawing_days
  JOIN inserted AS inserted
    ON drawing_days.id = inserted.id;
GO

ALTER TABLE dbo.drawing_days
ENABLE TRIGGER drawing_days_setModified
GO


