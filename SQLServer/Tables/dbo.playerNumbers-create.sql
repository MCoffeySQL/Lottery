USE Lottery;
GO

DROP TABLE IF EXISTS dbo.playerNumbers;
GO

CREATE TABLE dbo.playerNumbers(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  isWinner INT NULL,
  isPaid INT NULL,
  playerID INT NOT NULL,
  gameID INT NOT NULL,
  gameDate DATETIME NOT NULL,
  drawOrder BIT NOT NULL,
  position1 INT NOT NULL,
  position2 INT NULL,
  position3 INT NULL,
  position4 INT NULL,
  position5 INT NULL,
  position6 INT NULL,
  position7 INT NULL,
  position8 INT NULL,
  position9 INT NuLL,
  position10 INT NULL,
  position11 INT NULL,
  position12 INT NULL,
  numberCompact NVARCHAR(60) NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBy NVARCHAR(60) NOT NULL
);
GO