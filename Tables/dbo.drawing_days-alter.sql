USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS pk_drawing_days;
GO

ALTER TABLE dbo.drawing_days
  ADD CONSTRAINT pk_drawing_days
  PRIMARY KEY CLUSTERED (id);
GO

--//Foreign Key [drawingID]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS fk_drawing_days#gameID;

ALTER TABLE dbo.drawing_days
  ADD CONSTRAINT fk_drawing_days#gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.games(ID)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

--Default on [isActive]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS dv_drawing_days_isActive;
GO

ALTER TABLE dbo.drawing_days
ADD CONSTRAINT dv_drawing_days_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS dv_drawing_days_dateCreated;
GO

ALTER TABLE dbo.drawing_days
ADD CONSTRAINT dv_drawing_days_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.drawing_days  
  DROP CONSTRAINT IF EXISTS dv_drawing_days_dateModified;
GO

ALTER TABLE dbo.drawing_days
ADD CONSTRAINT dv_drawing_days_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS dv_drawing_days_createdBy;
GO

ALTER TABLE dbo.drawing_days
ADD CONSTRAINT dv_drawing_days_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.drawing_days
  DROP CONSTRAINT IF EXISTS dv_drawing_days_modifiedBy;
GO

ALTER TABLE dbo.drawing_days
ADD CONSTRAINT dv_drawing_days_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO