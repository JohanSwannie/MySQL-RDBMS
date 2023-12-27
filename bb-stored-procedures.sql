CREATE DATABASE stored_procedures;

USE stored_procedures;

CREATE TABLE customers (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(50),
city VARCHAR(50),
state VARCHAR(50),
postalCode INT,
country VARCHAR(50)
);

INSERT INTO customers
(customerName, city, state, postalCode, country)
VALUES
('Gary Player', 'Johannesburg', 'Gauteng', 2000, 'South Africa'),
('Luke Hoggard', 'London', 'Central UK', 3000, 'England');

DELIMITER $$
CREATE PROCEDURE GetCustomers()
BEGIN
	SELECT 
		customerName, 
		city, 
		state, 
		postalCode, 
		country
	FROM
		customers
	ORDER BY customerName;    
END$$
DELIMITER ;

CALL GetCustomers();

DROP PROCEDURE IF EXISTS GetCustomers;

-- THE FOLLOWING DEFINES A STORED PROCEDURE THAT RETURNS THE 
-- NUMBER OF ORDERS BASED ON THEIR ORDER STATUS.

DELIMITER $$

CREATE PROCEDURE GetOrderCountByStatus (
	IN  orderStatus VARCHAR(25),
	OUT total INT
)
BEGIN
	SELECT COUNT(orderNumber)
	INTO total
	FROM orders
	WHERE status = orderStatus;
END$$

DELIMITER ;


