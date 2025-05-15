-- Filtered query with WHERE and AND
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount,
    b.start_date,
    b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id
WHERE b.start_date >= '2024-01-01'
  AND pay.amount > 100;
