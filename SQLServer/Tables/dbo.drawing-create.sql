USE Lottery;
GO

DROP TABLE IF EXISTS dbo.drawing;
GO

CREATE TABLE dbo.drawing(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  gameID INT NOT NULL,
  gameDate DATETIME NOT NULL,
  drawOrder BIT NULL,
  position1 INT NULL,
  position2 INT NULL,
  position3 INT NULL,
  position4 INT NULL,
  position5 INT NULL,
  position6 INT NULL,
  position7 INT NULL,
  position8 INT NULL,
  position9 INT NULL,
  position10 INT NULL,
  position11 INT NULL,
  position12 INT NULL,
  bonus INT NULL,
  multiplier INT NULL,
  jackpot INT NULL,
  plays BIGINT NULL,
  numberCompact NVARCHAR(60) NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBy NVARCHAR(60) NOT NULL
);
GO