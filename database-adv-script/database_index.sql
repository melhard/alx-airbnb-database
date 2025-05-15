-- Index for the primary key of the users table
CREATE INDEX idx_users_id ON users (id);

-- Index on the user_id foreign key in the bookings table
CREATE INDEX idx_bookings_user_id ON bookings (user_id);

-- Index on the property_id foreign key in the bookings table
CREATE INDEX idx_bookings_property_id ON bookings (property_id);

-- Index for the primary key of the properties table
CREATE INDEX idx_properties_id ON properties (id);

-- Measurement of query performance BEFORE adding indexes:
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 123;
-- EXPLAIN SELECT p.* FROM properties p JOIN bookings b ON p.id = b.property_id WHERE b.user_id = 456;

-- If using PostgreSQL, include ANALYZE:
-- ANALYZE bookings;
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 123;
-- ANALYZE properties;
-- EXPLAIN SELECT p.* FROM properties p JOIN bookings b ON p.id = b.property_id WHERE b.user_id = 456;

-- Measurement of query performance AFTER adding indexes (same queries):
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 123;
-- EXPLAIN SELECT p.* FROM properties p JOIN bookings b ON p.id = b.property_id WHERE b.user_id = 456;
