-- Index on user_id in bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on start_date in bookings table
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index on name in properties table (for ORDER BY or search)
CREATE INDEX idx_properties_name ON properties(name);
