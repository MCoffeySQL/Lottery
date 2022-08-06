USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS pk_players;
GO

ALTER TABLE dbo.players 
  ADD CONSTRAINT pk_players 
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key [state]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS fk_players_stateAbbr;
GO

ALTER TABLE dbo.players
  ADD CONSTRAINT fk_players_stateAbbr
  FOREIGN KEY (stateAbbr)
  REFERENCES dbo.states(stateAbbr);
GO

--Default on [isActive]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS dv_players_isActive;
GO

ALTER TABLE dbo.players 
ADD CONSTRAINT dv_players_isActive
  DEFAULT 1
  FOR isActive;
GO

--Check [EMail]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS ck_players_email;
GO

ALTER TABLE dbo.players
ADD CONSTRAINT ck_players_email
CHECK (email LIKE '%@%.%');
GO

--Check [gender]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS ck_players_gender;
GO

ALTER TABLE dbo.players
ADD CONSTRAINT ck_players_gender
CHECK(gender IN('M','F'));
GO

--Default on [dateCreated]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS dv_players_dateCreated;
GO

ALTER TABLE dbo.players
ADD CONSTRAINT dv_players_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS dv_players_dateModified;
GO

ALTER TABLE dbo.players
ADD CONSTRAINT dv_players_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS dv_players_createdBy;
GO

ALTER TABLE dbo.players
ADD CONSTRAINT dv_players_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.players DROP CONSTRAINT IF EXISTS dv_players_modifiedBy;
GO

ALTER TABLE dbo.players
ADD CONSTRAINT dv_players_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO