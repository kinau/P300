// Create connections
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/kinau/P300/master/CompanyRelationship.csv" AS row
MATCH (c1:Company {name: row.SourceCompanyName})
MATCH (c2:Company {name: row.TargetCompanyName})
MERGE (c1)-[ct:CONNECT]->(c2)
ON CREATE SET ct.method=row.CommunicationType, ct.name=c1.name+'<->'+c2.name;