CREATE DATABASE subqueries;

USE subqueries;

CREATE TABLE orders (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
orderId INT,
customerId INT,
customerName VARCHAR(50),
price DECIMAL(11,2),
shippedDate DATE
);


INSERT INTO orders
(orderId, customerId, customerName, price, shippedDate)
VALUES 
(1234, 3000, 'BB 123', 2150.55, '2023-01-06'),
(1235, 3001, 'BB 124', 4988.25, '2023-01-10'),
(1236, 3002, 'BB 125', 575.95, '2023-01-13'),
(1237, 3003, 'BB 126', 1299.45, '2023-01-14'),
(1238, 3004, 'BB 127', 7125.35, '2023-01-23'),
(1239, 3005, 'BB 128', 1050.00, '2023-01-24'),
(1240, 3006, 'BB 129', 955.45, '2023-01-31'),
(1241, 3007, 'BB 130', 2395.00, '2023-02-07'),
(1242, 3008, 'BB 131', 7100.55, '2023-02-11'),
(1243, 3009, 'BB 132', 3800.00, '2023-02-16'),
(1244, 3010, 'BB 133', 6345.75, '2023-02-22'),
(1245, 3011, 'BB 134', 4397.25, '2023-03-09'),
(1246, 3012, 'BB 135', 1500.00, '2023-03-17'),
(1247, 3013, 'BB 136', 3445.05, '2023-03-24'),
(1248, 3014, 'BB 137', 3498.00, '2023-04-10'),
(1249, 3015, 'BB 138', 6237.65, '2023-04-15'),
(1250, 3016, 'BB 139', 775.99, '2023-04-26'),
(1251, 3017, 'BB 140', 1943.35, '2023-04-30');

SELECT orderId, customerId, price
FROM orders
WHERE shippedDate = (SELECT MAX(shippedDate) FROM orders);

SELECT orderId, customerId, price
FROM orders
WHERE price < (SELECT AVG(price) FROM orders);


