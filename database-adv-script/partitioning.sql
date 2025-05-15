-- ⚠️ Drop existing table if testing in dev environment
DROP TABLE IF EXISTS bookings;

-- ✅ Create a partitioned bookings table using RANGE on start_date
CREATE TABLE bookings (
    id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    payment_id INT,
    PRIMARY KEY (id, start_date)  -- Partition key must be part of PK
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
