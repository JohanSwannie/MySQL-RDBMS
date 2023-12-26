CREATE DATABASE subqueries;

USE subqueries;

CREATE TABLE orders (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
orderId INT,
customerId INT,
customerName VARCHAR(50),
productName VARCHAR(50),
price DECIMAL(11,2),
shippedDate DATE
);

INSERT INTO orders
(orderId, customerId, customerName, productName, price, shippedDate)
VALUES 
(1234, 3000, 'BB 123', 'Cargo001', 2150.50, '2023-01-06'),
(1235, 3001, 'BB 124', 'Cargo004', 4988.25, '2023-01-10'),
(1236, 3002, 'BB 125', 'Cargo007', 575.95, '2023-01-13'),
(1237, 3003, 'BB 126', 'Cargo002', 1299.45, '2023-01-14'),
(1238, 3004, 'BB 127', 'Cargo001', 7125.35, '2023-01-23'),
(1239, 3005, 'BB 128', 'Cargo008', 1050.00, '2023-01-24'),
(1240, 3006, 'BB 129', 'Cargo009', 955.45, '2023-01-31'),
(1241, 3007, 'BB 130', 'Cargo003', 2395.00, '2023-02-07'),
(1242, 3008, 'BB 131', 'Cargo004', 7100.55, '2023-02-11'),
(1243, 3009, 'BB 132', 'Cargo008', 3800.00, '2023-02-16'),
(1244, 3010, 'BB 133', 'Cargo010', 6345.75, '2023-02-22'),
(1245, 3011, 'BB 134', 'Cargo004', 4397.25, '2023-03-09'),
(1246, 3012, 'BB 135', 'Cargo002', 1500.00, '2023-03-17'),
(1247, 3013, 'BB 136', 'Cargo011', 3445.05, '2023-03-24'),
(1248, 3014, 'BB 137', 'Cargo010', 3498.00, '2023-04-10'),
(1249, 3015, 'BB 138', 'Cargo008', 6239.65, '2023-04-15'),
(1250, 3016, 'BB 139', 'Cargo003', 775.99, '2023-04-26'),
(1251, 3017, 'BB 140', 'Cargo004', 1943.35, '2023-04-30');

SELECT orderId, customerId, productName, price, shippedDate
FROM orders
WHERE shippedDate = (SELECT MAX(shippedDate) FROM orders);

SELECT orderId, customerId, productName, price, shippedDate
FROM orders
WHERE price < (SELECT AVG(price) FROM orders)
ORDER BY price;

SELECT DISTINCT productName, price
FROM orders
WHERE price > (SELECT AVG(price) FROM orders)
ORDER BY price DESC;

CREATE TABLE products (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
productId INT,
productName VARCHAR(50),
unitsInStock INT
);

INSERT INTO products
(productId, productName, unitsInStock)
VALUES
(1001, 'Cargo001', 13),
(1002, 'Cargo002', 5),
(1003, 'Cargo003', 9),
(1004, 'Cargo004', 2),
(1005, 'Cargo005', 4),
(1006, 'Cargo006', 11),
(1007, 'Cargo007', 9),
(1008, 'Cargo008', 8),
(1009, 'Cargo009', 15),
(1010, 'Cargo010', 10),
(1011, 'Cargo011', 7),
(1012, 'Cargo012', 15);

SELECT productId, productName,
CONCAT((unitsInStock / (SELECT SUM(unitsInStock) FROM products)) * 100, '%') AS percentage_of_total_units_in_stock
FROM products
ORDER BY productId;
