# Airbnb Database Schema

## Overview

This SQL script defines the database schema for an Airbnb-like application. The schema follows third normal form (3NF) and includes all necessary constraints, data types, and indexes to ensure data integrity and optimal performance.

---

## Tables and Relationships

### Users
Stores user information.

- `id`: Primary key
- `name`: User's full name
- `email`: Unique email address
- `phone_number`: Optional phone contact

### Countries
Defines countries.

- `id`: Primary key
- `name`: Country name (unique)

### States
Defines states within countries.

- `id`: Primary key
- `name`: State name
- `country_id`: Foreign key referencing `Countries(id)`

### Cities
Defines cities within states.

- `id`: Primary key
- `name`: City name
- `state_id`: Foreign key referencing `States(id)`

### Places
Represents listed rental places.

- `id`: Primary key
- `name`, `description`, `price`
- `city_id`: Foreign key to `Cities`
- `host_id`: Foreign key to `Users`

### Reviews
Stores reviews for places.

- `id`: Primary key
- `user_id`: Foreign key to `Users`
- `place_id`: Foreign key to `Places`
- `review_text`, `rating`: Review content and score (1–5)

---

## Indexes

Indexes are added on frequently queried foreign key columns:

- `Places.city_id`, `Places.host_id`
- `Reviews.user_id`, `Reviews.place_id`
- `Cities.state_id`
- `States.country_id`

---

## Notes

- The schema is designed to minimize redundancy and improve scalability.
- All foreign key relationships enforce referential integrity.
- Ratings are constrained to be between 1 and 5.

---

## Author

Project: `alx-airbnb-database`  
Directory: `database-script-0x01`  
