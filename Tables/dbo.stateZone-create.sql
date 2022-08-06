USE Lottery;
GO

DROP TABLE IF EXISTS dbo.stateZones;
GO

CREATE TABLE dbo.stateZones(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  stateAbbr NVARCHAR(5) NOT NULL,
  zoneAbbr NVARCHAR(5) NOT NULL,
  shortDescription NVARCHAR(255) NULL,
  createdBy NVARCHAR(60) NOT NULL,
  modifiedBy NVARCHAR(60) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL
);
GO