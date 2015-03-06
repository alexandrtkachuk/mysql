DROP TABLE IF EXISTS task3_TABLE_A ;
DROP TABLE IF EXISTS task3_TABLE_B ;

CREATE TABLE task3_TABLE_A (id INT, name VARCHAR(255));
CREATE TABLE task3_TABLE_B (id INT, name VARCHAR(255));

INSERT INTO task3_TABLE_A   (id, name) VALUE(1 ,'Pirate' );
INSERT INTO task3_TABLE_A   (id, name) VALUE(2 ,'Monkey' );
INSERT INTO task3_TABLE_A   (id, name) VALUE(3 ,'Ninja' );
INSERT INTO task3_TABLE_A   (id, name) VALUE(4 ,'Spaghetti' );


INSERT INTO task3_TABLE_B   (id, name) VALUE(1 ,'Rutabaga' );
INSERT INTO task3_TABLE_B   (id, name) VALUE(2 ,'Pirate' );
INSERT INTO task3_TABLE_B   (id, name) VALUE(3 ,'Darth Vader');
INSERT INTO task3_TABLE_B   (id, name) VALUE(4 ,'Ninja' );



SELECT * FROM task3_TABLE_A
INNER JOIN task3_TABLE_B
ON task3_TABLE_A.name = task3_TABLE_B.name;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A
INNER JOIN task3_TABLE_B
ON task3_TABLE_A.name = task3_TABLE_B.name;


SELECT * FROM task3_TABLE_A LEFT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name
UNION 
SELECT * FROM task3_TABLE_A RIGHT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A LEFT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name
UNION 
SELECT * FROM task3_TABLE_A RIGHT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name;


SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B
ON A.name = B.name;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain  SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B
ON A.name = B.name;

SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE A.id IS null
UNION
SELECT * FROM task3_TABLE_A A
RIGHT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE A.id IS null
UNION
SELECT * FROM task3_TABLE_A A
RIGHT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

ALTER TABLE task3_TABLE_A ADD INDEX  (id);
ALTER TABLE task3_TABLE_A ADD INDEX  (name);

ALTER TABLE task3_TABLE_B ADD INDEX  (id);
ALTER TABLE task3_TABLE_B ADD INDEX  (name);

SELECT * FROM task3_TABLE_A
INNER JOIN task3_TABLE_B
ON task3_TABLE_A.name = task3_TABLE_B.name;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A
INNER JOIN task3_TABLE_B
ON task3_TABLE_A.name = task3_TABLE_B.name;


SELECT * FROM task3_TABLE_A LEFT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name
UNION 
SELECT * FROM task3_TABLE_A RIGHT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A LEFT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name
UNION 
SELECT * FROM task3_TABLE_A RIGHT JOIN task3_TABLE_B 
ON  task3_TABLE_A.name = task3_TABLE_B.name;


SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B
ON A.name = B.name;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain  SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B
ON A.name = B.name;

SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE A.id IS null
UNION
SELECT * FROM task3_TABLE_A A
RIGHT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;

SHOW SESSION STATUS LIKE 'Last_query_cost';

explain SELECT * FROM task3_TABLE_A A
LEFT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE A.id IS null
UNION
SELECT * FROM task3_TABLE_A A
RIGHT OUTER JOIN task3_TABLE_B B 
ON A.name = B.name
WHERE B.id IS null;
