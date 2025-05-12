-- Insert Countries
INSERT INTO Countries (name) VALUES
('United States'),
('France');

-- Insert States
INSERT INTO States (name, country_id) VALUES
('California', 1),
('Île-de-France', 2);

-- Insert Cities
INSERT INTO Cities (name, state_id) VALUES
('San Francisco', 1),
('Los Angeles', 1),
('Paris', 2);

-- Insert Users
INSERT INTO Users (name, email, phone_number) VALUES
('Alice Johnson', 'alice@example.com', '123-456-7890'),
('Bob Smith', 'bob@example.com', '555-123-4567'),
('Claire Dupont', 'claire@example.fr', '33-1-2345-6789');

-- Insert Places
INSERT INTO Places (name, description, price, city_id, host_id) VALUES
('Cozy SF Apartment', 'A beautiful one-bedroom apartment in San Francisco.', 120.00, 1, 1),
('LA Loft', 'Modern loft in downtown Los Angeles.', 150.00, 2, 2),
('Paris Studio', 'Charming studio in the heart of Paris.', 100.00, 3, 3);

-- Insert Reviews
INSERT INTO Reviews (user_id, place_id, review_text, rating) VALUES
(2, 1, 'Loved the location and the cozy atmosphere!', 5),
(1, 2, 'Great value and very clean.', 4),
(1, 3, 'Wonderful stay, perfect for a short trip!', 5),
(3, 1, 'Nice place, but a bit noisy at night.', 3);
