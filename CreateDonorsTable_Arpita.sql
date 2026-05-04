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
