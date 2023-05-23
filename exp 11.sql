SELECT customer_id, SUM(total_amount) as total_spent
FROM orders
GROUP BY customer_id;

SELECT customer_id, SUM(total_amount) as total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 80;

