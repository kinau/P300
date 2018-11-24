// Create companies
USING PERIODIC COMMIT
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/kinau/P300/master/Company.csv" AS row
CREATE (:Company {name: row.CompanyName, country: row.Country, companyType: row.CompanyType, target: row.Target, pointOfEntry: row.PointOfEntry});