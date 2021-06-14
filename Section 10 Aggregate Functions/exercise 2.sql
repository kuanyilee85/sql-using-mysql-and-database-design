USE cinema_booking_system;

SELECT * FROM films;

-- Q1
SELECT b.customer_id, COUNT(r.id) FROM reserved_seat r
JOIN bookings b ON b.id = r.booking_id
GROUP BY b.customer_id;

-- Q2
SELECT f.name, f.length_min, COUNT(s.id) FROM films f
JOIN screenings s ON f.id = s.film_id
GROUP BY f.name, f.length_min
HAVING length_min > 120;