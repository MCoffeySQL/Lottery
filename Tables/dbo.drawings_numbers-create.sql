USE Lottery;
GO

DROP TABLE IF EXISTS dbo.drawing_numbers;
GO

CREATE TABLE dbo.drawing_numbers(
  id BIGINT  IDENTITY(1,1) NOT NULL,
  drawingID INT NOT NULL,
  isActive TINYINT NOT NULL,
  position VARCHAR(8) NOT NULL,
  [number] INT NOT NULL,
  number_char VARCHAR(2) NULL,
  shortDescription VARCHAR(255) NULL,
  createdBy VARCHAR(64) NOT NULL,
  modifiedBy VARCHAR(64) NOT NULL,
  dateCreated DATETIME NOT NULL,
  dateModified DATETIME NOT NULL
);
GO
