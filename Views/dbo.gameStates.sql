USE Lottery;
GO

DROP VIEW IF EXISTS dbo.gameStates;
GO

CREATE VIEW dbo.gameStates
AS
SELECT
  game_states.[state],
  games.[name]
FROM dbo.game_states
INNER JOIN dbo.games
  ON game_states.gameID = games.id
