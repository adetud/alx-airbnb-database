-- Task 4: Optimize Complex Queries

-- =======================================
-- Initial complex query before optimization
-- =======================================
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
LEFT JOIN payments pay ON pay.booking_id = b.id
WHERE b.status = 'confirmed' AND pay.status = 'completed';

-- =======================================
-- Optimized version of the query
-- =======================================
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
WHERE b.status = 'confirmed' AND pay.status = 'completed';