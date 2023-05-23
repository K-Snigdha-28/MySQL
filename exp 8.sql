CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary FLOAT
);
INSERT INTO employees (id, name, age, department, salary) VALUES
(1, 'John Doe', 35, 'Sales', 5000),
(2, 'Jane Smith', 28, 'Marketing', 6000),
(3, 'Mike Johnson', 42, 'Finance', 7000),
(4, 'Emily Davis', 25, 'Sales', 5500),
(5, 'David Lee', 33, 'Marketing', 6500);
-- Sorting data in ascending order based on a single column:
SELECT * FROM employees ORDER BY salary;
-- Sorting data in descending order based on a single column:
SELECT * FROM employees ORDER BY age DESC;
-- Sorting data in ascending order based on multiple columns:
SELECT * FROM employees ORDER BY department, salary;
-- Sorting data in descending order based on multiple columns:
SELECT * FROM employees ORDER BY department DESC, salary DESC;