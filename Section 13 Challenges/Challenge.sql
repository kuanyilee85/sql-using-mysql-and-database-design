USE cinema_booking_system;

-- Q1
SELECT * FROM films;

SELECT * FROM films
WHERE length_min > 120;

-- Q2
SELECT * FROM screenings;

SELECT f.name, COUNT(s.film_id) AS showings FROM screenings s
JOIN films f ON s.film_id = f.id
GROUP BY s.film_id
ORDER BY showings DESC
LIMIT 1;

-- Q3
SELECT id FROM screenings
WHERE film_id = 5;

SELECT COUNT(*) AS no_bookings FROM bookings
WHERE screening_id IN
(SELECT id FROM screenings
WHERE film_id = 5);

-- Q4
SELECT * FROM customers;
SELECT * FROM bookings;

SELECT * FROM bookings b
JOIN customers c ON c.id = b.customer_id;

SELECT c.first_name, c.last_name, COUNT(b.customer_id) AS no_order FROM bookings b
JOIN customers c ON c.id = b.customer_id
GROUP BY b.customer_id
ORDER BY no_order DESC
LIMIT 5;

-- Q5
SELECT * FROM screenings;
SELECT * FROM rooms;

SELECT f.name AS film_name, COUNT(r.name) AS no_screenings FROM screenings s
JOIN rooms r ON s.room_id = r.id
JOIN films f ON f.id = s.film_id
WHERE r.id = 1
GROUP BY f.name
ORDER BY no_screenings DESC
LIMIT 1;

-- Q6
SELECT * FROM customers;
SELECT * FROM bookings;

SELECT COUNT(customer_id) AS no_customer FROM bookings;

SELECT COUNT(DISTINCT customer_id) AS no_customer FROM bookings;