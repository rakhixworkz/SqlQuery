CREATE DATABASE library ;
USE library;
CREATE TABLE BOOKS_details (
BOOK_id TINYINT,
BOOK_name varchar(20),
Author_name varchar(30),
Book_price float,
publish_year year,
Book_volume char(10),
primary key(Book_id));
SHOW TABLES ;
SELECT * FROM Books_details;
INSERT INTO BOOKS_details VALUE(1,'DBMS','Balguru Swami',495.00,'2005','v1');
INSERT INTO BOOKS_details VALUE(2,'Ds','ABC',595.00,'2005','v2');
INSERT INTO BOOKS_details VALUE(3,'Algorithm','ABCD',695.00,'2006','v3');
INSERT INTO BOOKS_details VALUE(4,'CN','ABCDE',500.00,'2006','v4');
INSERT INTO BOOKS_details VALUE(5,'CN','Abdul',600.00,'2006','v5'),(6,'DS','Bhagat',700.00,'2006','v5'),(7,'Coa','Abdul',700.00,'2007','v6'),(8,'CN','Abdul',600.00,'2006','v7');

SELECT distinct publish_year FROM Books_details;
ALTER table Books_details ADD COLUMN No_Of_Pages INT;
ALTER TABLE Books_details DROP COLUMN No_Of_Pages;
DROP DATABASE library;
TRUNCATE Books_details;
UPDATE Book_details SET Book_volume='v1' WHERE Book_id=4;
Delete From Book_details WHERE Book_id=2 AND Book_name='DS';
SELECT * FROM Books_details ORDER BY Book_price DESC LIMIt 4;
SELECT * FROM Books_details WHERE Book_price IN(495,595,500);
SELECT * FROM Books_details WHERE Book_price Between 500 AND 1000;
SELECT Book_price AS Book_amount FROM Books_details WHERE Book_amount>500;
SELECT B.Book_price AS Book_amount FROM Books_details B;


