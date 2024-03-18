USE Lottery;
GO

DROP TABLE IF EXISTS dbo.drawing_days;
GO

CREATE TABLE dbo.drawing_days(
  ID INT IDENTITY(1,1) NOT NULL,
  gameID INT NOT NULL,
  isActive TINYINT NOT NULL,
  drawingDay INT NOT NULL,
  drawingTime TIME NULL,
  shortDescription VARCHAR(255) NULL,
  dateCreated DATETIME NULL,
  dateModified DATETIME NULL,
  createdBy VARCHAR(64) NULL,
  modifiedBy VARCHAR(64) NULL
);
GO