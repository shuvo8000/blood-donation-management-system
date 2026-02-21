-- =========================
-- 1. CREATE DONORS TABLE
-- =========================
CREATE TABLE IF NOT EXISTS donors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    blood_group TEXT NOT NULL,
    phone TEXT NOT NULL,
    district TEXT NOT NULL,
    last_date TEXT NOT NULL
);

-- =========================
-- 2. CREATE BLOOD BANKS TABLE
-- =========================
CREATE TABLE IF NOT EXISTS banks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    phone TEXT NOT NULL,
    district TEXT NOT NULL,
    Apos INTEGER DEFAULT 0,
    Aneg INTEGER DEFAULT 0,
    Bpos INTEGER DEFAULT 0,
    Bneg INTEGER DEFAULT 0,
    ABpos INTEGER DEFAULT 0,
    ABneg INTEGER DEFAULT 0,
    Opos INTEGER DEFAULT 0,
    Oneg INTEGER DEFAULT 0
);





-- =========================
-- 3. LOGIN QUERIES
-- =========================

-- Donor Login
SELECT * FROM donors
WHERE username = 'donor1' AND password = '123';

-- Blood Bank Login
SELECT * FROM banks
WHERE username = 'bank1' AND password = '123';

-- =========================
-- 4. UPDATE PROFILE QUERIES
-- =========================

-- Update Donor Profile
UPDATE donors
SET phone = '01711111111',
    district = 'Chattogram',
    last_date = '2025-02-01'
WHERE username = 'donor1';

-- Update Blood Bank Stock
UPDATE banks
SET phone = '01811111111',
    Apos = 15,
    Aneg = 6,
    Bpos = 9,
    Bneg = 5,
    ABpos = 7,
    ABneg = 4,
    Opos = 14,
    Oneg = 8
WHERE username = 'bank1';

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

-- =========================
-- 6. ADMIN VIEW QUERIES
-- =========================

-- Admin: View All Donors
SELECT name, username, blood_group, phone, district
FROM donors;

-- Admin: View All Blood Banks
SELECT name, username, phone, district
FROM banks;

-- =========================
-- 7. CHECK ALL DATA
-- =========================
SELECT * FROM donors;
SELECT * FROM banks;
