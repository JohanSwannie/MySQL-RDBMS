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

CREATE TABLE PRODUCTS (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR(75),
price DECIMAL(10,2)
);

INSERT INTO products 
(productName, price)
VALUES
('Lawnmower A18716', 378.55),
('Lawnmower A18329', 415.35),
('Lawnmower A18414', 625.50),
('Lawnmower A18455', 565.00),
('Lawnmower A18388', 725.95);

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

-- SELECT FOR 'K' IN STRING 'They switched on the kettle for a nice cup of coffee'

SELECT POSITION("k" IN "They switched on the kettle for a nice cup of coffee");

-- REPEAT A STRING 4 TIMES 

SELECT REPEAT('The school will start at 8.30AM - ', 4);

-- REPLACE PORTION OF A STRING WITH NEW SPECIFIED VALUE

SELECT REPLACE("Hamilton High School", "High", "Primary");

-- REVERSE A STRING 

SELECT REVERSE("He knew about the library books");

-- EXTRACT 5 CHARACTERS FROM THE STRING START AT THE RIGHT HAND SIDE

SELECT RIGHT('The man drives the car down the hill', 5);

-- RIGHT PAD THE CHARACTERS 'XXX' TIMES AFTER STRING 'Happy new year' TO A TOTAL OF 25 CHARACTERS

SELECT RPAD('Happy new year', 25 , 'XXX');

-- REMOVE TRAILING SPACES FROM A STRING

SELECT RTRIM('We are so happy about the outcome         ');

-- RETURNS THE GIVEN NUMBER OF BLANK SPACES

select space(10);

-- COMPARE 2 STRINGS - IF EQUAL RETURNS 0 ELSE RETURN -1 ---> Not case sensitive

SELECT STRCMP('Hello to EVeryone', 'hello to everyone');

-- EXTRACT A SUBSTRING, STARTING AT POSITION 13 FOR 18 CHARACTERS LONG

SELECT SUBSTR('The longest train in the world is 345 meters in length', 13, 18);

SELECT SUBSTRING('The longest train in the world is 345 meters in length', 13, 18);

-- RETURN A SUBSTRING OF A STRING BEFORE A SPECIFIED NUMBER OF DELIMITER OCCURS

SELECT SUBSTRING_INDEX('www.thebesttools.ever.tobeused.forallkindsof.trades.com', '.', 3);

-- REMOVE LEADING AND TRAILING SPACES FROM A STRING

SELECT TRIM('      They want to go to the zoo tomorrow        ');

-- CONVERT STRING TO UPPERCASE
 
 SELECT UCASE('The pink elephant crosses the street');
 
 SELECT UPPER('The pink elephant crosses the street');
 
  -- RETURN THE ABSOLUTE VALUE OF A NUMBER
 
 SELECT ABS(-1129.55);

-- RETURN THE AVERAGE PRIVE FROM THE PRODUCTS TABLE

SELECT ROUND(AVG(price), 2) as Average_Price from products;

-- RETURN THE SMALLEST INTEGER VALUE THAT IS GREATER THAN OR EQUAL TO THE NUMBER SUPPLIED

SELECT CEIL(38.27) AS number;

SELECT CEILING(100.55) AS number;

-- RETURN A COUNT AS THE AMOUNT OF OCCURENCES FOR A COLUMN

SELECT COUNT(productName) AS NumberOfProducts FROM products;

-- DIVIDE AN AMOUNT BY ANOTHER AMOUNT

SELECT 18 div 2;

-- RETURN E RAISED TO THE POWER OF 1 WHERE E IS (2.718281...), IS THE BASE OF NATURAL LOGARITHMS

SELECT EXP(2);

-- RETURN THE LARGEST INTEGER VALUE THAT IS LESS THAN OR EQUAL TO THE SPECIFIED NUMBER

SELECT FLOOR(51.88);

-- RETURN THE GREATEST VALUE OF THE LIST OF ARGUMENTS

SELECT GREATEST(15, 91, 34, 7, 98, 18);

-- RETURN THE SMALLEST VALUE OF THE LIST OF ARGUMENTS

SELECT LEAST(28, 90, 4, 27, 33, 10);

-- FIND THE PRICE OF THE MOST EXPENSIVE PRODUCT IN THE "PRODUCTS" TABLE

SELECT MAX(price) AS MAX_PRICE FROM products;

-- FIND THE PRICE OF THE MOST LEAST PRODUCT IN THE "PRODUCTS" TABLE

SELECT MIN(price) AS MIN_PRICE FROM products;

-- Return the remainder of 29 DIVIDED BY 8

SELECT MOD(29, 8);

-- RETURN 14 RAISED TO THE POWER OF 3 AS WELL AS 9 RAISED TO THE POWER OF 2

SELECT POW(14, 3);

SELECT POWER(9, 2);

-- RETURN A RANDOM NUMBER BETWEEN 0 AND 10

SELECT RAND() * 10;

-- ROUND A NUMBER TO 2 DECOMAL PLACES

SELECT ROUND(7128.2569, 2);

-- RETURN THE SQUARE ROOT OF A NUMBER

SELECT SQRT(144);




