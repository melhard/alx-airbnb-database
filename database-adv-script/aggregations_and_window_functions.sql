WITH PropertyBookingCounts AS (
    SELECT
        p.id AS property_id,
        COUNT(b.id) AS total_bookings
    FROM
        properties p
    LEFT JOIN
        bookings b ON p.id = b.property_id
    GROUP BY
        p.id
)
SELECT
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM
    PropertyBookingCounts;
