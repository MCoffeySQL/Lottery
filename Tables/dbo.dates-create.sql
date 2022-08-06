USE Lottery;
GO

DROP TABLE IF EXISTS dbo.dates;
GO

CREATE TABLE dbo.dates(
  [id] INT IDENTITY(1,1) NOT NULL,
  isActive INT NOT NULL,
	[date] DATE NOT NULL,
	[weekday]  AS DATEPART(WEEKDAY,[date]),
	[month]  AS DATEPART(MONTH,[date]) PERSISTED,
	[day]  AS DATEPART(DAY,[date]) PERSISTED,
	[year]  AS DATEPART(YEAR,[date]) PERSISTED,
  [dayofWeek] AS DATEPART(WEEKDAY,[date]),
  [dayofYear] AS DATEPART(DAYOFYEAR,[date]),
  [weekofYear] AS DATEPART(WEEK,[date]),
  isWeekDay AS CASE WHEN DATEPART(WEEKDAY,[date]) IN (2,3,4,5,6) THEN 1 ELSE 0 END,
  [monthName] AS DATENAME(MONTH,[date]),
  [monthNameAbbr] AS LEFT(DATENAME(MONTH,[date]),3),
  [dayName] AS DATENAME(WEEKDAY,[date]),
  [dayNameAbbr] AS CASE WHEN DATENAME(WEEKDAY,[date]) = 'Thursday' THEN 'Thr' ELSE LEFT(DATENAME(WEEKDAY,[date]),3) END,
  [quarter] AS DATEPART(QUARTER,[date]) PERSISTED,
  [quarterName] AS CASE DATEPART(QUARTER,[date]) WHEN 1 THEN 'First' WHEN 2 THEN 'Second' WHEN 3 THEN 'Third' WHEN 4 THEN 'Forth' END,
  [daySuffix] AS CASE WHEN DATEPART(WEEKDAY,[date])= 1 THEN 'st' WHEN DATEPART(WEEKDAY,[date]) = 2 THEN 'nd' WHEN DATEPART(WEEKDAY,[date]) = 3 THEN 'rd' WHEN DATEPART(WEEKDAY,[date]) >3 THEN 'th' END 
) ON [PRIMARY];
GO


