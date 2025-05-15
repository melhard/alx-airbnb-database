-- Index for the primary key of the users table
CREATE INDEX idx_users_id ON users (id);

-- Index on the user_id foreign key in the bookings table
CREATE INDEX idx_bookings_user_id ON bookings (user_id);

-- Index on the property_id foreign key in the bookings table
CREATE INDEX idx_bookings_property_id ON bookings (property_id);

-- Index for the primary key of the properties table
CREATE INDEX idx_properties_id ON properties (id);

-- Example of measuring query performance BEFORE adding indexes
EXPLAIN SELECT * FROM bookings WHERE user_id = 123;
EXPLAIN SELECT p.* FROM properties p JOIN bookings b ON p.id = b.property_id WHERE b.user_id = 456;

-- Creating indexes (already included above)
-- CREATE INDEX idx_bookings_start_date ON bookings (start_date);
-- CREATE INDEX idx_bookings_end_date ON bookings (end_date);

-- Example of measuring query performance AFTER adding indexes
EXPLAIN SELECT * FROM bookings WHERE user_id = 123;
EXPLAIN SELECT p.* FROM properties p JOIN bookings b ON p.id = b.property_id WHERE b.user_id = 456;

-- If you are using PostgreSQL, you can use ANALYZE as well
-- ANALYZE bookings;
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 123;
-- ANALYZE properties;
-- EXPLAIN SELECT p.* FROM properties p JOIN bookings b ON p.id = b.property_id WHERE b.user_id = 456;
