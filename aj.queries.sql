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
('Mary Cooper', 'Walking', 31),
('Richard Swan', 'Fishing', 38),
('Dorothy Blake', 'Picnic', 27),
('Wayne Brown', 'Paragliding', 42),
('Tanya Haywood', 'Walking', 22);

SELECT * FROM people
WHERE age BETWEEN 22 AND 31
ORDER BY age;

SELECT fullName, hobby, age
FROM people
WHERE age IN (22, 27, 38)
ORDER BY age;