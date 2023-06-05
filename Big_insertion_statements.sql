INSERT INTO brand (brand_id, brand_name)
VALUES (1, 'Samsung'),
       (2, 'Apple'),
       (3, 'Xiaomi'),
       (4, 'Motorola'),
       (5, 'Huawei'),
       (6, 'LG'),
       (7, 'Nokia'),
       (8, 'Sony');

INSERT INTO country (country_id, country_name)
VALUES (1, 'South Korea'),
       (2, 'United States'),
       (3, 'China'),
       (4, 'United States'),
       (5, 'China'),
       (6, 'South Korea'),
       (7, 'Finland'),
       (8, 'Japan');

INSERT INTO operatingsystem (os_id, operating_sys_name)
VALUES (1, 'Android 13'),
       (2, 'iOS 16'),
       (3, 'Android 13'),
       (4, 'Android 12'),
       (5, 'Android 10'),
       (6, 'Android 10'),
       (7, 'Android 11'),
       (8, 'Androdi 12');

INSERT INTO phone (phone_id, brand_id, os_id, phone_model, price)
VALUES (1, 1, 1, 'Galaxy S23 Ultra', 1200),
       (2, 2, 2, 'iPhone14 Pro Max', 1100),
       (3, 3, 3, 'Xiaomi 13 Ultra', 1198),
       (4, 4, 4, 'Motorola Edge 30 Ultra', 765),
       (5, 5, 5, 'Huawei P40 Pro', 650),
       (6, 6, 6, 'LG V60 ThinQ', 800),
       (7, 7, 7, 'Nokia XR20', 440),
       (8, 8, 8, 'Sony Xperia 5 IV', 998);

INSERT INTO feature (feature_id, feature_name)
VALUES (1, 'Video Call Effects'),
	   (2, 'Face ID Feature'),
       (3, 'Thin and Light screen'),
       (4, 'OLED Display'),
       (5, 'Waterproof'),
       (6, 'Waterproof'),
       (7, 'Wireless Charging'),
       (8, 'Triple Lens camera');
       
INSERT INTO phone_feature (phone_id, feature_id)
VALUES (1, 1),
	   (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8);

INSERT INTO processor (processor_id, processor_name, cores, clock_speed)
VALUES (1, 'AC Snapdragon 8 Gen 2', '6-core', 3.6),
	   (2, 'Hexa-core Apple A16 Bionic ', '6-core', 3),
	   (3, 'Snapdragon 8 Gen 2', '3-core', 2.9),
       (4, 'Snapdrahon 8 Gen 1', '3-core', 2.7),
       (5, 'Octa-core', '3-core', 2.86),
       (6, 'Snapdragon 865', '3-core', 2.84),
       (7, 'Octa-core', '3-core', 2.0),
       (8, 'Snapdragon 8 Gen 1', '3-core', 2.4);

INSERT INTO camera (camera_id, phone_id, megapixels)
VALUES (1, 1, 12.0),
	   (2, 2, 12.0),
       (3, 3, 12.0),
       (4, 4, 11.0),
       (5, 5, 10.0),
       (6, 6, 10.0),
       (7, 7, 10.0),
       (8, 8, 11.5);

INSERT INTO display (display_id, phone_id, size, resolution)
VALUES (1, 1, 6.5, '2560 x 1440'),
       (2, 2, 6.1, '2560 x 1440'),
       (3, 3, 6.3, '2560 x 1440'),
       (4, 4, 6.0, '1920 x 1080'),
       (5, 5, 5.5, '1280 x 720'),
       (6, 6, 6.0, '1920 x 1080'),
       (7, 7, 5.9, '1920 x 1080'),
       (8, 8, 5.5, '1280 x 720');

INSERT INTO battery (battery_id, phone_id, capacity)
VALUES (1, 1, 5500),
	   (2, 2, 5000),
       (3, 3, 5500),
       (4, 4, 4800),
       (5, 5, 4500),
       (6, 6, 4500),
       (7, 7, 4800),
       (8, 8, 4800);