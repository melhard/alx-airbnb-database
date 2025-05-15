# Partitioning Performance Report – ALX Airbnb Database

## Objective
Optimize performance on the large `bookings` table by implementing table partitioning based on the `start_date` column.

---

## Implementation

Partitioned the `bookings` table by year using:

```sql
PARTITION BY RANGE (YEAR(start_date))
