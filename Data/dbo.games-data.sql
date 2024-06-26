USE Lottery;
GO

DELETE
FROM dbo.games;

TRUNCATE TABLE dbo.games;

INSERT INTO dbo.games(
  isActive,
  [name],
  [match],
  minPosition,
  maxPosition,
  maxBonus,
  maxMultiplier,
  shortDescription)
VALUES
('1','PowerBall',5,1,69,26,NULL,NULL),
('1','Mega Millions',5,1,70,25,NULL,NULL),
('1','Lotto America',5,1,52,10,NULL,NULL),
('1','PowerBall Bonus Play',5,1,69,26,NULL,NULL),
('1','Lucky for Life',5,1,48,18,NULL,NULL),
('1','2 by 2',4,1,26,NULL,NULL,NULL),
('1','Cash 4 Life',5,1,60,4,NULL,NULL),
('1','Megabucks',5,1,41,NULL,NULL,NULL),
('1','Gimme 5',5,1,39,NULL,NULL,NULL),
('1','Pick 3 Mid-Day',3,0,9,NULL,NULL,NULL),
('1','Pick 3 Evening',3,0,9,NULL,NULL,NULL),
('1','Pick 4 Mid-Day',4,0,9,NULL,NULL,NULL),
('1','Pick 4 Evening',4,0,9,NULL,NULL,NULL),
('1','Lotto 47',6,1,47,NULL,NULL,NULL),
('1','Fantasy 5',5,1,39,NULL,NULL,NULL),
('1','Big Sky Bonus',4,1,31,16,NULL,NULL),
('1','Match 5',5,1,39,39,NULL,NULL),
('1','Multi Match',6,1,43,NULL,NULL,NULL),
('1','Montana Cash',5,1,45,NULL,NULL,NULL),
('1','Cowboy Draw',5,1,45,NULL,NULL,NULL),
('1','Bank a Million',6,1,40,34,NULL,NULL),
('1','Cash 5',5,1,41,NULL,NULL,NULL),
('1','The Pick',6,1,44,NULL,NULL,NULL),
('1','Pick 3',3,0,9,NULL,NULL,NULL),
('1','Triple Twst',6,1,42,NULL,NULL,NULL),
('1','Natural State',5,1,39,NULL,NULL,NULL),
('1','Cash 3 Mid-Day',3,0,9,NULL,NULL,NULL),
('1','Cash 3 Evening',3,0,9,NULL,NULL,NULL),
('1','Cash 4 Mid-Day',4,0,9,NULL,NULL,NULL),
('1','Cash 4 Evening',4,0,9,NULL,NULL,NULL),
('1','SuperLotto',5,1,47,27,NULL,NULL),
('1','Pick 4',4,0,9,NULL,NULL,NULL),
('1','Lotto',6,1,40,NULL,NULL,NULL),
('1','Play 3 Mid-Day',3,0,9,9,NULL,NULL),
('1','Play 3 Evening',3,0,9,9,NULL,NULL),
('1','Play 4 Mid-Day',4,0,9,9,NULL,NULL),
('1','Play 4 Evening',4,0,9,9,NULL,NULL),
('1','Lucky Links Mid-Day',8,0,NULL,NULL,NULL,NULL),
('1','Lucky Links Evening',8,0,NULL,NULL,NULL,NULL),
('1','Multi-Win Lotto',6,1,35,NULL,NULL,NULL),
('1','Pick 2 Mid-Day',2,0,9,NULL,NULL,NULL),
('1','Pick 2 Evening',2,0,9,NULL,NULL,NULL),
('1','Pick 5 Mid-Day',5,0,9,NULL,NULL,NULL),
('1','Pick 5 Evening',5,0,9,NULL,NULL,NULL),
('1','Lotto Double Play',6,1,53,NULL,NULL,NULL),
('1','Triple Play',6,1,46,NULL,NULL,NULL),
('1','Pick 3 Night',3,0,9,NULL,NULL,NULL),
('1','Pick 4 Night',4,0,9,NULL,NULL,NULL),
('1','Five Mid-Day',5,0,9,NULL,NULL,NULL),
('1','Five Evening',5,0,9,NULL,NULL,NULL),
('1','Jumbo Bucks',6,1,47,NULL,NULL,NULL),
('1','Cash',5,0,45,NULL,NULL,NULL),
('1','5 Star Draw',5,1,45,NULL,NULL,NULL),
('1','Weekly Grand',5,1,32,NULL,NULL,NULL),
('1','Lucky Day Lotto Mid-Day',5,1,45,NULL,NULL,NULL),
('1','Lucky Day Lotto Evening',5,1,45,NULL,NULL,NULL),
('1','Hoosier Lotto',6,1,46,NULL,NULL,NULL),
('1','Hoosier Lotto Plus',6,1,46,NULL,NULL,NULL),
('1','Lucky 7',7,1,NULL,NULL,NULL,NULL),
('1','Lotto Million 1',6,1,50,NULL,NULL,NULL),
('1','Lotto Million 2',6,1,50,NULL,NULL,NULL),
('1','Lotto Plus',6,1,40,NULL,NULL,NULL),
('1','Cash Ball',4,1,35,25,NULL,NULL),
('1','5 Card Cash',NULL,NULL,NULL,NULL,NULL,NULL),
('1','Easy 5',5,1,37,NULL,NULL,NULL),
('1','Pick 5',5,0,9,NULL,NULL,NULL),
('1','Numbers Mid-Day',4,0,9,NULL,NULL,NULL),
('1','Numbers Evening',4,0,9,NULL,NULL,NULL),
('1','Cash 3',3,0,9,NULL,NULL,NULL),
('1','Cash 4',4,0,9,NULL,NULL,NULL),
('1','Daily 3',3,0,9,NULL,NULL,NULL),
('1','Northstar Cash',5,1,31,NULL,NULL,NULL),
('1','Gopher 5',5,1,47,NULL,NULL,NULL),
('1','Show Me Cash',5,1,39,NULL,NULL,NULL),
('1','no',3,0,9,NULL,NULL,NULL),
('1','MyDay',3,NULL,NULL,NULL,NULL,NULL),
('1','Pick 6',6,1,49,NULL,NULL,NULL),
('1','Roadrunner Cash',5,1,37,NULL,NULL,NULL),
('1','Win 4 Mid-Day',4,0,9,NULL,NULL,NULL),
('1','Win 4 Evening',4,0,9,NULL,NULL,NULL),
('1','Take 5 Mid-Day',5,1,39,NULL,NULL,NULL),
('1','Take 5 Evening',5,1,39,NULL,NULL,NULL),
('1','Pick 10',10,1,80,NULL,NULL,NULL),
('1','Cash 5 Double Play',5,1,41,NULL,NULL,NULL),
('1','Rolling Cash 5',5,1,39,NULL,NULL,NULL),
('1','Win for Life',4,1,77,NULL,NULL,NULL),
('1','Lucky Lines 7',8,1,32,NULL,NULL,NULL),
('1','Pick 4 Early-Day',4,0,9,NULL,NULL,NULL),
('1','Pick 4 Late-Day',4,0,9,NULL,NULL,NULL),
('1','Treasure Hunt',5,1,30,NULL,NULL,NULL),
('1','Wild Money',5,1,35,35,NULL,NULL),
('1','Palmetto Cash 5',5,1,38,9,NULL,NULL),
('1','Cash 3 Early',3,0,9,9,NULL,NULL),
('1','Cash 4 Early',4,0,9,9,NULL,NULL),
('1','Two Step',4,1,35,35,NULL,NULL),
('1','All or Nothing Early',12,1,24,NULL,NULL,NULL),
('1','All or Nothing Mid-Day',12,1,24,NULL,NULL,NULL),
('1','All or Nothing Late-Day',12,1,24,NULL,NULL,NULL),
('1','All or Nothing Evening',12,1,24,NULL,NULL,NULL),
('1','Pick 3 Early',3,0,9,NULL,NULL,NULL),
('1','Pick 3 Late-Day',3,0,9,NULL,NULL,NULL),
('1','Pick 4 Early',4,0,9,NULL,NULL,NULL),
('1','Hit 5',5,1,42,NULL,NULL,NULL),
('1','Match 4',4,1,24,NULL,NULL,NULL),
('1','Cash 25',6,1,25,NULL,NULL,NULL),
('1','Daily 4',4,0,9,NULL,NULL,NULL),
('1','Super Cash',6,1,39,NULL,NULL,NULL),
('1','Badger 5',5,1,31,NULL,NULL,NULL),
('1','Quick Draw Evening',10,1,80,NULL,NULL,NULL),
('1','Quick Draw Mid-Day',10,1,80,NULL,NULL,NULL),
('1','Lucky Lines 8',7,NULL,NULL,NULL,NULL,NULL),'),