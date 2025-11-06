-- Task 1: Non-Correlated Subquery
-- Find all properties where the average rating is greater than 4.0
SELECT id, name
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- Task 1: Correlated Subquery
-- Find all users who have made more than 3 bookings
SELECT id, name
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
