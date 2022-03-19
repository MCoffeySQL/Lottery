USE [Lottery]
GO

DROP TABLE IF EXISTS dbo.drawingsXT;
GO

CREATE TABLE dbo.drawingsXT(
  id INT IDENTITY(1,1) NOT NULL,
	isActive INT NOT NULL,
	drawingID INT NOT NULL,
	position INT NOT NULL,
	digit INT NOT NULL
);
GO