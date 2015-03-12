DROP TABLE IF EXISTS shop_books ;
CREATE TABLE shop_books (id INT NOT NULL AUTO_INCREMENT , price FLOAT ,  
    PRIMARY KEY (id) );

DROP TABLE IF EXISTS shop_users;
CREATE TABLE shop_users (id INT NOT NULL AUTO_INCREMENT ,
    name VARCHAR(32),
    pass VARCHAR(128),
    email VARCHAR(64),
    role INT,
    PRIMARY KEY (id) );

DROP TABLE IF EXISTS shop_book2user;
CREATE TABLE shop_book2user (idBook INT , idUser INT , count INT);

DROP TABLE IF EXISTS shop_order2book;
CREATE TABLE shop_order2book (idOrder INT , idBook INT , count INT , price FLOAT);

DROP TABLE IF EXISTS shop_orders ;
CREATE TABLE shop_orders (id INT NOT NULL AUTO_INCREMENT ,
        idUser INT ,
        oderDate DATETIME,  
        PRIMARY KEY (id) );

DROP TABLE IF EXISTS shop_sale2user;
CREATE TABLE shop_sale2user (idUser INT , sale INT);


