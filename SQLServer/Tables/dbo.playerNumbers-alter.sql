USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS pk_playerNumbers;
GO

ALTER TABLE dbo.playerNumbers 
  ADD CONSTRAINT pk_playerNumbers 
  PRIMARY KEY CLUSTERED (id);
GO

--Foreign Key [gameID]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS fk_playerNumbers_gameID;
GO

ALTER TABLE dbo.playerNumbers
  ADD CONSTRAINT fk_playerNumbers_gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.games(id);
GO

--Foreign Key [playerID]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS fk_playerNumbers_playerID;
GO

ALTER TABLE dbo.playerNumbers 
  ADD CONSTRAINT fk_playerNumbers_playerID
  FOREIGN KEY (playerID)
  REFERENCES dbo.players(id);
GO

--Default on [isActive]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS dv_playerNumbers_isActive;
GO

ALTER TABLE dbo.playerNumbers 
ADD CONSTRAINT dv_playerNumbers_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS dv_playerNumbers_dateCreated;
GO

ALTER TABLE dbo.playerNumbers
ADD CONSTRAINT dv_playerNumbers_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS dv_playerNumbers_dateModified;
GO

ALTER TABLE dbo.playerNumbers
ADD CONSTRAINT dv_playerNumbers_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS dv_playerNumbers_createdBy;
GO

ALTER TABLE dbo.playerNumbers
ADD CONSTRAINT dv_playerNumbers_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.playerNumbers DROP CONSTRAINT IF EXISTS dv_playerNumbers_modifiedBy;
GO

ALTER TABLE dbo.playerNumbers
ADD CONSTRAINT dv_playerNumbers_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO