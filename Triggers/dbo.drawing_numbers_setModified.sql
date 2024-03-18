USE Lottery;
GO

DROP TRIGGER IF EXISTS dbo.drawing_numbers_setModified;
GO

CREATE OR ALTER TRIGGER dbo.drawing_numbers_setModified
ON dbo.drawing_numbers
AFTER UPDATE
AS 
  UPDATE dbo.drawing_numbers
  SET dateModified = GETDATE()
  FROM dbo.drawing_numbers
  JOIN inserted AS inserted
    ON drawing_numbers.id = inserted.id;
GO

ALTER TABLE dbo.drawing_numbers
ENABLE TRIGGER drawing_numbers_setModified
GO


