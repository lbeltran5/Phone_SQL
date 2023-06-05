--  Use aggregate function COUNT() without HAVING -- 
SELECT brand_name, COUNT(*) AS total_count
FROM phone
JOIN brand ON phone.brand_id = brand.brand_id
GROUP BY brand_name;

-- To calculate the average price of phones 
SELECT operating_sys_name, AVG(price) AS average_price
FROM phone
JOIN operatingsystem ON phone.os_id = operatingsystem.os_id
GROUP BY operating_sys_name;

-- Find the maximum megapixels of he camera for each phone --
SELECT phone_id, MAX(megapixels) AS max_megapixels
FROM camera
GROUP BY phone_id;

--  To determine the total capacity of batteries for each brand --
SELECT brand_name, SUM(capacity) AS total_capacity
FROM phone
JOIN battery ON phone.phone_id = battery.phone_id
JOIN brand ON phone.brand_id = brand.brand_id
GROUP BY brand_name;

-- To retrieve the number of phones for each country
SELECT country_name, COUNT(*) AS phone_count
FROM phone
JOIN country ON phone.country_id = country.country_id
GROUP BY country_name
HAVING phone_count >= 5;

-- To retrieve the number of phones for each country
SELECT country_name, COUNT(*) AS phone_count
FROM phone
JOIN country ON phone.country_id = country.country_id
GROUP BY country_name;

-- Find the average display size of phones for each operating system -- 
SELECT operating_sys_name, AVG(size) AS average_size
FROM phone
JOIN display ON phone.phone_id = display.phone_id
JOIN operatingsystem ON phone.os_id = operatingsystem.os_id
WHERE size >= 5.0
GROUP BY operating_sys_name;
