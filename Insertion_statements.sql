INSERT INTO brand (brand_id, brand_name)
VALUES (1, 'Apple');

INSERT INTO country (country_id, country_name)
VALUES (1, 'United States');

INSERT INTO operatingsystem (os_id, os_name)
VALUES (1, 'iOS');
 
INSERT INTO phone (phone_id, brand_id, os_id, phone_model, release_year, price)
VALUES (1, 1, 1, 'iPhone12', 2020, 999.99);

INSERT INTO feature (feature_id, feature_name)
VALUES (1, 'Face ID');

INSERT INTO phone_feature (phone_id, feature_id)
VALUES (1, 1);

INSERT INTO processor (processor_id, processor_name, cores, clock_speed)
VALUES (1, 'A14 Bionic', 6, 3.1);

INSERT INTO camera (camera_id, phone_id, megapixels)
VALUES (1, 1, 12.0);

INSERT INTO display (display_id, phone_id, size, resolution)
VALUES (1, 1, 6.1, '2535x1170');

INSERT INTO battery (battery_id, phone_id, capacity)
VALUES (1, 1, 2815);