USE Lottery;
GO

--Primary Key [ID]
ALTER TABLE dbo.drawingsXT DROP CONSTRAINT IF EXISTS pk_drawingsXT;
GO

ALTER TABLE dbo.drawingsXT 
  ADD CONSTRAINT pk_drawingsXT 
  PRIMARY KEY CLUSTERED (id);
GO

--Default on [isActive]
ALTER TABLE dbo.drawingsXT DROP CONSTRAINT IF EXISTS dv_drawingsXT_isActive;
GO

ALTER TABLE dbo.drawingsXT 
ADD CONSTRAINT dv_drawingsXT_isActive
  DEFAULT 1
  FOR isActive;
GO
