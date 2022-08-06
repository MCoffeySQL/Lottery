USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.statusActive DROP CONSTRAINT IF EXISTS pk_statusActive;
GO

ALTER TABLE dbo.statusActive 
  ADD CONSTRAINT pk_statusActive 
  PRIMARY KEY CLUSTERED (id);
GO

--Default on [isActive]
ALTER TABLE dbo.statusActive DROP CONSTRAINT IF EXISTS dv_statusActive_isActive;
GO

ALTER TABLE dbo.statusActive 
ADD CONSTRAINT dv_statusActive_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.statusActive DROP CONSTRAINT IF EXISTS dv_statusActive_dateCreated;
GO

ALTER TABLE dbo.statusActive
ADD CONSTRAINT dv_statusActive_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.statusActive DROP CONSTRAINT IF EXISTS dv_statusActive_dateModified;
GO

ALTER TABLE dbo.statusActive
ADD CONSTRAINT dv_statusActive_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.statusActive DROP CONSTRAINT IF EXISTS dv_statusActive_createdBy;
GO

ALTER TABLE dbo.statusActive
ADD CONSTRAINT dv_statusActive_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.statusActive DROP CONSTRAINT IF EXISTS dv_statusActive_modifiedBy;
GO

ALTER TABLE dbo.statusActive
ADD CONSTRAINT dv_statusActive_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO