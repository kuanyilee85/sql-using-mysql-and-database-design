USE coffee_store;

SELECT * FROM products;
SELECT * FROM orders;

-- inner join
SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id=products.id;

-- shorten hand version
SELECT p.name, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id;

SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
ORDER BY o.order_time;

SELECT p.name, p.price, o.order_time FROM orders o
JOIN products p ON o.product_id = p.id
WHERE product_id = 5
ORDER BY o.order_time;