USE cinema_booking_system;

-- SUBSTRING(字串, 起始字, 長度)
SELECT SUBSTRING("Example", 3, 3) AS Sub;

SELECT SUBSTRING("Example", 3) AS Sub;

SELECT name FROM films;

SELECT SUBSTRING(name,1,3) AS short_name FROM films;

-- 位置５往後４個字符
SELECT SUBSTRING(name,5,4) AS short_name FROM films;

-- 最後往前2個字符
SELECT SUBSTRING(name,-2,2) AS short_name FROM films;

-- 最後往前5個字符
SELECT SUBSTRING(name,-5,5) AS short_name FROM films;