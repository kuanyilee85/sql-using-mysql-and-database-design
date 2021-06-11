USE coffee_store;

/*
UPDATE orders
SET customer_id = 1
WHERE id = 1;
*/

-- table one
SELECT * FROM orders;
-- table two
SELECT * FROM customers;

UPDATE orders
SET customer_id = NULL
WHERE id = 1;

-- left join; orders (table 1), customers (table 2)
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time;

-- left join; customers (table 1), orders (table 2)
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
ORDER BY o.order_time;
