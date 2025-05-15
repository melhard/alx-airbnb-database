-- INNER JOIN: bookings and users
SELECT
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name AS user_name,
    bookings.start_date,
    bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

SELECT properties.*, reviews.*
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id; -- Or another relevant column

-- FULL OUTER JOIN: users and bookings
SELECT
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
