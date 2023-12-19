-- ******************************
-- ****   TEMPORARY TABLES   ****
-- ******************************

CREATE DATABASE temporary_tables;

USE temporary_tables;

CREATE TABLE customers (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
customerNumber INT,
creditLimit DEC(10,2)
);

INSERT INTO customers 
(customerNumber, creditLimit)
VALUES
(12947139, 13500.00),
(12947152, 10000.00),
(12947192, 5000.00);

select * from customers;

CREATE TEMPORARY TABLE credits (
customerNumber INT, 
  creditLimit DEC(10, 2)
);

INSERT INTO credits
(customerNumber, creditLimit)
SELECT 
  customerNumber, 
  creditLimit 
FROM 
  customers 
WHERE 
  creditLimit > 0;
  
select * from credits;

DROP TEMPORARY TABLE credits;
