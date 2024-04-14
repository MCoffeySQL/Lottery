SELECT 
  'INSERT INTO dbo.games(' +
  'isActive,' + 
  '[name],' + 
  '[match],' +
  'minPosition,' +
  'maxPosition,' +
  'maxBonus,' +
  'maxMultiplier,' +
  'shortDescription)' +
  'VALUES'
UNION ALL
SELECT 
  '(' +
  '''1'',' +
  '''' + [name] + ''',' +
  ISNULL(CAST([match] AS VARCHAR),'NULL') + ',' +
  ISNULL(CAST(minPosition AS VARCHAR),'NULL') + ',' +
  ISNULL(CAST(maxPosition AS VARCHAR),'NULL') + ',' +
  ISNULL(CAST(maxBonus AS VARCHAR),'NULL') + ',' +
  ISNULL(CAST(maxMultiplier AS VARCHAR),'NULL') + ',' +
  'NULL' + 
  '),'
FROM dbo.games

