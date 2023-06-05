UPDATE brand 
SET brand_name = 'Samsung'
WHERE brand_id = 1;

UPDATE country
SET country_name = 'Korea'
WHERE country_id = 1;

UPDATE operatingsystem
SET os_name = 'Android'
WHERE os_id = 1;

UPDATE phone
SET phone_model = 'Galaxy S21'
WHERE phone_id = 1;

UPDATE phone
SET price = 899.99
WHERE phone_id = 1;

UPDATE feature
SET feature_name = 'Wireless Charging'
WHERE feature_id = 2;

UPDATE camera
SET megapixels = 64.0
WHERE camera_id = 1;

UPDATE display
SET size = 6.7
WHERE display_id = 1;

UPDATE battery
SET capacity = 4000
WHERE battery_id = 1;
