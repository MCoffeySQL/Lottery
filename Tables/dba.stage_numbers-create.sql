USE Lottery;
GO

DROP TABLE IF EXISTS dba.stage_numbers;
GO

CREATE TABLE dba.stage_numbers(
  id INT IDENTITY(1,1) NOT NULL,
  IsActive TINYINT NOT NULL,
  gameID INT NOT NULL,
  [state] VARCHAR(3) NULL,
  [month] TINYINT NOT NULL,
  [day] TINYINT NOT NULL,
  [year] INT NOT NULL,
  drawOrder BIT NULL,
  position01 TINYINT NULL,
  position02 TINYINT NULL,
  position03 TINYINT NULL,
  position04 TINYINT NULL,
  position05 TINYINT NULL,
  position06 TINYINT NULL,
  position07 TINYINT NULL,
  position08 TINYINT NULL,
  position09 TINYINT NULL,
  position10 TINYINT NULL,
  position11 TINYINT NULL,
  position12 TINYINT NULL,
  position13 TINYINT NULL,
  position14 TINYINT NULL,
  position15 TINYINT NULL,
  position16 TINYINT NULL,
  position17 TINYINT NULL,
  position18 TINYINT NULL,
  position19 TINYINT NULL,
  position20 TINYINT NULL,
  shortDescription VARCHAR(255) NULL
);
GO

