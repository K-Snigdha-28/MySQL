CREATE DATABASE company;
USE company;
CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(255),
age INT,
position VARCHAR(255),
salary FLOAT
);
INSERT INTO employees (id, name, age, position, salary)
VALUES
(1, 'John Doe', 30, 'Manager', 100000),
(2, 'Jane Smith', 25, 'Sales Representative', 50000),
(3, 'Mark Johnson', 40, 'IT Specialist', 75000),
(4, 'Susan Lee', 35, 'HR Manager', 90000),
(5, 'David Chen', 28, 'Marketing Coordinator', 60000);
SELECT * FROM employees;
CREATE DATABASE student;
USE student;
CREATE TABLE students 
(
id INT PRIMARY KEY,
name VARCHAR(255),
major VARCHAR(255),
year INT,
gpa FLOAT
);
INSERT INTO students (id, name, major, year, gpa)
VALUES
(1, 'John Smith', 'Computer Science', 2, 3.2),
(2, 'Jane Lee', 'Business Administration', 4, 3.8),
(3, 'Mark Johnson', 'Psychology', 3, 3.5),
(4, 'Susan Chen', 'Engineering', 1, 3.1),
(5, 'David Kim', 'Mathematics', 2, 3.6);
SELECT * FROM students;



