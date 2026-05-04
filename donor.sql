

-





-- =========================
-- 3. LOGIN QUERIES
-- =========================

-- Donor Login
SELECT * FROM donors
WHERE username = ? AND password = ?;

-- Blood Bank Login
SELECT * FROM banks
WHERE username = ? AND password = ?;

