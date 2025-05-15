# 🛠 Query Optimization Report – ALX Airbnb Database

## 🎯 Objective
Refactor a complex SQL query joining bookings, users, properties, and payments to improve its performance.

---

## 🔍 Initial Query Summary
The initial query joined multiple large tables and selected many columns, which resulted in slow performance. Using `EXPLAIN`, we identified:

- Full table scans (`type: ALL`)
- No indexes used (`key: NULL`)
- High row estimates (`rows: thousands+`)

---

## 🔎 Performance Bottlenecks Identified
- Too many columns selected unnecessarily.
- Joins not using indexed columns efficiently.
- No filtering (e.g., WHERE clause), which increased cost.
- Table aliases were not used, making it harder to optimize.

---

## ✅ Optimizations Applied

### 1. Indexes Created
To improve JOIN performance:
```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_payment_id ON bookings(payment_id);
