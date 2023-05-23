CREATE DATABASE studentdb;
USE studentdb;
CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
class VARCHAR(20),
score FLOAT
);
INSERT INTO students (id, name, age, class, score) VALUES
(1, 'John', 17, '10th grade', 85.2),
(2, 'Sarah', 16, '9th grade', 91.5),
(3, 'David', 18, '12th grade', 78.9),
(4, 'Emily', 15, '9th grade', 93.7),
(5, 'Jacob', 17, '11th grade', 87.4);
-- Retrieving data where age is greater than 18:
SELECT * FROM students WHERE age > 18;
-- Retrieving data where class is equal to 10th grade and score is greater than 80:
SELECT * FROM students WHERE class = '10th grade' AND score > 80;
-- Retrieving data where name starts with 'J':
SELECT * FROM students WHERE name LIKE 'J%';
-- Retrieving data where id is either 1, 3 or 5:
SELECT * FROM students WHERE id IN (1, 3, 5);