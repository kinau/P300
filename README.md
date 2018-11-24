*Load csv to Neo4j Sandbox*
1. Launch your Neo4j Sandbox
2. Create nodes by copying and pasting the content of ImportNodeFromCsv.cyp into the online editor and run it. It should create all 76 nodes.
3. Create relationships by copying and pasting the content of ImportRelationshipFromCsv.cyp into the online editor and run it. It should create 197 relationship. NOTE: It may contains data entry errors in the csv that some connection is not created. Need verification. 
4. Write query to find shortest paths. Some sample

// Find targets attackable from source
MATCH (c1:Company {pointOfEntry:'Yes'})-[:CONNECT]->(c2:Company {target:'Yes'}) RETURN c2

// Same as above query, but it has both source and targets
MATCH (c1:Company {pointOfEntry:'Yes'})-[:CONNECT]->(c2:Company {target:'Yes'}) RETURN c1, c2

// Shortest path that requires 4 recon
MATCH (c1:Company), (c2:Company)
WHERE c1.pointOfEntry = 'Yes' AND c2.target = 'Yes'
MATCH p = shortestPath((c1)-[*..4]-(c2))
return p;