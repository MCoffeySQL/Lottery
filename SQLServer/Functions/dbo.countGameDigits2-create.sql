--FUNCTION
--return the count of unique pairs of digits by game bound by date having more than 1 pair drawn
--bonus features
  --return the first occurance of the pair
  --return the lasst occurance of the pair
  --return the number of seconds from startDate to first occurance of the pair
  --return the number of seconds from the last occurance of the pair
--USE SELECT digit1,digit2,cDigits,minDate,maxDate,sminDate,smaxDate FROM countGameDigits2(gameid,startDate,endDate);
USE Lottery;
GO

CREATE OR ALTER FUNCTION dbo.countGameDigits2(
  @gameID INT,
  @startDate DATETIME,
  @endDate DATETIME
)
RETURNS TABLE
AS
RETURN
SELECT                                                          --display digits and apply aggregates
  gather2.digit1,
  gather2.digit2,
  COUNT(*) AS cDigits,                                          --count the occurance of unique digits 
  MIN(gameDate) AS minDate,                                     --first occurance of unique digits
  MAX(gameDate) AS maxDate,                                     --last occurance of unique digits
  DATEDIFF(SECOND,@startDate,MIN(gameDate)) AS sminDate,        --seconds from startdate and first occurance
  DATEDIFF(SECOND,MAX(gameDate),@endDate) AS smaxDate           --seconds from last occurance and enddate
FROM (                                                          --gather raw results
  SELECT      
    pass1.gameDate,                               
    pass1.digit AS digit1,
    pass2.digit AS digit2
  FROM dbo.drawingsXT AS pass1
  CROSS APPLY dbo.drawingsXT AS pass2                           --join to self to produce results
  WHERE pass1.gameDate = pass2.gameDate
    AND pass1.position < pass2.position
    AND pass1.gameID = @gameID                                  --restrict to gameID bound by date
    AND pass1.gameDate >= @startDate
    AND pass1.gameDate <= @endDate
) AS gather2
GROUP BY digit1,digit2
HAVING COUNT(*) > 1;
GO
