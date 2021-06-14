USE cinema_booking_system;

SELECT * FROM bookings;

-- COUNT有多少customer_id
SELECT customer_id, COUNT(id) FROM bookings
GROUP BY customer_id;

-- COUNT每個customer_id 看了幾次
SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id;

SELECT f.name, s.start_time, c.first_name, c.last_name, COUNT(b.id) FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN bookings b ON b.screening_id = s.id
JOIN customers c ON c.id = b.customer_id
GROUP BY f.name, s.start_time, c.first_name, c.last_name
ORDER BY s.start_time;