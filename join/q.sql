
/**

в таблице А будут имена в B цены и обеденить по id
и имен будет больше
*/

DROP TABLE IF EXISTS A ;
 DROP TABLE IF EXISTS B ;

CREATE TABLE IF NOT EXISTS A  (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(32),
  PRIMARY KEY (id)
);


INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );
INSERT INTO A ( name) VALUES ( md5(RAND()) );




CREATE TABLE IF NOT EXISTS B  (
  id INT NOT NULL AUTO_INCREMENT,
  price FLOAT,
  PRIMARY KEY (id)
);

INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );
INSERT INTO B ( id, price ) VALUES (20,RAND() * 1000 );
INSERT INTO B ( price ) VALUES (RAND() * 1000 );


SELECT * FROM A  JOIN B USING(id);
SELECT * FROM A  INNER JOIN B USING(id);
SELECT * FROM A  RIGHT JOIN B USING(id);
SELECT * FROM A  LEFT JOIN B USING(id);



/*
 DROP TABLE IF EXISTS A ;
 DROP TABLE IF EXISTS B ;
 */


