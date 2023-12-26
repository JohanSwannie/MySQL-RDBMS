-- NOT NULL CONSTRAINT - ENSURES THAT A COLUMN CANNOT HAVE A NULL VALUE

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- UNIQUE CONSTRAINT - ENSURES THAT ALL VALUES IN A COLUMN ARE DIFFERENT

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

-- PRIMARY KEY CONSTRAINT -  A COMBINATION OF A NOT NULL AND UNIQUE. 
-- UNIQUELY IDENTIFIES EACH ROW IN A TABLE

CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
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
    PRIMARY KEY (ID)
);

-- OR

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);

-- FOREIGN KEY CONSTRAINT - PREVENTS ACTIONS THAT WOULD DESTROY LINKS BETWEEN TABLES


CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

-- OR

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

-- CHECK CONSTRAINT - ENSURES THAT THE VALUES IN A COLUMN SATISFIES 
-- A SPECIFIC CONDITION


CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age>=18)
);

-- OR

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);

-- DEFAULT CONSTRAINT - SETS A DEFAULT VALUE FOR A COLUMN IF NO VALUE IS SPECIFIED

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

-- OR

CREATE TABLE Orders (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
);

-- CREATE INDEX CONSTRAINT - USED TO CREATE AND RETRIEVE DATA FROM 
-- THE DATABASE VERY QUICKLY

CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

-- OR

CREATE UNIQUE INDEX idx_pname_two
ON Persons (LastName, FirstName);
