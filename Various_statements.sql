-- Inner Join -- 
SELECT *
FROM phone
JOIN operatingsystem ON phone.os_id = operatingsystem.os_id;

-- Left join --
SELECT * 
FROM phone 
LEFT JOIN camera ON phone.phone_id = camera.phone_id;

-- Right join -- 
SELECT *
FROM phone
RIGHT JOIN battery ON phone.phone_id = battery.phone_id;

-- Outer join --
SELECT *
FROM phone
LEFT JOIN display ON phone.phone_id = display.phone_id
UNION
SELECT *
FROM phone
RIGHT JOIN display ON phone.phone_id = display.phone_id;

-- Cross join --
SELECT *
FROM phone
CROSS JOIN brand;
