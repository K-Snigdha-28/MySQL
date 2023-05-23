-- Creating a Table for the COMPANY Database
CREATE DATABASE company;
USE company;
CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(255),
age INT,
position VARCHAR(255),
salary FLOAT
);
SHOW TABLES;
-- Inserting Data into the COMPANY Table
INSERT INTO employees (id, name, age, position, salary)
VALUES
(1, 'John Doe', 30, 'Manager', 100000),
(2, 'Jane Smith', 25, 'Sales Representative', 50000),
(3, 'Mark Johnson', 40, 'IT Specialist', 75000),
(4, 'Susan Lee', 35, 'HR Manager', 90000),
(5, 'David Chen', 28, 'Marketing Coordinator', 60000);

-- Retrieving all data from a table:
SELECT * FROM table_name;
-- Retrieving specific columns from a table:
SELECT column1, column2, column3 FROM table_name;
-- Retrieving data based on a condition using WHERE clause:
SELECT * FROM table_name WHERE column1 = 'value';
-- Retrieving data based on multiple conditions using AND/OR operators:
SELECT * FROM table_name WHERE column1 = 'value' AND column2 = 'value';
-- Retrieving data using comparison operators:
SELECT * FROM table_name WHERE column1 > 10;
-- Retrieving data using LIKE operator:
SELECT * FROM table_name WHERE column1 LIKE 'value%';
-- Retrieving data using ORDER BY clause:
SELECT * FROM table_name ORDER BY column1 ASC;
-- Retrieving data using LIMIT clause:
SELECT * FROM table_name LIMIT 10;
