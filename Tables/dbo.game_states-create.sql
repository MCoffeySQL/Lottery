USE Lottery;
GO

DROP TABLE IF EXISTS dbo.game_states;
GO

CREATE TABLE dbo.game_states(
  id INT IDENTITY(1,1) NOT NULL,
  gameID INT NOT NULL,
  [state] VARCHAR(3) NOT NULL,
  isActive TINYINT NOT NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(64) NOT NULL,
  modifiedBy VARCHAR(64) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
);
GO
