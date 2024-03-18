USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.drawing_numbers
  DROP CONSTRAINT IF EXISTS pk_drawing_numbers;
GO

ALTER TABLE dbo.drawing_numbers
  ADD CONSTRAINT pk_drawing_numbers
  PRIMARY KEY CLUSTERED (id);
GO

--//Foreign Key [drawingID]
ALTER TABLE dbo.drawing_numbers
  DROP CONSTRAINT IF EXISTS fk_drawing_numbers#drawingID;

ALTER TABLE dbo.drawing_numbers
  ADD CONSTRAINT fk_drawing_numbers#drawingID
  FOREIGN KEY (drawingID)
  REFERENCES dbo.drawings(ID)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

--Default on [isActive]
ALTER TABLE dbo.drawing_numbers
  DROP CONSTRAINT IF EXISTS dv_drawing_numbers_isActive;
GO

ALTER TABLE dbo.drawing_numbers
ADD CONSTRAINT dv_drawing_numbers_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS dv_drawing_days_dateCreated;
GO

ALTER TABLE dbo.drawing_numbers
ADD CONSTRAINT dv_drawing_numbers_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.drawing_numbers  
  DROP CONSTRAINT IF EXISTS dv_drawing_numbers_dateModified;
GO

ALTER TABLE dbo.drawing_numbers
ADD CONSTRAINT dv_drawing_numbers_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.drawing_numbers
  DROP CONSTRAINT IF EXISTS dv_drawing_numbers_createdBy;
GO

ALTER TABLE dbo.drawing_numbers
ADD CONSTRAINT dv_drawing_numbers_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.drawing_numbers
  DROP CONSTRAINT IF EXISTS dv_drawing_numbers_modifiedBy;
GO

ALTER TABLE dbo.drawing_numbers
ADD CONSTRAINT dv_drawing_numbers_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO