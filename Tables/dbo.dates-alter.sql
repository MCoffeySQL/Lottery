USE Lottery;
GO

--Create Primary Key Clustered on [date]
ALTER TABLE dbo.dates DROP CONSTRAINT IF EXISTS pk_dates;
GO

ALTER TABLE dbo.dates
    ADD CONSTRAINT pk_dates
			PRIMARY KEY CLUSTERED ([date]);
GO

--Check for [quarter]
ALTER TABLE dbo.dates DROP CONSTRAINT IF EXISTS chk_dates_quarter;
GO

ALTER TABLE dbo.dates
ADD CONSTRAINT chk_dates_quarter
  CHECK([quarter] IN (1,2,3,4));
GO

ALTER TABLE dbo.dates
WITH CHECK CHECK CONSTRAINT chk_dates_quarter;
GO