USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.game_states
  DROP CONSTRAINT IF EXISTS pk_game_states;
GO

ALTER TABLE dbo.game_states
  ADD CONSTRAINT pk_game_states
  PRIMARY KEY CLUSTERED (id);
GO

--//--Foreign Key [gameID]
ALTER TABLE dbo.game_states
  DROP CONSTRAINT IF EXISTS fk_game_states#gameID;

ALTER TABLE dbo.game_states
  ADD CONSTRAINT fk_game_states#gameID
  FOREIGN KEY (gameID)
  REFERENCES dbo.games(id)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;
GO

--//-- Nonclustered on gameID
DROP INDEX IF EXISTS nc_game_states#state ON dbo.game_States;

CREATE NONCLUSTERED INDEX game_states#state
  ON dbo.game_states([state]);
GO

--Default on [isActive]
ALTER TABLE dbo.game_states
  DROP CONSTRAINT IF EXISTS dv_game_states_isActive;
GO

ALTER TABLE dbo.game_states
ADD CONSTRAINT dv_game_states_isActive
  DEFAULT 1
  FOR isActive;
GO

--Default on [dateCreated]
ALTER TABLE dbo.game_states
  DROP CONSTRAINT IF EXISTS dv_game_states_dateCreated;
GO

ALTER TABLE dbo.game_states
ADD CONSTRAINT dv_game_states_dateCreated
  DEFAULT SYSDATETIME() 
  FOR dateCreated;
GO

--Default on [dateModified]
ALTER TABLE dbo.game_states  
  DROP CONSTRAINT IF EXISTS dv_game_states_dateModified;
GO

ALTER TABLE dbo.game_states
ADD CONSTRAINT dv_game_states_dateModified
  DEFAULT SYSDATETIME()
  FOR dateModified;
GO

--Default on [createdBy]
ALTER TABLE dbo.game_states
  DROP CONSTRAINT IF EXISTS dv_game_states_createdBy;
GO

ALTER TABLE dbo.game_states
ADD CONSTRAINT dv_game_states_createdBy
  DEFAULT SUSER_SNAME()
  FOR createdBy;
GO

--Default on [modifiedBy]
ALTER TABLE dbo.game_states
  DROP CONSTRAINT IF EXISTS dv_game_states_modifiedBy;
GO

ALTER TABLE dbo.game_states
ADD CONSTRAINT dv_game_states_modifiedBy
  DEFAULT SUSER_SNAME()
  FOR modifiedBy;
GO