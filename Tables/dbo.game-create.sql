USE Lottery;
GO

DROP TABLE IF EXISTS dbo.games;
GO

CREATE TABLE dbo.games(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  gameName NVARCHAR(60) NOT NULL,
  [match] INT NOT NULL,
  dateStart DATE NULL,
  dateEnd DATE NULL,
  minPosition INT NULL,
  maxPosition INT NULL,
  maxBonus INT NULL,
  maxMultiplier INT NULL,
  minPrize INT NULL,
  maxPrize INT NULL,
  maxPlays INT NULL,
  playCost DECIMAL(12,2) NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBy NVARCHAR(60) NOT NULL
);
GO