-- 7 Statements w/aggregate functions and group by without having --

-- To retrieve the total count of phones for each brand [COUNT ()] --
SELECT brand_name, COUNT(*) AS total_count
FROM brand
JOIN phone ON brand.brand_id = phone.brand_id
GROUP BY brand_name;

-- To calculate the average price of phones for each brand [AVG ()] --
SELECT brand_name, AVG(price) AS average_price
FROM brand
JOIN phone ON brand.brand_id = phone.brand_id
GROUP BY brand_name;

-- To find the maximum megapixels of the camera for each phone [MAX ()] --
SELECT phone_model, MAX(megapixels) AS max_megapixels
FROM phone
JOIN camera ON phone.phone_id = camera.phone_id
GROUP BY phone_model;

-- Calculate the total capacity of batteries for each phone [SUM ()] --
SELECT phone_model, SUM(capacity) AS total_capacity
FROM phone
JOIN battery ON phone.phone_id = battery.phone_id
GROUP BY phone_model;

-- Retrieve the minimum price of phones for each operating system [MIN ()] --
SELECT os_name, MIN(price) AS min_price
FROM operatingsystem
JOIN phone ON operatingsystem.os_id = phone.os_id
GROUP BY os_name;

-- Calculate the average clock speed of processors for each phone [AVG ()} --
SELECT phone_model, AVG(clock_speed) AS average_clock_speed
FROM phone
JOIN processor ON phone.phone_id = processor.phone_id
GROUP BY phone_model;

-- Find the total count of phones and their average price for each country [COUNT & AVG] -- 
SELECT country_name, COUNT(*) AS total_count, AVG(price) AS average_price
FROM country
JOIN phone ON country.country_id = phone.country_id
GROUP BY country_name;

