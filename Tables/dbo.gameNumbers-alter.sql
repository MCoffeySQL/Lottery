USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS pk_gameNumbers;
GO

ALTER TABLE dbo.gameNumbers 
  ADD CONSTRAINT pk_gameNumbers 
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key [gameID]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS fk_gameNumbers_gameID;
GO

ALTER TABLE dbo.gameNumbers
  ADD CONSTRAINT fk_gameNumbers_gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.games(id);
GO

--Default on [isActive]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS dv_gameNumbers_isActive;
GO

ALTER TABLE dbo.gameNumbers 
ADD CONSTRAINT dv_gameNumbers_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS dv_gameNumbers_dateCreated;
GO

ALTER TABLE dbo.gameNumbers
ADD CONSTRAINT dv_gameNumbers_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS dv_gameNumbers_dateModified;
GO

ALTER TABLE dbo.gameNumbers
ADD CONSTRAINT dv_gameNumbers_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS dv_gameNumbers_createdBy;
GO

ALTER TABLE dbo.gameNumbers
ADD CONSTRAINT dv_gameNumbers_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.gameNumbers DROP CONSTRAINT IF EXISTS dv_gameNumbers_modifiedBy;
GO

ALTER TABLE dbo.gameNumbers
ADD CONSTRAINT dv_gameNumbers_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO