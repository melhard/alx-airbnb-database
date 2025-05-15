-- Index for the primary key of the users table (usually created automatically, but good to be explicit)
CREATE INDEX idx_users_id ON users (id);

-- Index on the user_id foreign key in the bookings table
CREATE INDEX idx_bookings_user_id ON bookings (user_id);

-- Index on the property_id foreign key in the bookings table
CREATE INDEX idx_bookings_property_id ON bookings (property_id);

-- Index for the primary key of the properties table
CREATE INDEX idx_properties_id ON properties (id);

-- Consider adding indexes on other frequently queried columns in bookings,
-- for example, if you often filter by booking start or end dates:
-- CREATE INDEX idx_bookings_start_date ON bookings (start_date);
-- CREATE INDEX idx_bookings_end_date ON bookings (end_date);
