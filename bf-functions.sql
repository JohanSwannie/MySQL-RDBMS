-- ***************************
-- *****    FUNCTIONS   ******
-- ***************************

CREATE DATABASE functions;

USE functions;

CREATE TABLE customers (
customerID	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(50),
contactName	VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
postalCode VARCHAR(30),
country VARCHAR(50)
);

INSERT INTO customers
(customerName, contactName, address, city, postalCode, country)
VALUES
('Alfreds Futterkiste',	'Maria Anders',	'Obere Str. 57', 'Berlin',	'12209', 'Germany'),
('Carla Trujillo Emparedados y helados',	'Carla Trujillo',	'Avda. de la Constitución 2222',	'México D.F.',	'05021', 'Mexico'),
('Zorro Moreno Taquería',	'Antonio Moreno', 'Mataderos 2312',	'México D.F.',	'05023', 'Mexico');

-- RETURN THE ASCII VALUE OF THE FIRST CHARACTER IN "CUSTOMERNAME"

SELECT ASCII(CustomerName) AS NumCodeOfFirstChar
FROM Customers;

-- RETURN THE LENGTH OF THE STRING OR A COLUMN NAME

SELECT CHAR_LENGTH("The man swim against the current of the big river") AS LengthOfString;

SELECT CHAR_LENGTH(customerName) 
AS length_of_customer_name
FROM customers;

-- RETURN THE LAST INDEX OF THE FIRST MENTIONED CHARACTER

SELECT FIELD("P", "W", "E", "P");

-- RETURN THE OCCURENCE IN THE SET OF THE VALUE "W"

SELECT FIND_IN_SET("w", "f,g,a,m,o,w,8,q,i");
