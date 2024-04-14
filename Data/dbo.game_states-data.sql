USE Lottery;
GO


TRUNCATE TABLE dbo.game_states;

INSERT INTO dbo.game_states(
  isActive,
  gameID,
  [state],
  shortDescription
)
VALUES 
--//-- AZ
  (1,3,35,'The Pick'),
  (1,3,36,'Pick 3'),
  (1,3,15,'Fantasy 5'),
  (1,3,38,'Triple Twist'),
  (1,3,255,'Quick Draw Mid-Day'),
  (1,3,256,'Quick Draw Evening'),
--//--AR
  (1,4,40,'Cash 3 Mid-day'),
  (1,4,41,'Cash 3 Evening'),
  (1,4,42,'Cash 4 Mid-day'),
  (1,4,43,'Cash 4 Evening'),
  (1,4,49,'Lotto'),
  (1,4,5,'Lucky 4 Life'),
--//-- CA
  (1,4,44,'Super Lotto'),
  (1,4,15,'Fantasy 5'),
  (1,4,244,'Daily 3'),
  (1,4,143,'Daily 4'),
--//-- CO
--//-- CT
--//-- DE
--//-- DC
--//-- FL
--//-- GA 
--//-- ID 
--//-- IL 
--//-- IN 
--//-- IA 
--//-- KS 
--//-- KY 
--//-- LA 
--//-- ME 
--//-- MD 
  (1,20,24,'Multi Match'),
  (1,20,19,'Match 5'),
  (1,20,10,'Pick 3 Mid-day'),
  (1,20,11,'Pick 3 Evening'),
  (1,20,12,'Pick 4 Mid-day'),
  (1,20,13,'Pick 4 Evening'),
  (1,20,72,'Pick 5 Mid-day'),
  (1,20,73,'Pick 5 Evening'),
  (1,20,7,'Cash 4 Life'),
--//-- MA 
--//-- MI 
  (1,22,14,'Lotto 47'),
  (1,22,15,'Fantasy 5'),
  (1,22,10,'Pick 3 Mid-day'),
  (1,22,11,'Pick 3 Evening'),
  (1,22,12,'Pick 4 Mid-day'),
  (1,22,13,'Pick 4 Evening'),
  (1,22,5,'Lucky 4 Life')
 
--//-- MS 
--//-- MN 
--//-- MO 
--//-- MT
--//-- NE 
--//-- NH 
--//-- NJ 
--//-- NM 
--//-- NY 
--//-- NC
--//-- ND 
--//-- OH 
--//-- OK 
--//-- OR 
--//-- PA 
--//-- RI
--//-- SC
--//-- SD 
--//-- TN
--//-- TX
--//-- VT
--//-- VA
--//-- WA 
--//-- WV 
--//-- WI 
--//-- WY
