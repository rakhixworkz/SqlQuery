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
INSERT INTO Books_details VALUE(9,'To kill a MOckingbird','Harper Lee',800.00,'2007','v8');


SELECT distinct publish_year FROM Books_details;
ALTER table Books_details ADD COLUMN No_Of_Pages INT;
ALTER TABLE Books_details DROP COLUMN No_Of_Pages;
DROP DATABASE library;
TRUNCATE Books_details;
UPDATE Books_details SET Book_volume='v1' WHERE Book_id=4;
Delete From Books_details WHERE Book_id=2 AND Book_name='DS';
SELECT * FROM Books_details ORDER BY Book_price DESC LIMIt 4;
SELECT * FROM Books_details WHERE Book_price IN(495,595,500);
SELECT * FROM Books_details WHERE Book_price Between 500 AND 1000;
SELECT Book_price AS Book_amount FROM Books_details WHERE Book_amount>500;
SELECT B.Book_price AS Book_amount FROM Books_details B;
SELECT * FROM Books_details WHERE Book_name LIKE '%Swami';
SELECT * FROM Books_details WHERE  Book_name LIKE 'THE%';
SELECT * FROM Books_details WHERE  Book_name LIKE '%of%';
SELECT * FROM Books_details WHERE  Book_name LIKE '_h%';
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
SELECT DATE(NOW());
SELECT TIME(NOW());
SELECT DAYOFMONTH(NOW);
SELECT MONTH(NOW());
SELECT YEAR(NOW());
SELECT WEEK(NOW());
SELECT DAYNAME(NOW());
SELECT DAYOFWEEK(NOW());
SELECT DAYOFYEAR(NOW());
SELECT DAYOFMONTH('2021-11-10 10:56:01') AS Extracted_Day;
SELECT MONTH('2021-11-10 10:56:01') AS Extracted_Month;
SELECT Year('2021-11-10 10:56:01') AS Extracted_Year;
SELECT WEEK('2021-11-10 10:56:01') AS Extracted_Week;
SELECT DATE('2021-11-10 10:56:01') AS Extracted_DATE;
SELECT TIME('2021-11-10 10:56:01') AS Extracted_Time;
SELECT MAX(Book_price) FROM Books_details;
SELECT MIN(Book_price) Price FROM Books_details;
SELECT AVG(Book_price) AS Price FROM Books_details;
SELECT SUM(Book_id) FROM Books_details;
SELECT COUNT(*) ID FROM Books_details;
SELECT COUNT(Book_name) from Books_details
group by Author_name;
-- Get the number of books published in each year after 2005 from Books details table
SELECT Publish_year,count(Book_name) FROM Books_details WHERE Publish_year>2005 GROUP BY Publish_year;
-- Get the number of copies of each book from book detail table
SELECT Book_name,count(Book_name) AS No_of_Copies_of_Book FROM Books_details GROUP BY Book_name;
-- Get the highest cost of the book published in each year
SELECT Publish_year,MAX(Book_price) AS Highest_cost_of_Book FROM Books_details GROUP BY Publish_year;
-- Get the lowest cost of the book published in each year
SELECT Publish_year,MIN(Book_price) AS lowest_cost_of_Book FROM Books_details GROUP BY Publish_year;
-- Get the Number of books written by  each author in each year from your table
SELECT Author_name,Publish_year,count(Book_name) AS No_of_books_written_by_each_author FROM Books_details GROUP BY Author_name,Publish_year;
-- Get the total sum of the book price in each year sort by year in ascending order from your book detail table
SELECT Publish_year,SUM(Book_price) AS Total_Sum_of_Book FROM Books_details GROUP BY Publish_year ORDER BY Publish_year;
-- Get the total sum of the book price in each year from your book detail table which sum is having more than 2000.
SELECT Publish_year,SUM(Book_price) AS Total_Sum_of_Book FROM Books_details GROUP BY Publish_year HAVING Total_Sum_of_Book>2000;
-- GEt the number of books by volume from book detail table which number of books having more than 2
SELECT Book_volume,count(Book_name) AS No_of_books_in_volume FROM Books_details GROUP BY Book_volume HAVING No_of_books_in_volume>1;
SELECT Book_volume,count(Book_name) AS No_of_books_in_volume FROM Books_details GROUP BY Book_volume HAVING No_of_books_in_volume>1;
-- ROLLBACK can only be used with DML commands(INSERT,UPDATE,DELETE)
SET AUTOCOMMIT=0;
DELETE FROM Books_details WHERE BOOK_id=8;
ROLLBACK;
DELETE FROM Books_details WHERE BOOK_id=7;
SAVEPOINT T1;
DELETE FROM Books_details WHERE BOOK_id=8;
SAVEPOINT T2;
ROLLBACK;









CREATE DATABASE Employee;
USE Employee;
CREATE TABLE Employee_details(
Employee_id Tinyint,
Employee_name varchar(20),
Employee_salary int(20),
Employee_addrs varchar(30),
Employeee_phno varchar(10),
PRIMARY KEY(Employee_id));
SELECT * FROM Employee_details;













