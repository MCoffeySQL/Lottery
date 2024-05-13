USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dba.stage_numbers
  DROP CONSTRAINT IF EXISTS pk_stageNumbers;
GO

ALTER TABLE dba.stage_numbers
  ADD CONSTRAINT pk_stageNumbers
  PRIMARY KEY CLUSTERED (id);
GO

--Default on [isActive]
ALTER TABLE dba.stage_numbers
  DROP CONSTRAINT IF EXISTS dv_stageNumbers_isActive;
GO

ALTER TABLE dba.stage_numbers
ADD CONSTRAINT dv_stageNumbers_isActive
  DEFAULT 1
  FOR isActive;
GO
