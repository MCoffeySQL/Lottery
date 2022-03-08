--FUNCTION
--return the count of unique quadruplets of digits by game bound by date having more than 1 quadruplets drawn
--bonus features
  --return the first occurance of the quadruplets
  --return the lasst occurance of the quadruplets
  --return the number of seconds from startDate to first occurance of the quadruplets
  --return the number of seconds from the last occurance of the quadruplets
--USE SELECT digit1,digit2,digit3,digit4,cDigits,minDate,maxDate,sminDate,smaxDate FROM countGameDigits3(gameid,startDate,endDate);
USE Lottery;
GO

CREATE OR ALTER FUNCTION dbo.countGameDigits4(
  @gameID INT,
  @startDate DATETIME,
  @endDate DATETIME
)
RETURNS TABLE
AS
RETURN
SELECT                                                          --display digits and apply aggregates
  gather4.digit1,
  gather4.digit2,
  gather4.digit3,
  gather4.digit4,
  COUNT(*) AS cDigits,                                          --count the occurance of unique digits 
  MIN(gameDate) AS minDate,                                     --first occurance of unique digits
  MAX(gameDate) AS maxDate,                                     --last occurance of unique digits
  DATEDIFF(SECOND,@startDate,MIN(gameDate)) AS sminDate,        --seconds from startdate and first occurance
  DATEDIFF(SECOND,MAX(gameDate),@endDate) AS smaxDate           --seconds from last occurance and enddate
FROM (                                                          --gather raw results
  SELECT      
    pass1.gameDate,                               
    pass1.digit AS digit1,
    pass2.digit AS digit2,
    pass3.digit AS digit3,
    pass4.digit AS digit4
  FROM dbo.drawingsXT AS pass1
  CROSS APPLY dbo.drawingsXT AS pass2                           --join to self to produce results
  CROSS APPLY dbo.drawingsXT AS pass3                           --join to self again to produce results
  CROSS APPLY dbo.drawingsXT AS pass4                           --join to self again to produce results
  WHERE pass1.gameDate = pass2.gameDate
    AND pass1.gameDate = pass3.gameDate
    AND pass1.gameDate = pass4.gameDate
    AND pass1.position < pass2.position                         --disallow duplication of A A
    AND pass1.position < pass3.position                         --disallow duplication of A B A
    AND pass1.position < pass4.position
    AND pass2.position < pass3.position                         --disallow duplication of A B B
    AND pass2.position < pass4.position
    AND pass3.position < pass4.position
    AND pass1.gameID = @gameID                                  --restrict to gameID bound by date
    AND pass2.gameID = pass1.gameID
    AND pass3.gameID = pass1.gameID
    AND pass4.gameID = pass1.gameID
    AND pass1.gameDate >= @startDate
    AND pass1.gameDate <= @endDate
) AS gather4
GROUP BY digit1,digit2,digit3,digit4
HAVING COUNT(*) > 1;                                            --restrict to triplets occuring more than 1x
GO
