USE coffee_store;

SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;

-- Q1, two tables, 1st orders, 2nd customers
SELECT o.id, c.phone_number FROM orders o
JOIN customers c ON o.customer_id = c.id
WHERE product_id = 4;

-- Q2, two tables, 1st products, 2nd orders
SELECT p.name, o.order_time FROM products p
JOIN orders o ON o.product_id = p.id
WHERE name = 'fliter'
AND order_time BETWEEN '2017-01-15' AND '2017-02-14';

-- Q3 three tables, product, orders, customers
SELECT p.name, p.price, o.order_time, c.gender FROM products p
JOIN orders o ON p.id = o.product_id
JOIN customers c ON c.id = o.customer_id
WHERE c.gender = 'F'
AND order_time BETWEEN '2017-01-01' AND '2017-01-31';
