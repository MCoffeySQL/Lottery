USE Lottery;
GO

DROP INDEX IF EXISTS nc_drawings_isActive_gameID_gameDate__positionAll
  ON dbo.drawings;
GO

CREATE INDEX nc_drawings_isActive_gameID_gameDate__positionAll
ON dbo.drawings(isActive,gameID,gameDate)
INCLUDE (position1,position2,position3,position4,position5,position6,position7,position8,position9,position10,position11,position12);
GO