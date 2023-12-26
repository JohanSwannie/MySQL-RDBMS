-- NOT NULL CONSTRAINT

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- UNIQUE CONSTRAINT

CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- OR

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);

-- NAMING A CONSTRAINT - IF A QUERY (INSERT, UPDATE, DELETE) VIOLATES A 
-- CONSTRAINT, SQL WILL GENERATE AN ERROR MESSAGE THAT WILL CONTAIN THE
-- CONSTRAINT NAME. IF THE CONSTRAINT NAME IS CLEAR AND DESCRIPTIVE, 
-- THE ERROR MESSAGE WILL BE EASIER TO UNDERSTAND. IF A CONSTRAINT NEEDS 
-- TO BE MODIFIED IN THE FUTURE, IT'S VERY HARD TO DO IF YOU DON'T KNOW 
-- WHAT IT'S NAMED. ALTER TABLE MYTABLE DROP CONSTRAINT PK_CONSTRAINT_NAME.

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
);
