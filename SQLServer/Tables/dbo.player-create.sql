USE Lottery;
GO

DROP TABLE IF EXISTS dbo.players;
GO

CREATE TABLE dbo.players(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  nameFirst NVARCHAR(60) NOT NULL,
  nameLast NVARCHAR(60) NOT NULL,
  nameMiddle NVARCHAR(60) NULL,
  streetAddress1 NVARCHAR(128) NULL,
  email NVARCHAR(128) NULL,
  dateBirth DATE NOT NULL,
  gender NCHAR(1) NULL,
  stateAbbr NVARCHAR(5) NOT NULL,
  bank DECIMAL(12,2) NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBY NVARCHAR(60) NOT NULL
);
GO