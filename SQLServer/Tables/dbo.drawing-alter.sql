USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.drawing DROP CONSTRAINT IF EXISTS pk_drawing
GO

ALTER TABLE dbo.drawing
  ADD CONSTRAINT pk_drawing
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key [drawingID]
ALTER TABLE dbo.drawing DROP CONSTRAINT IF EXISTS fk_drawing_drawingID;
GO

ALTER TABLE dbo.drawing
ADD CONSTRAINT fk_drawing_drawingID
FOREIGN KEY (drawingID)
REFERENCES dbo.drawingInfo(id)
ON DELETE CASCADE
ON UPDATE CASCADE;
GO

--Default on [isActive]
ALTER TABLE dbo.drawing DROP CONSTRAINT IF EXISTS dv_drawing_isActive;
GO

ALTER TABLE dbo.drawing
ADD CONSTRAINT dv_drawing_isActive
  DEFAULT 1
  FOR isActive;
GO
