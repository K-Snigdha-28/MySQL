use a;
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