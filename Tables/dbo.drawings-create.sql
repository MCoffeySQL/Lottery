USE Lottery
GO

DROP TABLE IF EXISTS dbo.drawing;
GO

CREATE TABLE dbo.drawing(
  id INT IDENTITY(1,1) NOT NULL,
  gameID INT NOT NULL,
  [state] VARCHAR(3) NULL,
  isActive TINYINT NOT NULL,
  gameDate DATE NOT NULL,
  drawOrder BIT NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(64) NULL,
  modifiedBy VARCHAR(64) NULL,
  dateCreated DATETIME NULL,
  dateModified DATETIME NULL
);
GO