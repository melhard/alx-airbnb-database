# Database Normalization to 3NF

## Objective

To apply normalization principles to the database schema in order to ensure it conforms to **Third Normal Form (3NF)** by eliminating data redundancy and ensuring data integrity.

---

## Initial Schema Overview

Example tables in the original schema:

- **Users**(`id`, `name`, `email`, `phone_number`)
- **Places**(`id`, `name`, `description`, `price`, `location`, `host_id`)
- **Reviews**(`id`, `user_id`, `place_id`, `review_text`, `rating`, `user_email`)
- **Cities**(`id`, `name`, `state`, `country`)

---

## Step-by-Step Normalization

### 🔹 First Normal Form (1NF)

**Goal:** Eliminate repeating groups and ensure atomicity.

- Each table has a primary key.
- All fields contain only atomic (indivisible) values.

✅ Already satisfied.

---

### 🔹 Second Normal Form (2NF)

**Goal:** Remove partial dependencies (i.e., no non-key attribute should depend on part of a composite primary key).

- In our schema, all tables have single-column primary keys.
- No partial dependencies exist.

✅ Already satisfied.

---

### 🔹 Third Normal Form (3NF)

**Goal:** Remove transitive dependencies. Non-key attributes should not depend on other non-key attributes.

### Issues Identified:
1. In the `Reviews` table, `user_email` is redundant since it already exists in the `Users` table.
2. In the `Places` table, `location` may be a composite string or redundant with a separate `Cities` table.
3. In the `Cities` table, if `state` and `country` are repeated often, consider separating into `States` and `Countries` for normalization.

---

## Updated Schema (Normalized to 3NF)

### `Users`
- `id` (PK)
- `name`
- `email`
- `phone_number`

### `Places`
- `id` (PK)
- `name`
- `description`
- `price`
- `city_id` (FK to Cities)
- `host_id` (FK to Users)

### `Cities`
- `id` (PK)
- `name`
- `state_id` (FK to States)

### `States`
- `id` (PK)
- `name`
- `country_id` (FK to Countries)

### `Countries`
- `id` (PK)
- `name`

### `Reviews`
- `id` (PK)
- `user_id` (FK to Users)
- `place_id` (FK to Places)
- `review_text`
- `rating`

---

## Summary of Changes

| Issue | Fix |
|------|-----|
| Redundant `user_email` in `Reviews` | Removed and linked only via `user_id` |
| `location` in `Places` not normalized | Replaced with `city_id` foreign key |
| Repeated `state` and `country` in `Cities` | Separated into `States` and `Countries` tables |
| Transitive dependencies | Eliminated by introducing foreign keys to normalized tables |

---

## Conclusion

The schema is now in **Third Normal Form (3NF)**:
- Each table contains data about a single entity.
- All non-key attributes fully depend on the primary key.
- Transitive dependencies have been removed.
- Redundancy is minimized, improving data integrity and scalability.

