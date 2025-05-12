-- Users Table
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone_number VARCHAR(20)
);

-- Countries Table
CREATE TABLE Countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- States Table
CREATE TABLE States (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES Countries(id)
);

-- Cities Table
CREATE TABLE Cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    state_id INT NOT NULL,
    FOREIGN KEY (state_id) REFERENCES States(id)
);

-- Places Table
CREATE TABLE Places (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    city_id INT NOT NULL,
    host_id INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES Cities(id),
    FOREIGN KEY (host_id) REFERENCES Users(id)
);

-- Reviews Table
CREATE TABLE Reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    place_id INT NOT NULL,
    review_text TEXT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (place_id) REFERENCES Places(id)
);

-- Indexes for performance
CREATE INDEX idx_places_city_id ON Places(city_id);
CREATE INDEX idx_places_host_id ON Places(host_id);
CREATE INDEX idx_reviews_user_id ON Reviews(user_id);
CREATE INDEX idx_reviews_place_id ON Reviews(place_id);
CREATE INDEX idx_cities_state_id ON Cities(state_id);
CREATE INDEX idx_states_country_id ON States(country_id);

