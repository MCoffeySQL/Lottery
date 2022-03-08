USE Lottery;
GO

DROP TABLE IF EXISTS dbo.gameDays;
GO

CREATE TABLE dbo.gameDays(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  gameID INT NOT NULL,
  gameDay INT NOT NULL,
  gameTime TIME(7) NULL,
  salesClose TIME(7) NULL,
  timeZone NVARCHAR(8) NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBy NVARCHAR(60) NOT NULL
);
GO
