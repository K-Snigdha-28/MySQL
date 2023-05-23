create database a;
use a;
CREATE TABLE orders 
(
order_id INT PRIMARY KEY,
customer_id INT,
product_name VARCHAR(50),
quantity INT,
order_date DATE
);
desc orders;
INSERT INTO orders VALUES
(1, 100, 'Product A', 5, '2023-02-01'),
(2, 101, 'Product B', 8, '2023-02-15'),
(3, 102, 'Product C', 12, '2023-03-01'),
(4, 103, 'Product D', 3, '2023-03-01');
SELECT * FROM orders;
-- create the recent_orders view
CREATE VIEW recent_orders AS
SELECT *
FROM orders
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 5 DAY);
-- show the recent_orders view
SELECT * FROM recent_orders;
-- alter the recent_orders view to show only the order_id, product_name, and quantity columns
ALTER VIEW recent_orders AS
SELECT order_id, product_name, quantity
FROM orders
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 10 DAY);
-- show the recent_orders view with the updated columns
SELECT * FROM recent_orders;
-- update the recent_orders view to include only orders with a quantity greater than 10
CREATE OR REPLACE VIEW recent_orders AS
SELECT order_id, product_name, quantity
FROM orders
WHERE order_date >= DATE_SUB(NOW(), INTERVAL 30 DAY) AND quantity > 10;
-- show the recent_orders view with the updated quantity condition
SELECT * FROM recent_orders;



