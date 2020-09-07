CREATE DATABASE codegym;
USE codegym;



CREATE TABLE Category (
idCategory int primary key,
categoryName varchar(255)
);

CREATE TABLE Product (
id int primary key not null,
name varchar(255),
idCategory int,
FOREIGN KEY (idCategory) REFERENCES Category(idCategory)
);

INSERT INTO Category VALUES(1,'Apple');
INSERT INTO Product VALUES(1,'Iphone 6',1);
INSERT INTO Product VALUES(2,'Iphone 7',1);
INSERT INTO Product VALUES(3,'Iphone 8',1);
INSERT INTO Product VALUES(4,'Iphone 10',1);
INSERT INTO Product VALUES(5,'Iphone 11 Pro',1);
INSERT INTO Category VALUES(2,'Sam Sung');
INSERT INTO Product VALUES(6,'Note 5',2);
INSERT INTO Product VALUES(7,'Note 6',2);
INSERT INTO Product VALUES(8,'Note 10',2);

SELECT * FROM PRODUCT;
SELECT * FROM Category;

