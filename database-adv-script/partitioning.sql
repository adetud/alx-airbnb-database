-- Task 5: Partitioning Large Tables
-- ==============================================
-- This assumes the bookings table already exists
-- and contains a 'start_date' column of type DATE.

-- 1️⃣ Drop old table if you’re testing this multiple times
DROP TABLE IF EXISTS bookings_partitioned;

-- 2️⃣ Create a new table with partitioning by YEAR(start_date)
CREATE TABLE bookings_partitioned (
    id INT PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- 3️⃣ Insert sample data (optional for testing)
INSERT INTO bookings_partitioned (id, user_id, property_id, start_date, end_date, status)
VALUES
(1, 101, 201, '2023-06-15', '2023-06-20', 'completed'),
(2, 102, 202, '2024-07-01', '2024-07-05', 'confirmed'),
(3, 103, 203, '2025-02-10', '2025-02-15', 'cancelled');

-- 4️⃣ Test query performance using EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
