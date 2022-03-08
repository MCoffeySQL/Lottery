USE Lottery;
GO

SET NOCOUNT ON
GO

TRUNCATE TABLE dbo.dates;
GO

DECLARE
  @aDate DATE = CAST('1/1/1992' AS DATE),
  @bDate DATE = CAST('1/1/2100' AS DATE),
  @aNumber INT = 1

WHILE @aDate <= @bDate
  BEGIN
    INSERT INTO dbo.dates(
      isActive,
      [date]
     )
    VALUES (
      1,
      @aDate
    )

    SET @aDate = DATEADD(DAY,1,@aDate)
  END;
GO
