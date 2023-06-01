-- 1 big statement to join all tables into a single query --
SELECT *
FROM brand
JOIN phone ON brand.brand_id = phone.brand_id
JOIN operatingsystem ON phone.os_id = operatingsystem.os_id
LEFT JOIN phone_feature ON phone.phone_id = phone_feature.phone_id
LEFT JOIN feature ON phone_feature.feature_id = feature.feature_id
LEFT JOIN processor ON phone.processor_id = processor.processor_id
LEFT JOIN camera ON phone.phone_id = camera.phone_id
LEFT JOIN display ON phone.phone_id = display.phone_id
LEFT JOIN battery ON phone.phone_id = battery.phone_id
LEFT JOIN userreview ON phone.phone_id = userreview.phone_id
LEFT JOIN useraccount ON userreview.user_id = useraccount.user_id
