USE cinema_booking_system;

-- Q1
SELECT CONCAT(name, ": ", length_min) FROM films;

-- Q2
SELECT SUBSTRING(email,5) AS email FROM customers;

-- Q3
SELECT LOWER(first_name) AS first_name, UPPER(last_name) AS last_name FROM customers
WHERE last_name='Smith';

-- Q4
SELECT SUBSTRING(name,-3) AS name FROM films;

-- Q5
SELECT CONCAT(SUBSTRING(first_name,1,3), " ", SUBSTRING(last_name,1,3)) AS short_name FROM customers;