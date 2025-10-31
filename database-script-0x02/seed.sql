-- seed.sql
-- Sample Data for Airbnb Database

-- Insert sample users
INSERT INTO users (full_name, email, password)
VALUES
('Daniel Adetu', 'daniel@example.com', 'hashed_password_123'),
('Mary Johnson', 'mary@example.com', 'hashed_password_456'),
('Ahmed Musa', 'ahmed@example.com', 'hashed_password_789');

-- Insert sample properties
INSERT INTO properties (user_id, title, description, price_per_night, location)
VALUES
(1, 'Cozy Apartment in Lagos', '2-bedroom apartment near the beach', 70.00, 'Lagos, Nigeria'),
(2, 'Luxury Villa in Abuja', 'Spacious villa with pool and garden', 250.00, 'Abuja, Nigeria'),
(3, 'Modern Studio in Nairobi', 'Compact studio perfect for one', 50.00, 'Nairobi, Kenya');

-- Insert sample bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status)
VALUES
(2, 1, '2025-11-05', '2025-11-10', 'confirmed'),
(3, 2, '2025-12-01', '2025-12-07', 'pending'),
(1, 3, '2025-12-15', '2025-12-18', 'cancelled');

-- Insert sample payments
INSERT INTO payments (booking_id, amount, payment_method, payment_status)
VALUES
(1, 350.00, 'Credit Card', 'completed'),
(2, 1750.00, 'PayPal', 'pending'),
(3, 150.00, 'Debit Card', 'refunded');

-- Insert sample reviews
INSERT INTO reviews (user_id, property_id, rating, comment)
VALUES
(2, 1, 5, 'Amazing place! Very comfortable and close to everything.'),
(3, 2, 4, 'Great villa, but the WiFi could be faster.'),
(1, 3, 5, 'Perfect for solo travelers, very clean and modern.');
