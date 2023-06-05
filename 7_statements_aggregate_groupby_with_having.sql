-- To Calculate the average price of phones for each brand --
-- HAVING use to only include brands with average price greateer than $500 --

SELECT brand_name, AVG(price) AS avg_price
FROM phone
JOIN brand ON phone.brand_id = brand.brand_id
GROUP BY brand_name
HAVING avg_price > 500;

-- To count number of phones for each operating system --
-- HAVING use to include only the operating systems with more than 10 phones --

SELECT operating_sys_name, COUNT(*) AS phone_count
FROM phone
JOIN operatingsystem ON phone.os_id = operatingsystem.os_id
GROUP BY operating_sys_name
HAVING phone_count > 10;

-- To calculate the maximum battery capacity for each brand -- 
-- HAVING use to only include the brands with maximum batter capacity greater than 4k --

SELECT brand_name, MAX(capacity) AS max_capacity
FROM phone
JOIN brand ON phone.brand_id = brand.brand_id
JOIN battery ON phone.phone_id = battery.phone_id
GROUP BY brand_name
HAVING max_capacity > 4000;

-- To find the minimum display size for phones with a waterproof feature -- 

SELECT MIN(size) AS min_size
FROM phone
JOIN display ON phone.phone_id = display.phone_id
JOIN phone_feature ON phone.phone_id = phone_feature.phone_id
JOIN feature ON phone_feature.feature_id = feature.feature_id
GROUP BY phone.phone_id
HAVING MAX(feature_name = 'Waterproof');

-- To find the minimum display size for phones with a waterproof feature -- 

SELECT MIN(size) AS min_size
FROM phone
JOIN display ON phone.phone_id = display.phone_id
JOIN phone_feature ON phone.phone_id = phone_feature.phone_id
JOIN feature ON phone_feature.feature_id = feature.feature_id
GROUP BY phone.phone_id
HAVING MAX(feature_name = 'Waterproof');

-- To calculate the sum of megapixels for each brand --
-- HAVING use to only include brands with total megapixel greater than 5 --

SELECT brand_name, SUM(megapixels) AS total_megapixels
FROM phone
JOIN brand ON phone.brand_id = brand.brand_id
JOIN camera ON phone.phone_id = camera.phone_id
GROUP BY brand_name
HAVING total_megapixels > 5;

-- To determine the average clock speed for processors with more than 4 cores --

SELECT AVG(clock_speed) AS avg_clock_speed
FROM processor
GROUP BY cores
HAVING cores > 4;

-- To count the number of phones with a price greater than 1000 for each brand --
SELECT brand_name, COUNT(*) AS high_price_count
FROM phone
JOIN brand ON phone.brand_id = brand.brand_id
GROUP BY brand_name
HAVING COUNT(*) > 15;
