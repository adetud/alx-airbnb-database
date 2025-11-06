-- Task 0: INNER JOIN - retrieve all bookings and the respective users who made them
SELECT b.id AS booking_id,
       u.id AS user_id,
       u.name AS user_name,
       b.start_date,
       b.end_date
FROM bookings b
INNER JOIN users u
ON b.user_id = u.id;

-- Task 0: LEFT JOIN - retrieve all properties and their reviews, including those without reviews
SELECT p.id AS property_id,
       p.name AS property_name,
       r.id AS review_id,
       r.rating
FROM properties p
LEFT JOIN reviews r
ON p.id = r.property_id;

-- Task 0: FULL OUTER JOIN - retrieve all users and all bookings, even if not linked
SELECT u.id AS user_id,
       u.name AS user_name,
       b.id AS booking_id,
       b.start_date
FROM users u
LEFT JOIN bookings b
ON u.id = b.user_id
UNION
SELECT u.id AS user_id,
       u.name AS user_name,
       b.id AS booking_id,
       b.start_date
FROM users u
RIGHT JOIN bookings b
ON u.id = b.user_id;

-- Task 0: LEFT JOIN - retrieve all properties and their reviews, including those without reviews
SELECT p.id AS property_id,
       p.name AS property_name,
       r.id AS review_id,
       r.comment AS review_comment,
       r.rating AS review_rating
FROM properties p
LEFT JOIN reviews r
ON p.id = r.property_id;
