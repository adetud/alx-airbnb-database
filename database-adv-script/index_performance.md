-- Task 4: Implement Indexes for Optimization

-- Create an index on users.email for faster searches by email
CREATE INDEX idx_users_email ON users(email);

-- Create an index on bookings.user_id for faster joins and filtering by user
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create an index on bookings.property_id for faster joins with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create an index on properties.city for faster location-based searches
CREATE INDEX idx_properties_city ON properties(city);

-- To verify all indexes created in MySQL, you can run:
-- SHOW INDEX FROM users;
-- SHOW INDEX FROM bookings;
-- SHOW INDEX FROM properties;
