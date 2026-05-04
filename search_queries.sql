-- =========================
-- 5. SEARCH QUERIES (UPDATED)
-- =========================

-- 1. Search Donor by Blood Group & District
SELECT name, phone, district, last_date
FROM donors
WHERE blood_group = 'A+' 
AND district = 'Dhaka';

-- 2. Search Donor by Blood Group Only
SELECT name, phone, district
FROM donors
WHERE blood_group = 'O+';

-- 3. Search Donor by District Only
SELECT name, phone, blood_group
FROM donors
WHERE district = 'Dhaka';

-- 4. Search Available Donors (Last donation at least 90 days ago)
SELECT name, phone, blood_group, last_date
FROM donors
WHERE last_date <= DATE('now', '-90 days');

-- 5. Search Donor by Blood Group + Availability
SELECT name, phone, district
FROM donors
WHERE blood_group = 'B+' 
AND last_date <= DATE('now', '-90 days');

-- 6. Search Blood Bank by District
SELECT name, phone, district
FROM banks
WHERE district = 'Dhaka';

-- 7. Search Blood Bank with Available Blood (A+)
SELECT name, phone, district, Apos
FROM banks
WHERE Apos > 0;

-- 8. Search Blood Bank with High O+ Stock
SELECT name, phone, district, Opos
FROM banks
WHERE Opos > 5;

-- 9. Flexible Search using LIKE (partial match)
SELECT name, phone, district
FROM donors
WHERE district LIKE '%Dha%';

-- 10. Sort Donors by Latest Donation Date
SELECT name, phone, last_date
FROM donors
ORDER BY last_date DESC;

-- 11. Count Donors by Blood Group (Analytics)
SELECT blood_group, COUNT(*) AS total_donors
FROM donors
GROUP BY blood_group;

-- 12. Count Blood Banks by District (Analytics)
SELECT district, COUNT(*) AS total_banks
FROM banks
GROUP BY district;
