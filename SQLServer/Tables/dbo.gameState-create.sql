USE Lottery;
GO

DROP TABLE IF EXISTS dbo.gameStates;
GO

CREATE TABLE dbo.gameStates(
  id INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
  gameID INT NOT NULL,
  stateAbbr NVARCHAR(5) NOT NULL,
  enrollDate DATE NULL,
  shortDescription NVARCHAR(255) NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL,
  createdBY NVARCHAR(60) NOT NULL,
  modifiedBY NVARCHAR(60) NOT NULL
);
GO

