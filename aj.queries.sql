CREATE DATABASE queries;

USE queries;

CREATE TABLE people (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
fullName VARCHAR(50),
hobby VARCHAR(50),
age INT
);

INSERT INTO people 
(fullName, hobby, age)
VALUES
('James Mower', 'Gym', 39),
('Maria Mower', 'Walking', 31),
('Richard Swan', 'Fishing', 38),
('Dorothy Blake', 'Picnic', 27),
('Wayne Brown', 'Paragliding', 42),
('Tanya Haywood', 'Walking', 22);

-- SELECT ALL ROWS USING THE BETWEEN OPERATOR

SELECT * FROM people
WHERE age BETWEEN 22 AND 31
ORDER BY age;

-- SELECT CERTAIN ROWS USING THE IN OPERATOR

SELECT fullName, hobby, age
FROM people
WHERE age IN (22, 27, 38)
ORDER BY age;

-- SELECT ALL ROWS USING THE GREATER THAN OPERATOR

SELECT * FROM people
WHERE age > 27
ORDER BY age;

-- SELECT ALL ROWS USING THE GREATER THAN OR EQUAL OPERATOR

SELECT * FROM people
WHERE age >= 27
ORDER BY age;

-- SELECT ALL ROWS USING LIKE OPERATOR

SELECT * FROM people
WHERE fullName LIKE "%a%"
ORDER BY age;

SELECT * FROM people
WHERE fullName LIKE "_a_________"
ORDER BY age;

