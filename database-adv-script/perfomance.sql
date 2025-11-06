-- Task 4: Optimize Complex Queries

-- Initial complex query before optimization
-- This retrieves all bookings with their user, property, and payment details
EXPLAIN
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    u.email AS user_email,
    p.name AS property_name,
    p.city AS property_city,
    pay.amount AS payment_amount,
    pay.status AS payment_status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id;

-- =============================
-- Optimized version of the query
-- =============================

-- Refactor tips:
-- 1. Use INNER JOIN only when data is guaranteed to exist
-- 2. Fetch only columns you need
-- 3. Ensure indexed columns are used (user_id, property_id, booking_id)

EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.name,
    p.name AS property_name,
    pay.amount
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id
WHERE b.status = 'confirmed';
