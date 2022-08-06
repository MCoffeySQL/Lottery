--test position
EXEC dbo.bp_insert
  @isActive = 9,
  @idPatient = 'pat35700',
  @dateBP = '1/1/2022',
  @position = 'The Bart',  --position is invalid
  @systolic = 1,
  @diastolic = 1,
  @pulse = 1
GO