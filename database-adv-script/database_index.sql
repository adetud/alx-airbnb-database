-- Task 4: Implement Indexes for Optimization

-- Create indexes on frequently searched or joined columns

-- 1. For faster user lookups by email
CREATE INDEX idx_users_email ON users(email);

-- 2. For faster joins between users and bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- 3. For faster joins between properties and bookings
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- 4. For faster searches by property location
CREATE INDEX idx_properties_city ON properties(city);

-- ===============================
-- Measure query performance BEFORE and AFTER adding indexes
-- ===============================

-- Before adding indexes (run this first, without indexes)
-- EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

-- After adding indexes (run this again)
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 5;

-- Compare the query execution times and note the improvement.
