USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS pk_stateZones;
GO

ALTER TABLE dbo.stateZones 
  ADD CONSTRAINT pk_stateZones 
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key on [zoneAbbr]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS fk_stateZones_zoneAbbr;
GO

ALTER TABLE dbo.stateZones
  ADD CONSTRAINT fk_stateZones_zoneAbbr
  FOREIGN KEY (zoneAbbr)
  REFERENCES dbo.timeZones(zoneAbbr);
GO

--Foreign Key on [stateAbbr]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS fk_stateZones_stateAbbr;
GO

ALTER TABLE dbo.stateZones
  ADD CONSTRAINT fk_stateZones_stateAbbr
  FOREIGN KEY (stateAbbr)
  REFERENCES dbo.states (stateAbbr);
GO

--Unique [stateID,timeZoneID]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS unq_stateZones_stateAbbr_zoneAbbr;
GO

ALTER TABLE dbo.stateZones
  ADD CONSTRAINT unq_stateZones_stateAbbr_zoneAbbr
  UNIQUE (stateAbbr,zoneAbbr);
GO

--Default on [isActive]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS dv_stateZones_isActive;
GO

ALTER TABLE dbo.stateZones 
ADD CONSTRAINT dv_stateZones_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS dv_stateZones_dateCreated;
GO

ALTER TABLE dbo.stateZones
ADD CONSTRAINT dv_stateZones_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS dv_stateZones_dateModified;
GO

ALTER TABLE dbo.stateZones
ADD CONSTRAINT dv_stateZones_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS dv_stateZones_createdBy;
GO

ALTER TABLE dbo.stateZones
ADD CONSTRAINT dv_stateZones_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.stateZones DROP CONSTRAINT IF EXISTS dv_stateZones_modifiedBy;
GO

ALTER TABLE dbo.stateZones
ADD CONSTRAINT dv_stateZones_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO