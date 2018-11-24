// Create companies
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "https://github.com/kinau/P300/blob/master/Company.csv" AS row
CREATE (:Company {companyName: row.CompanyName, country: row.Country, companyType: row.CompanyType, target: row.Target, pointOfEntry: row.PointOfEntry});