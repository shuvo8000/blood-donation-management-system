-- =========================
-- 5. SEARCH QUERIES
-- =========================

-- Search Donor by Blood Group & District
SELECT name, phone, district, last_date
FROM donors
WHERE blood_group = 'A+' AND district = 'Dhaka';

-- Search Blood Bank by District
SELECT name, phone, district
FROM banks
WHERE district = 'Dhaka';
