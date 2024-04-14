USE Lottery
GO

DROP TABLE IF EXISTS dbo.game_states;
GO

CREATE TABLE dbo.game_states(
  ID INT IDENTITY(1,1) NOT NULL,
  isActive TINYINT NOT NULL,
  gameID INT NOT NULL,
  [state] VARCHAR(3) NOT NULL,
  dateStart DATE NULL,
  dateEnd DATE NULL,
  shortDescription VARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy VARCHAR(64) NOT NULL,
  modifiedBy VARCHAR(64) NOT NULL
);
GO
