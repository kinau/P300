// Load relationship from csv
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/kinau/P300/master/CompanyRelationship.csv"
  AS line
WITH line LIMIT 5
RETURN line.SourceCompanyName, line.CommunicationType, line.TargetCompanyName

// Load nodes from csv
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/kinau/P300/master/Company.csv"
  AS line
WITH line LIMIT 5
RETURN line
