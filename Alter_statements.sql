-- Adding a new columb to the "Brand" table --
ALTER TABLE brand
ADD COLUMN brand_website VARCHAR(255);

-- Modifying the data type of a column in the "Country" table --
ALTER TABLE country
MODIFY COLUMN country_name VARCHAR(50);

-- Renaming a column in the "Operating System" table --
ALTER TABLE operatingsystem
CHANGE COLUMN os_name operating_sys_name VARCHAR(255);

-- Dropping a column from the "Phone" table --
ALTER TABLE phone
DROP COLUMN release_year;

-- Adding a foreing key constraint to the "Review" table --
ALTER TABLE userreview
ADD CONSTRAINT fk_phone_id
FOREIGN KEY (phone_id) REFERENCES phone(phone_id);