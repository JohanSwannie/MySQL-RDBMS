INSERT INTO credits
(customerNumber, creditLimit)
VALUES
(1278971, 35000.00),
(1279132, 28000.00);


INSERT INTO credits
(customerNumber, creditLimit)
SELECT 
  customerNumber, 
  creditLimit 
FROM 
  customers 
WHERE 
  creditLimit > 0;