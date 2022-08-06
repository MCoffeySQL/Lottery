--PROCEDURE
--determine which function to call based on the number positions provided.  This method is proven 
--to be more effective than using several OR statements in the function (grant fritchy)
--
--avoid user error 
--  check that startDate < endDate
--  check that positions >= 2 and <= 4  
--USE
--EXEC dbo.masterGameDigits gameID,positions,startDate,endDate;
USE Lottery;
GO

CREATE OR ALTER PROCEDURE dbo.masterGameDigits(
  @gameID INT,
  @positions INT,
  @startDate DATETIME,
  @endDate DATETIME
)
AS 
BEGIN
  DECLARE
    @holdDate DATETIME ,
    @message NVARCHAR(200)

  IF @endDate < @startDate
  BEGIN
    SET @holdDate = @startDate                    --move the startDate to holding
    SET @startDate = @endDate                     --move the endDate into the startDate 
    SET @endDate = @holdDate                      --move the holdDate(startDate) into the endDate
  END

  IF @positions < 2 OR @positions > 4 
    BEGIN
      SET @message = N'You must enter a value >= 2 and <= 4 as position'
      RAISERROR(@message,0,1)
    END
    
  IF @positions = 2
    BEGIN
      SELECT 
        digit1,
        digit2,
        cDigits,
        minDate,
        maxDate,
        sminDate,
        smaxDate 
      FROM countGameDigits2(@gameID,@startDate,@endDate);
    END

  IF @positions = 3
    BEGIN
      SELECT 
        digit1,
        digit2,
        digit3,
        cDigits,
        minDate,
        maxDate,
        sminDate,
        smaxDate 
      FROM countGameDigits3(@gameID,@startDate,@endDate);
    END

    IF @positions = 4
    BEGIN
      SELECT 
        digit1,
        digit2,
        digit3,
        digit4,
        cDigits,
        minDate,
        maxDate,
        sminDate,
        smaxDate 
      FROM countGameDigits4(@gameID,@startDate,@endDate);
    END
END;
GO