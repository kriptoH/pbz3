CREATE(msi:laptop {name: 'MSI', CPU: 'Intel Core i7'});

MATCH(p:laptop)
  WHERE p.name = 'MSI'
CREATE(p)-[:productivity {rating: 10}]->(THEWITCHER:GAME {name: 'THE WITCHER', size: '1 GB'});


MATCH(msi:laptop)
  WHERE rus.name = 'MSI'
CREATE(msi)-[:LIKE {rating: 9}]->(NEEDFORSPEED:GAME {name: 'NEED FOR SPEED', size: '3 GB'});


MATCH(msi:laptop)
  WHERE msi.name = 'MSI'
CREATE(msi)-[:productivity {rating: 5}]->(GTA5:GAME {name: 'GTA 5', size: '70 GB'});

MATCH(msi:laptop)
  WHERE msi.name = 'MSI'
CREATE(msi)-[:productivity {rating: 7}]->(DOTA2:GAME {name: 'DOTA 2', size: '30 GB'});

MATCH(msi:laptop)
  WHERE msi.name = 'MSI'
CREATE(msi)-[:productivity {rating: 6}]->(CIVILIZATION6:GAME {name: 'CIVILIZATION 6', size: '20 GB'});

MATCH (THEWITCHER:GAME)
  WHERE THEWITCHER.name = 'THE WITCHER'
CREATE(lenovo:laptop {name: 'laptop', CPU: 'Intel Core i3'})-[:productivity {rating: 5}]->(THEWITCHER);

MATCH(lenovo:laptop), (NEEDFORSPEED:GAME)
  WHERE lenovo.name = 'lenovo' AND NEEDFORSPEED.name = 'NEED FOR SPEED'
CREATE(lenovo)-[:productivity {rating: 3}]->(NEEDFORSPEED);

MATCH(lenovo:laptop)
  WHERE lenovo.name = 'lenovo'
CREATE(lenovo)-[:productivity {rating: -7}]->(CSGO:GUN {name: 'CS GO', size: '15 GB'});

MATCH(lenovo:laptop), (CIVILIZATION6:GAME)
  WHERE lenovo.name = 'lenovo' AND CIVILIZATION6.name = 'CIVILIZATION 6'
CREATE(lenovo)-[:productivity {rating: -3}]->(CIVILIZATION6);

CREATE(asus:laptop {name: 'asus', CPU: 'Intel Core i5'});

MATCH(asus:laptop), (NEEDFORSPEED:GAME)
  WHERE asus.name = 'Asus' AND NEEDFORSPEED.name = 'NEED FOR SPEED'
CREATE(asus)-[:LIKE {rating: 5}]->(NEEDFORSPEED);

MATCH(asus:laptop), (THEWITCHER:GAME)
  WHERE asus.name = 'Asus' AND THEWITCHER.name = 'THE WITCHER'
CREATE(asus)-[:LIKE {rating: 10}]->(THEWITCHER);

CREATE(asus)-[:LIKE {rating: 3}]->(WORLDOFTANKS:GUN {name: 'WORLD OF TANKS', size: '50 GB'});

MATCH(msi:laptop), (lenovo:laptop)
  WHERE msi.name = 'MSI' AND lenovo.name = 'Lenovo'
CREATE(msi)-[:BE_COMPATIBLE]->(lenovo);

MATCH(msi:laptop), (lenovo:laptop)
  WHERE msi.name = 'MSI' AND lenovo.name = 'Lenovo'
CREATE(msi)<-[:BE_COMPATIBLE]-(lenovo);

MATCH(asus:laptop), (lenovo:laptop)
  WHERE asus.name = 'ASUS' AND lenovo.name = 'Lenovo'
CREATE(asus)<-[:BE_COMPATIBLE]-(lenovo);

MATCH(asus:laptop), (lenovo:laptop)
  WHERE asus.name = 'ASUS' AND lenovo.name = 'Lenovo'
CREATE(asus)-[:BE_COMPATIBLE]->(lenovo);

MATCH(n)
DETACH
DELETE n;



