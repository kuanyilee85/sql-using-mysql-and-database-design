USE coffee_store;

SELECT * FROM orders;
SELECT * FROM customers;

-- set id 1 back to NULL, so you know which is table 1 
UPDATE orders
SET customer_id = NULL
WHERE id = 1;

-- right join; customers (table 1), orders (table 2)
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
RIGHT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time
limit 10;

-- set id 1 back to 1
UPDATE orders
SET customer_id = 1
WHERE id = 1;
