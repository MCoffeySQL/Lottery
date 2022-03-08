USE Lottery;
GO

DROP TABLE IF EXISTS dbo.statusActive;
GO

CREATE TABLE dbo.statusActive(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  statusActive INT NOT NULL,
  [name] NVARCHAR(60) NOT NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBY NVARCHAR(60) NOT NULL,
  modifiedBY NVARCHAR(60) NOT NULL
);
GO

