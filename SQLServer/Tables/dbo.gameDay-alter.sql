USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS pk_gameDays;
GO

ALTER TABLE dbo.gameDays 
  ADD CONSTRAINT pk_gameDays 
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key on [timeZone]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS fk_gameDays_timeZone;
GO

ALTER TABLE dbo.gameDays
  ADD CONSTRAINT fk_gameDays_timeZone
  FOREIGN KEY(timeZone)
  REFERENCES dbo.timeZone(abbr);
GO

--Foreign Key on [gameID]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS fk_gameDays_gameID;
GO

ALTER TABLE dbo.gameDays
  ADD CONSTRAINT fk_gameDays_gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.game(id);
GO

--Unique [gameID,gameDays]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS unq_gameDays_gameID_gameDay;
GO

ALTER TABLE dbo.gameDays
  ADD CONSTRAINT unq_gameDays_gameID_gameDay
  UNIQUE (gameID,gameDay);
GO

--Check [gameDay]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS ck_gameDays_gameDay;
GO

ALTER TABLE dbo.gameDays
ADD CONSTRAINT ck_gameDays_gameDay
CHECK (gameDay IN (1,2,3,4,5,6,7));
GO

--Default on [isActive]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS dv_gameDays_isActive;
GO

ALTER TABLE dbo.gameDays 
ADD CONSTRAINT dv_gameDays_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS dv_gameDays_dateCreated;
GO

ALTER TABLE dbo.gameDays
ADD CONSTRAINT dv_gameDays_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS dv_gameDays_dateModified;
GO

ALTER TABLE dbo.gameDays
ADD CONSTRAINT dv_gameDays_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS dv_gameDays_createdBy;
GO

ALTER TABLE dbo.gameDays
ADD CONSTRAINT dv_gameDays_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.gameDays DROP CONSTRAINT IF EXISTS dv_gameDays_modifiedBy;
GO

ALTER TABLE dbo.gameDays
ADD CONSTRAINT dv_gameDays_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO