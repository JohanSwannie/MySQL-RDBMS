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
('James Mower', 'Gym', 34),
('Mary Cooper', 'Walking', 31),
('Richard Swan', 'Fishing', 38),
('Dorothy Blake', 'Picnic', 27),
('Wayne Brown', 'Paragliding', 40),
('Tanya Haywood', 'Walking', 22);

SELECT * FROM people
WHERE age BETWEEN 22 AND 31
ORDER BY age;