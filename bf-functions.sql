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

-- FORMAT THE NUMBER AS AND ROUND WITH TWO DECIMAL PLACES

SELECT FORMAT(71889.9617, 2);

-- INSERT THE STRING 'google' INTO FIRST STRING BY REPLACING THE FIRST 6 CHARACTERS

SELECT INSERT('yahooo.com', 1, 6, 'google');

-- SEARCH FOR "knows" IN STRING "He absolutely knows the city", AND RETURN POSITION

SELECT INSTR('He absolutely knows the city', 'knows');

-- CONVERT THE TEXT TO LOWERCASE

SELECT LCASE("WHEN WILL THEY START LEARNING");

SELECT LOWER('THE BIG BROWN BEAR EATS ALL THE HONEY');

-- SELECT 11 CHARACTERS FROM THE STRING STARTING FROM THE LEFT 

SELECT LEFT("The big man walks up the steep mountain", 11);

-- SELECT THE LENGTH OF THE STRING

SELECT LENGTH("What will happen when we start doing the right things?");

-- LOCATE 'z' IN THE STRING AND RETURN ITS POSITION

SELECT LOCATE('z', 'They went to the zoo yesterday');

-- LEFT PAD THE STRING WITH 'XXX' TO A TOTAL OF 40 CHARACTERS

SELECT LPAD('The big brown bear runs away', 40, 'XXX');

-- REMOVE LEADING SPACES FROM A STRING 

SELECT LTRIM('        The family is out for a picnic');

-- EXTRACT A SUBSTRING FROM A STRING (START AT POSITION 12, EXTRACT 15 CHARACTERS)

SELECT MID('The school presents a play that will blow your mind', 12, 15);
