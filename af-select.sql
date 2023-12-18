-- Select all from a table_name

SELECT * FROM employees;

-- Select certain columns from a table

SELECT 
    lastName, 
    firstName, 
    jobTitle
FROM
    employees;

-- Select columns from a table using the WHERE and AND clauses

SELECT 
    lastname, 
    firstname, 
    jobtitle,
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND 
    officeCode = 1;

-- Select columns from a table using the WHERE, OR and ORDER BY clauses 

SELECT 
    lastName, 
    firstName, 
    jobTitle, 
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' OR 
    officeCode = 1
ORDER BY 
    officeCode , 
    jobTitle;

-- Select columns from a tables using the WHERE, BETWEEN and ORDER BY clauses

SELECT 
    firstName, 
    lastName, 
    officeCode
FROM
    employees
WHERE
    officeCode BETWEEN 1 AND 3
ORDER BY officeCode;

-- Select columns from a tables using the WHERE, LIKE and ORDER BY clauses

SELECT 
    firstName, 
    lastName
FROM
    employees
WHERE
    lastName LIKE '%son'
ORDER BY firstName;

-- Select columns from a tables using the WHERE, IN and ORDER BY clauses

SELECT 
    firstName, 
    lastName, 
    officeCode
FROM
    employees
WHERE
    officeCode IN (1 , 2, 3)
ORDER BY 
    officeCode;

-- Select columns from a tables using the WHERE and IS NULL BY clauses
 
SELECT 
    lastName, 
    firstName, 
    reportsTo
FROM
    employees
WHERE
    reportsTo IS NULL;

-- Select columns from a tables using the WHERE clause and comparison operator

SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle <> 'Sales Rep';

-- Select DISTINCT example 1

SELECT 
    DISTINCT lastname
FROM
    employees
ORDER BY 
    lastname;

-- Select DISTINCT example 2

SELECT DISTINCT
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY 
    state, 
    city;