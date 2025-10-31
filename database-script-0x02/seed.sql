-- Add Users
INSERT INTO users (first_name, last_name, email, password, phone)
VALUES
('Ada', 'Obi', 'ada@example.com', 'hashedpwd1', '08011112222'),
('Bayo', 'Okafor', 'bayo@example.com', 'hashedpwd2', '08033334444'),
('Chi', 'Eze', 'chi@example.com', 'hashedpwd3', '08055556666');

-- Add Properties
INSERT INTO properties (owner_id, title, description, price_per_night, city, state, country)
VALUES
(1, 'Cozy Room in Lekki', 'Nice space near beach', 45.00, 'Lagos', 'Lagos', 'Nigeria'),
(2, '3BR Apartment', 'Spacious home for family', 120.00, 'Abuja', 'FCT', 'Nigeria');

-- Add Bookings
INSERT INTO bookings (guest_id, property_id, start_date, end_date, status)
VALUES
(3, 1, '2025-11-01', '2025-11-05', 'confirmed'),
(1, 2, '2025-12-10', '2025-12-15', 'pending');

-- Add Payments
INSERT INTO payments (booking_id, amount, method, status)
VALUES
(1, 180.00, 'card', 'paid');

-- Add Reviews
INSERT INTO reviews (reviewer_id, property_id, rating, comment)
VALUES
(3, 1, 5, 'Perfect stay! Loved it.');
