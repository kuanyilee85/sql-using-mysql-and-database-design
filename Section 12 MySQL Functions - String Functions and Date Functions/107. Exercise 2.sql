USE cinema_booking_system;

-- Q1
SELECT film_id, start_time FROM screenings
WHERE DATE(start_time) = '2017-10-20';

-- Q2
SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-06' AND '2017-10-13';

-- Q3
SELECT * FROM screenings
WHERE MONTH(start_time) = '10'
AND YEAR(start_time) = '2017';