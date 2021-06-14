USE cinema_booking_system;

SHOW TABLES;

SELECT * FROM bookings;
SELECT * FROM screenings;
SELECT * FROM films;

-- Q1
SELECT COUNT(*) FROM bookings b
WHERE customer_id = 10;

-- Q2
SELECT COUNT(*) FROM screenings
JOIN films f ON film_id = f.id
WHERE f.name = 'Blade Runner 2049';

-- Q3
SELECT COUNT(DISTINCT (customer_id)) FROM bookings;
