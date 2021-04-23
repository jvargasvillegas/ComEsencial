CREATE TABLE AppConfiguration (
  ConfigurationId  UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
  AverageHourCost INT NOT NULL,
  MinimalHourCost INT NOT NULL,
  HigherHourCost INT NOT NULL,
  FacebookId NVARCHAR(2500)
)

