USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS pk_games;
GO

ALTER TABLE dbo.games 
  ADD CONSTRAINT pk_games 
  PRIMARY KEY CLUSTERED (id);
GO

--Unique [name]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS unq_games_gameName;
GO

ALTER TABLE dbo.games
  ADD CONSTRAINT unq_games_gameName
  UNIQUE (gameName);
GO

--Check [match]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS ck_games_match;
GO

ALTER TABLE dbo.games 
ADD CONSTRAINT ck_games_match
CHECK ([match] IN (1,2,3,4,5,6,7,8,9,10,11,12,21));
GO

--Default on [isActive]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS dv_games_isActive;
GO

ALTER TABLE dbo.games 
ADD CONSTRAINT dv_games_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS dv_games_dateCreated;
GO

ALTER TABLE dbo.games
ADD CONSTRAINT dv_games_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS dv_games_dateModified;
GO

ALTER TABLE dbo.games
ADD CONSTRAINT dv_games_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS dv_games_createdBy;
GO

ALTER TABLE dbo.games
ADD CONSTRAINT dv_games_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.games DROP CONSTRAINT IF EXISTS dv_games_modifiedBy;
GO

ALTER TABLE dbo.games
ADD CONSTRAINT dv_games_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO