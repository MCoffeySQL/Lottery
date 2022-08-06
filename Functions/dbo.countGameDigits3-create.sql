--FUNCTION
--return the count of unique triplets of digits by game bound by date having more than 1 pair drawn
--bonus features
  --return the first occurance of the triplet
  --return the lasst occurance of the triplet
  --return the number of seconds from startDate to first occurance of the triplet
  --return the number of seconds from the last occurance of the triplet
--USE SELECT digit1,digit2,digit3,cDigits,minDate,maxDate,sminDate,smaxDate FROM countGameDigits3(gameid,startDate,endDate);
USE Lottery;
GO

CREATE OR ALTER FUNCTION dbo.countGameDigits3(
  @gameID INT,
  @startDate DATETIME,
  @endDate DATETIME
)
RETURNS TABLE
AS
RETURN
WITH cDrawing                                                   --cte to gather gameDate,gameID from drawingInfo
AS (                                                            --to postion, digit in drawing
  SELECT                                                        --and ignore positions < 100
    drawingInfo.gameDate,
    drawingInfo.gameID,
    drawing.position,
    drawing.digit
  FROM dbo.drawingInfo
  INNER JOIN dbo.drawing
    ON drawingInfo.id = drawing.drawingID
  WHERE position < 100
)
SELECT                                                          --display digits and apply aggregates
  gather3.digit1,
  gather3.digit2,
  gather3.digit3,
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
    pass3.digit AS digit3
  FROM cDrawing AS pass1
  CROSS APPLY cDrawing AS pass2                           --join to self to produce results
  CROSS APPLY cDrawing AS pass3                           --join to self again to produce results
  WHERE pass1.gameDate = pass2.gameDate
    AND pass1.gameDate = pass3.gameDate
    AND pass1.position < pass2.position                         --disallow duplication of A A
    AND pass1.position < pass3.position                         --disallow duplication of A B A
    AND pass2.position < pass3.position                         --disallow duplication of A B B
    AND pass1.gameID = @gameID                                  --restrict to gameID bound by date
    AND pass2.gameID = pass1.gameID
    AND pass3.gameID = pass1.gameID
    AND pass1.gameDate >= @startDate
    AND pass1.gameDate <= @endDate
) AS gather3
GROUP BY digit1,digit2,digit3
HAVING COUNT(*) > 1;                                            --restrict to triplets occuring more than 1x
GO
