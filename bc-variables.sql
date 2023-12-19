-- Declaring Variables + Assigning a value to a variable

DELIMITER $$
	DECLARE totalSale DEC(10,2) DEFAULT 0.0;
    SET totalSale = 10;
DELIMITER ;
