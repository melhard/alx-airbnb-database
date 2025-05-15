# SQL Join Queries – ALX Airbnb Database

## Objective
Practice and master SQL join operations using different types of joins.

## Queries Included

### 1. INNER JOIN – Bookings and Users
Retrieves all bookings along with the user who made the booking. Only matching records are returned.

### 2. LEFT JOIN – Properties and Reviews
Shows all properties and their reviews. Properties with no reviews are also included with NULL values.

### 3. FULL OUTER JOIN – Users and Bookings
Returns all users and all bookings. Includes users without bookings and bookings not linked to users.

# SQL Subqueries – ALX Airbnb Database

## Objective
Practice writing both correlated and non-correlated subqueries.

## Queries

### 1. Non-Correlated Subquery – Properties with High Ratings
Retrieves properties where the average review rating is greater than 4.0. The subquery runs independently using GROUP BY and HAVING.

### 2. Correlated Subquery – Users with More Than 3 Bookings
Retrieves users who have made more than 3 bookings. The subquery is correlated with the outer query as it references each user’s ID.

# SQL Aggregations and Window Functions – ALX Airbnb Database

## Objective
Use SQL aggregation and window functions to analyze data in the Airbnb clone database.

## Queries

### 1. Total Bookings by User
Counts the number of bookings made by each user using `COUNT()` and `GROUP BY`.

### 2. Ranking Properties by Bookings
Ranks properties based on how many bookings they received using a window function (`RANK()`).

