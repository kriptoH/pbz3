// 1
MATCH (p:laptop)
  WHERE p.name = 'MSI'
RETURN p;

// 2
MATCH (laptop)-[:LIKE]->(GAME)
  WHERE laptop.name = 'Lenovo'
RETURN GAME;

// 3
MATCH (laptop)-[l:LIKE]->(GAME)
  WHERE GAME.name = 'THE WITCHER' AND l.rating > 0
RETURN laptop.name;

// 4
MATCH (laptop2)-[:BE_COMPATIBLE]->(laptop)-[l:LIKE]->(NEEDFORSPEED:GUN)
  WHERE NEEDFORSPEED.name = 'NEED FOR SPEED' AND l.rating > 8
RETURN laptop2.name;

// 5
MATCH (laptop2)-[:BE_COMPATIBLE]->(laptop)-[l:LIKE]->(game:GAME)
  WHERE laptop2.name = 'MSI' AND l.rating > 6
  AND NOT (laptop2)-[:LIKE]->(game:GAME)
RETURN game;


// 6
MATCH (msi:laptop)-[:BE_COMPATIBLE]->(relation:laptop)
RETURN relation;

// 7
MATCH ()-[l:LIKE]->(game:GAME)
  WHERE l.rating = 8
RETURN game;

// 8
MATCH (laptop)-[l:LIKE]->(GAME)
  WHERE laptop.name = 'Lenovo' AND l.rating > 0
RETURN GAME;

// 9
MATCH (laptop)-[l:LIKE]->(GAME)
  WHERE GAME.name = 'NEED FOR SPEED' AND l.rating > 0
RETURN laptop;

// 10
MATCH ()-[l:LIKE]->(game:GAME)
  WHERE l.rating < 0
RETURN game.name, l.rating;