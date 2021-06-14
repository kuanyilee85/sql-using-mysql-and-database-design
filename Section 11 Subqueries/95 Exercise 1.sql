USE cinema_booking_system;

-- Q1
SELECT name, length_min FROM films
WHERE length_min >
(SELECT AVG(length_min) FROM films);

-- Q2
SELECT MAX(id), MIN(id) FROM
(SELECT film_id, COUNT(id) AS id FROM screenings
GROUP BY film_id) a;

-- Q3
SELECT name,
(SELECT COUNT(id) FROM screenings
WHERE film_id = f.id)
FROM films f;