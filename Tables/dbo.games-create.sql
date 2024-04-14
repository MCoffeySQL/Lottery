USE Lottery;
GO

DROP TABLE IF EXISTS dbo.games;
GO

CREATE TABLE dbo.games(
  id INT IDENTITY(1,1) NOT NULL,
  isActive TINYINT NOT NULL,
  [name] VARCHAR(64) NOT NULL,
  [match] TINYINT NULL,
  maxPosition TINYINT NULL,
  maxBonus TINYINT NULL,
  maxMultiplier TINYINT NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(64) NULL,
  modifiedBy VARCHAR(64) NULL,
  dateCreated DATETIME NULL,
  dateModified DATETIME NULL
);
GO