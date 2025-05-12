# Sample Data Seeding Script

## Overview

This script (`seed.sql`) populates the normalized Airbnb database with realistic sample data, including users, properties, cities, and reviews. The data is designed to simulate common use cases and support testing and development.

---

## Seeded Tables

### Countries
Adds two countries: United States and France.

### States
Includes states related to the above countries.

### Cities
Populates three cities: San Francisco, Los Angeles, and Paris.

### Users
Adds three users with distinct profiles and contact information.

### Places
Adds three property listings tied to users and cities.

### Reviews
Inserts reviews left by users for different places, with a 1–5 star rating.

---

## Example Data

- **User:** Alice Johnson  
- **Place:** Cozy SF Apartment  
- **Review:** “Loved the location and the cozy atmosphere!”  

---

## Usage

Run the script using any MySQL-compatible client after executing the schema script:

```bash
mysql -u your_user -p your_database < seed.sql
