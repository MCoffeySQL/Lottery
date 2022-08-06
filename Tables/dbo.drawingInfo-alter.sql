USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS pk_drawingInfo;
GO

ALTER TABLE dbo.drawingInfo 
  ADD CONSTRAINT pk_drawingInfo
  PRIMARY KEY CLUSTERED (id);
GO

DROP INDEX IF EXISTS nc_drawingInfo_isActive_gameDate_gameID
  ON dbo.drawings;
GO

CREATE INDEX nc_drawingInfo_isActive_gameDate_gameID
ON dbo.drawings(isActive,gameDate,gameID);
GO

--Unique [gameID,gameDate]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS unq_drawingInfo_gameId_gameDate;
GO

ALTER TABLE dbo.drawingInfo
  ADD CONSTRAINT unq_drawingInfo_gameID_gameDate
  UNIQUE (gameID,[gameDate]);
GO

--Foreign Key [gameID]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS fk_drawingInfo_gameID;
GO

ALTER TABLE dbo.drawingInfo
  ADD CONSTRAINT fk_drawingInfo_gameID
  FOREIGN KEY (gameID) REFERENCES dbo.games(id);
GO

--Default on [isActive]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS dv_drawingInfo_isActive;
GO

ALTER TABLE dbo.drawingInfo 
ADD CONSTRAINT dv_drawingInfo_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS dv_drawingInfo_dateCreated;
GO

ALTER TABLE dbo.drawingInfo
ADD CONSTRAINT dv_drawingInfo_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS dv_drawingInfo_dateModified;
GO

ALTER TABLE dbo.drawingInfo
ADD CONSTRAINT dv_drawingInfo_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS dv_drawingInfo_createdBy;
GO

ALTER TABLE dbo.drawingInfo
ADD CONSTRAINT dv_drawingInfo_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.drawingInfo DROP CONSTRAINT IF EXISTS dv_drawingInfo_modifiedBy;
GO

ALTER TABLE dbo.drawingInfo
ADD CONSTRAINT dv_drawingInfo_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO