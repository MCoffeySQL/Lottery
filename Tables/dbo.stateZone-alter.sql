USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS pk_stateTimeZone;
GO

ALTER TABLE dbo.stateTimeZone 
  ADD CONSTRAINT pk_stateTimeZone 
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key on [timeZoneID]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS fk_stateTimeZone_timeZoneID;
GO

ALTER TABLE dbo.stateTimeZone
  ADD CONSTRAINT fk_stateTimeZone_timeZoneID
  FOREIGN KEY (timeZoneID)
  REFERENCES dbo.timeZone(id);
GO

--Foreign Key on [stateID]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS fk_stateTimeZone_stateID;
GO

ALTER TABLE dbo.stateTimeZone
  ADD CONSTRAINT fk_stateTimeZone_stateID
  FOREIGN KEY ([stateID])
  REFERENCES dbo.states (id);
GO

--Unique [stateID,timeZoneID]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS unq_stateTimeZone_stateID_timeZoneID;
GO

ALTER TABLE dbo.stateTimeZone
  ADD CONSTRAINT unq_stateTimeZone_stateID_timeZoneID
  UNIQUE (stateID,timeZoneID);
GO

--Default on [isActive]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS dv_stateTimeZone_isActive;
GO

ALTER TABLE dbo.stateTimeZone 
ADD CONSTRAINT dv_stateTimeZone_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS dv_stateTimeZone_dateCreated;
GO

ALTER TABLE dbo.stateTimeZone
ADD CONSTRAINT dv_stateTimeZone_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS dv_stateTimeZone_dateModified;
GO

ALTER TABLE dbo.stateTimeZone
ADD CONSTRAINT dv_stateTimeZone_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS dv_stateTimeZone_createdBy;
GO

ALTER TABLE dbo.stateTimeZone
ADD CONSTRAINT dv_stateTimeZone_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.stateTimeZone DROP CONSTRAINT IF EXISTS dv_stateTimeZone_modifiedBy;
GO

ALTER TABLE dbo.stateTimeZone
ADD CONSTRAINT dv_stateTimeZone_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO