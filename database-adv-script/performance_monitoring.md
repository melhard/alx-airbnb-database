# Database Performance Monitoring Report – ALX Airbnb

## Objective
Monitor and improve performance of frequently used queries in the Airbnb clone database by analyzing execution plans and adjusting indexes or schema.

---

## Tools Used
- `EXPLAIN ANALYZE` (PostgreSQL or MySQL 8+)
- `SHOW PROFILE` (MySQL pre-8.0)
- Manual query time comparisons

---

## Query Analyzed
```sql
SELECT 
    b.id, u.name, p.name, b.start_date, b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE b.start_date BETWEEN '2023-01-01' AND '2023-12-31';
