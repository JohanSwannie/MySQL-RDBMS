-- ALTER TABLE table_name
-- ADD 
--     new_column_name column_definition
--     [FIRST | AFTER column_name]

ALTER TABLE vehicles
ADD model VARCHAR(100) NOT NULL;

-- ALTER TABLE table_name
--     ADD new_column_name column_definition
--     [FIRST | AFTER column_name],
--     ADD new_column_name column_definition
--     [FIRST | AFTER column_name],
--     ...;

ALTER TABLE vehicles
ADD color VARCHAR(50),
ADD note VARCHAR(255);

-- ALTER TABLE table_name
-- MODIFY column_name column_definition
-- [ FIRST | AFTER column_name];    

ALTER TABLE vehicles 
MODIFY note VARCHAR(100) NOT NULL;

-- ALTER TABLE table_name
--     MODIFY column_name column_definition
--     [ FIRST | AFTER column_name],
--     MODIFY column_name column_definition
--     [ FIRST | AFTER column_name],
--     ...;

ALTER TABLE vehicles 
MODIFY year SMALLINT NOT NULL,
MODIFY color VARCHAR(20) NULL AFTER make;

-- ALTER TABLE table_name
--     CHANGE COLUMN original_name new_name column_definition
--     [FIRST | AFTER column_name];

ALTER TABLE vehicles 
CHANGE COLUMN note vehicleCondition VARCHAR(100) NOT NULL;

-- Drop a column name

ALTER TABLE vehicles
DROP COLUMN vehicleCondition;

-- The DESCRIBE and EXPLAIN statements are synonyms. In practice, 
-- the DESCRIBE keyword is more often used to obtain information 
-- about table structure, whereas EXPLAIN is used to obtain a query 
-- execution plan (that is, an explanation of how MySQL would execute a query).

DESCRIBE vehicles;

EXPLAIN vehicles;