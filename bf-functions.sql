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

-- RETURN THE SUM OF THE PRICE COLUMN FOR ALL PRODUCTS IN THE 'products' TABLE

SELECT SUM(price) as Total_Price from products;

-- RETURN A NUMBER TRUNCATED TO 2 DECIMAL PLACES

SELECT TRUNCATE(6733.91537, 2);

-- MULTIPLY NUMBERS - DIVIDE NUMBER - ADD NUMBERS - SUBTRACT NUMBERS

SELECT 7 * 35;
SELECT 81 / 9;
SELECT 93 + 118;
SELECT 81 - 14;

-- ADD 27 DAYS TO A DATE AND RETURN THE DATE

SELECT ADDDATE('2023-12-10', INTERVAL 27 DAY);

-- ADD 27 MINUTES TO A DATE AND RETURN THE DATE

SELECT ADDDATE("2023-12-20 11:44:26", INTERVAL 27 MINUTE);

-- SUBTRACT 5 HOURS FROM A DATE AND RETURN THE DATE

SELECT ADDDATE("2023-12-21 15:21:07", INTERVAL - 5 HOUR);

-- RETURN THE CURRENT DATE - RETURN THE NEXT DATE

SELECT CURDATE();

SELECT CURRENT_DATE();

SELECT CURDATE() + 1;

-- RETURN THE CURRENT TIME

SELECT CURTIME();

SELECT CURRENT_TIME();

-- RETURN THE CURRENT TIMESTAMP

SELECT CURRENT_TIMESTAMP();

-- EXTRACT DATE PART

SELECT DATE('2023-12-22') AS todays_date;

-- RETURN THE NUMBER OF DAYS BETWEEN 2 DATES

SELECT DATEDIFF("2023-12-22", "2022-11-21");

-- ADD A NUMBER OF DAYS TOA DATE

SELECT DATE_ADD("2023-12-01", INTERVAL 10 DAY);  

-- RETURN THE DATE FORMAT SPECIFIED

SELECT DATE_FORMAT("2023-12-18", "%a");  # Abbreviated weekday name (Sun to Sat)
SELECT DATE_FORMAT("2023-12-18", "%b");  # Abbreviated month name (Jan to Dec)
SELECT DATE_FORMAT("2023-12-18", "%c");  # Numeric month name (0 to 12)
SELECT DATE_FORMAT("2023-12-18", "%d");  # Day of the month as a numeric value (01 to 31)
SELECT DATE_FORMAT("2023-12-18", "%D");  # Day of the month as a numeric value, followed by suffix (1st, 2nd, 3rd, ...)
SELECT DATE_FORMAT("2023-12-18", "%e");  # Day of the month as a numeric value (0 to 31)
SELECT DATE_FORMAT("2023-12-18", "%f");  # Microseconds (000000 to 999999)
SELECT DATE_FORMAT("2023-12-18", "%h");  # Hour (00 to 12)
SELECT DATE_FORMAT("2023-12-18", "%H");  # Hour (00 to 23)
SELECT DATE_FORMAT("2023-12-18", "%i");  # Minutes (00 to 59)
SELECT DATE_FORMAT("2023-12-18", "%I");  # Hour (00 to 12)
SELECT DATE_FORMAT("2023-12-18", "%j");  # Day of the year (001 to 366)
SELECT DATE_FORMAT("2023-12-18", "%k");  # Hour (0 to 23)
SELECT DATE_FORMAT("2023-12-18", "%l");  # Hour (1 to 12)
SELECT DATE_FORMAT("2023-12-18", "%m");  # Month name as a numeric value (00 to 12)
SELECT DATE_FORMAT("2023-12-18", "%M");  # Month name in full (January to December)
SELECT DATE_FORMAT("2023-12-18", "%p");  # AM or PM
SELECT DATE_FORMAT("2023-12-18", "%r");  # Time in 12 hour AM or PM format (hh:mm:ss AM/PM)
SELECT DATE_FORMAT("2023-12-18", "%s");  # Seconds (00 to 59)
SELECT DATE_FORMAT("2023-12-18", "%S");  # Seconds (00 to 59)
SELECT DATE_FORMAT("2023-12-18", "%T");  # Time in 24 hour format (hh:mm:ss)
SELECT DATE_FORMAT("2023-12-18", "%u");  # Week where Monday is the first day of the week (00 to 53)
SELECT DATE_FORMAT("2023-12-18", "%U");  # Week where Sunday is the first day of the week (00 to 53)
SELECT DATE_FORMAT("2023-12-18", "%v");  # Week where Monday is the first day of the week (01 to 53). Used with %x
SELECT DATE_FORMAT("2023-12-18", "%V");  # Week where Sunday is the first day of the week (01 to 53). Used with %X
SELECT DATE_FORMAT("2023-12-18", "%w");  # Day of the week where Sunday=0 and Saturday=6
SELECT DATE_FORMAT("2023-12-18", "%W");  # Weekday name in full (Sunday to Saturday)
SELECT DATE_FORMAT("2023-12-18", "%x");  # Year for the week where Monday is the first day of the week. Used with %v
SELECT DATE_FORMAT("2023-12-18", "%X");  # Year for the week where Sunday is the first day of the week. Used with %V
SELECT DATE_FORMAT("2023-12-18", "%y");  # Year as a numeric, 2-digit value
SELECT DATE_FORMAT("2023-12-18", "%Y");  # Year as a numeric, 4-digit value

-- SUBTRACT 15 DAYS FROM A DATE AND RETURN THE DATE

SELECT DATE_SUB('2023-12-22', INTERVAL 15 DAY);

-- SUBTRACT 15 HOURS FROM A DATE AND RETURN THE DATE

SELECT DATE_SUB('2023-12-22', INTERVAL 15 HOUR);

-- SUBTRACT 15 MINUTES FROM A DATE AND RETURN THE DATE

SELECT DATE_SUB('2023-12-22', INTERVAL 15 MINUTE);

-- EXTRACT THE DAY FROM THE DATE

SELECT DAY("2023-12-22");

-- RETURN THE WEEKDAY NAME FROM THE DATE

SELECT DAYNAME('2023-12-22');

-- RETURN THE DAY OF THE MONTH FROM THE DATE

SELECT DAYOFMONTH('2023-12-22');