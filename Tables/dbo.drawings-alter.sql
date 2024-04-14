USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.drawings
  DROP CONSTRAINT IF EXISTS pk_drawings;
GO

ALTER TABLE dbo.drawings
  ADD CONSTRAINT pk_drawings
  PRIMARY KEY CLUSTERED (id);
GO

--//Foreign Key [drawingID]
ALTER TABLE dbo.drawings
  DROP CONSTRAINT IF EXISTS fk_drawings#gameID;

ALTER TABLE dbo.drawings
  ADD CONSTRAINT fk_drawings#gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.games(ID)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

--Default on [isActive]
ALTER TABLE dbo.drawings
  DROP CONSTRAINT IF EXISTS dv_drawings_isActive;
GO

ALTER TABLE dbo.drawings
ADD CONSTRAINT dv_drawings_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.drawings
  DROP CONSTRAINT IF EXISTS dv_drawings_dateCreated;
GO

ALTER TABLE dbo.drawings
ADD CONSTRAINT dv_drawings_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.drawings  
  DROP CONSTRAINT IF EXISTS dv_drawings_dateModified;
GO

ALTER TABLE dbo.drawings
ADD CONSTRAINT dv_drawings_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.drawings
  DROP CONSTRAINT IF EXISTS dv_drawings_createdBy;
GO

ALTER TABLE dbo.drawings
ADD CONSTRAINT dv_drawings_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.drawings
  DROP CONSTRAINT IF EXISTS dv_drawings_modifiedBy;
GO

ALTER TABLE dbo.drawings
ADD CONSTRAINT dv_drawings_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO