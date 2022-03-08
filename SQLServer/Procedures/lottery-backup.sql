--Procedure
--Backup the lottery database
----Full Backup

--Use:  EXEC dbo.backup_lottery;

USE Lottery;
GO

CREATE OR ALTER PROCEDURE dbo.bakup_lottery
AS
BEGIN
  DECLARE
    @buTime DATETIME = GETDATE(),
    @buFile NVARCHAR(255)

  SET @buFile = N'D:\SQL Server\Backup\lottery_' + CAST(DATEPART(YEAR,@buTime) AS NVARCHAR) + RIGHT('0' + CAST(DATEPART(MONTH,@buTime) AS NVARCHAR),2) + RIGHT('0' + CAST(DATEPART(DAY,@buTime) AS NVARCHAR),2) + RIGHT('0' + CAST(DATEPART(HOUR,@buTime) AS NVARCHAR),2) + RIGHT('0' + CAST(DATEPART(MINUTE,@buTime) AS NVARCHAR),2) + RIGHT('0' + CAST(DATEPART(SECOND,@buTime) AS NVARCHAR),2) + '.bak';

  BACKUP DATABASE [Lottery] 
  TO  
	  DISK = @buFile
  WITH  
    --{with Options]
	  NAME = N'lottery_backup', 
	  DESCRIPTION = N'lottery backup', 
    --CREDIENTIAL,
	  --FILE_SNAPSHOT,
	  --DIFFERENTIAL,
	  --ENCRYPTION,

	  -- [MediaSet Options]
	  NOFORMAT, 
	  INIT,  
	  SKIP, 

	  -- [Backup Set Options]
	  COMPRESSION,  
	  NO_CHECKSUM,
	  STATS = 10;
	  --RETAINDAYS = 'Days', / EXPIREDATE = 'date'
	  --Password = 'Password',
	  --MIRROR TO DISK = 'Path\FileName.bak'
	  --	NOREWIND,  -- Tape Only
	  -- 	NOUNLOAD,   --Tape Only

  DBCC SHRINKFILE (N'lottery_log' , 0, TRUNCATEONLY);
END
GO