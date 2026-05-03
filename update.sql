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