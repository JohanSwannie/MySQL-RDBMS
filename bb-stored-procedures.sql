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

CALL GetOrderCountByStatus('Shipped',@total);
SELECT @total;

-- THE FOLLOWING EXAMPLE DEMONSTRATES HOW TO USE 
-- AN INOUT PARAMETER IN A STORED PROCEDURE:

DELIMITER $$

CREATE PROCEDURE SetCounter(
	INOUT counter INT,
    IN inc INT
)
BEGIN
	SET counter = counter + inc;
END$$

DELIMITER ;

SET @counter = 1;
CALL SetCounter(@counter,1); -- 2
CALL SetCounter(@counter,1); -- 3
CALL SetCounter(@counter,5); -- 8
SELECT @counter; -- 8


