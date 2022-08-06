USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS pk_gameStates;
GO

ALTER TABLE dbo.gameStates 
  ADD CONSTRAINT pk_gameStates
  PRIMARY KEY CLUSTERED (id);
GO

--Unique [gameID,stateAbbr]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS unq_gameStates_gameId_stateAbbr;
GO

ALTER TABLE dbo.gameStates
  ADD CONSTRAINT unq_gameStates_gameId_stateAbbr
  UNIQUE (gameID,stateAbbr);
GO

--Foreign Key [stateAbbr]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS fk_gameStates_stateAbbr;
GO

ALTER TABLE dbo.gameStates
  ADD CONSTRAINT fk_gameStates_stateAbbr
  FOREIGN KEY (stateAbbr)
  REFERENCES dbo.states(stateAbbr);
GO

--Foreign Key [gameID]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS fk_gameStates_gameID;
GO

ALTER TABLE dbo.gameStates
  ADD CONSTRAINT fk_gameStates_gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.game(id);
GO

--Default on [isActive]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS dv_gameStates_isActive;
GO

ALTER TABLE dbo.gameStates 
ADD CONSTRAINT dv_gameStates_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS dv_gameStates_dateCreated;
GO

ALTER TABLE dbo.gameStates
ADD CONSTRAINT dv_gameStates_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS dv_gameStates_dateModified;
GO

ALTER TABLE dbo.gameStates
ADD CONSTRAINT dv_gameStates_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS dv_gameStates_createdBy;
GO

ALTER TABLE dbo.gameStates
ADD CONSTRAINT dv_gameStates_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.gameStates DROP CONSTRAINT IF EXISTS dv_gameStates_modifiedBy;
GO

ALTER TABLE dbo.gameStates
ADD CONSTRAINT dv_gameStates_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO