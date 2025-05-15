# Indexing for Performance – ALX Airbnb Database

## Objective
Improve query performance by creating indexes on high-usage columns in the database.

## Indexes Created

### 1. `bookings(user_id)`
Used in JOINs and WHERE clauses to filter bookings by user.

### 2. `bookings(property_id)`
Used in JOINs to link bookings to properties.

### 3. `bookings(start_date)`
Helps filter bookings by date range.

### 4. `properties(name)`
Used in ORDER BY and search queries.

## Performance Test

### Query Before Index
```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 42;
