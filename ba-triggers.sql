CREATE DATABASE TRIGGERS;

USE TRIGGERS;

-- ********************************
-- ****      EXAMPLE 1        *****
-- ****      Before Update    *****
-- ****      After Update     *****
-- ********************************

CREATE TABLE employees (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fullname VARCHAR(45),
employeeNumber INT NOT NULL,
title VARCHAR(50),
salary DECIMAL(8,2)
);

select * from employees;

INSERT INTO employees
(fullname, employeeNumber, title, salary)
values
('James Mower', 8571389, 'Project Manager',  165000.00),
('Gert Saaiman', 8571401, 'Team Leader',  120000.00),
('Julie Swan',  8571417, 'Analyst Programmer',  90000.00);

UPDATE employees
SET fullname = "Chris Smit",
	employeeNumber = 8571310,
	title = "CEO",
    salary = 255000.00
WHERE title = "CIO";


select * from employees;

CREATE TABLE employees_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employeeNumber INT NOT NULL,
    fullname VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);

select * from employees_audit;

CREATE TRIGGER before_employee_update 
    BEFORE UPDATE ON employees
    FOR EACH ROW 
 INSERT INTO employees_audit
 SET action = 'update before',
     employeeNumber = OLD.employeeNumber,
     fullname = OLD.fullname,
     changedat = NOW();

CREATE TRIGGER after_employee_update 
    AFTER UPDATE ON employees
    FOR EACH ROW 
 INSERT INTO employees_audit
 SET action = 'update after',
     employeeNumber = NEW.employeeNumber,
     fullname = NEW.fullname,
     changedat = NOW();
     
Show triggers;

-- ********************************
-- ****      EXAMPLE 2        *****
-- ****      Before Insert    *****
-- ********************************

DROP TABLE IF EXISTS WorkCenters;

CREATE TABLE WorkCenters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    capacity INT NOT NULL
);

DROP TABLE IF EXISTS WorkCenterStats;

CREATE TABLE WorkCenterStats(
    totalCapacity INT NOT NULL
);

DELIMITER $$

CREATE TRIGGER before_workcenters_insert
BEFORE INSERT
ON WorkCenters FOR EACH ROW
BEGIN
    DECLARE rowcount INT;
    
    SELECT COUNT(*) 
    INTO rowcount
    FROM WorkCenterStats;
    
    IF rowcount > 0 THEN
        UPDATE WorkCenterStats
        SET totalCapacity = totalCapacity + new.capacity;
    ELSE
        INSERT INTO WorkCenterStats(totalCapacity)
        VALUES(new.capacity);
    END IF; 

END $$

DELIMITER ;

INSERT INTO WorkCenters(name, capacity)
VALUES('Mold Machine',100);

SELECT * FROM WorkCenterStats;  

INSERT INTO WorkCenters(name, capacity)
VALUES('Packing',200);

INSERT INTO WorkCenters(name, capacity)
VALUES('Turn Wheel',175);

SELECT * FROM WorkCenterStats;

-- ********************************
-- ****      EXAMPLE 3        *****
-- ****      After Insert     *****
-- ********************************

DROP TABLE IF EXISTS members;

CREATE TABLE members (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    birthDate DATE,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS reminders;

CREATE TABLE reminders (
    id INT AUTO_INCREMENT,
    memberId INT,
    message VARCHAR(255) NOT NULL,
    PRIMARY KEY (id , memberId)
);

DELIMITER $$

CREATE TRIGGER after_members_insert
AFTER INSERT
ON members FOR EACH ROW
BEGIN
    IF NEW.birthDate IS NULL THEN
        INSERT INTO reminders(memberId, message)
        VALUES(new.id,CONCAT('Hi ', NEW.name, ', please update your date of birth.'));
    END IF;
END$$

DELIMITER ;

INSERT INTO members(name, email, birthDate)
VALUES
    ('John Doe', 'john.doe@example.com', NULL),
    ('Jane Doe', 'jane.doe@example.com','2000-01-01');

SELECT * FROM members;   

SELECT * FROM reminders; 

     