USE Lottery;
GO

DROP TABLE IF EXISTS dbo.games;
GO

CREATE TABLE dbo.games(
  id INT IDENTITY(1,1) NOT NULL,
  isActive TINYINT NOT NULL,
  [name] VARCHAR(64) NOT NULL,
  dateStart DATE NULL,
  dateEnd DATE NULL,
  [match] VARCHAR(32) NULL,
  minPosition INT NULL,
  maxPosition INT NULL,
  maxBonus INT NULL,
  maxMultiplier INT NULL,
  minPrize INT NULL,
  maxPrize INT NULL,
  price DECIMAL(6,2) NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(64) NULL,
  modifiedBy VARCHAR(64) NULL,
  dateCreated DATETIME NULL,
  dateModified DATETIME NULL
);
GO