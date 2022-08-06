USE Lottery;
GO

DROP TABLE IF EXISTS dbo.drawingInfo;
GO

CREATE TABLE dbo.drawingInfo(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  gameID INT NOT NULL,
  gameDate DATETIME NOT NULL,
  jackpot INT NULL,
  plays BIGINT NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBy NVARCHAR(60) NOT NULL
);
GO