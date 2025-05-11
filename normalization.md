# Airbnb Database Normalization Report

## Objective

Ensure the Airbnb database schema is normalized up to **Third Normal Form (3NF)** by eliminating redundancy and ensuring all attributes depend only on the primary key.

---

## What is 3NF?

A relation is in **Third Normal Form (3NF)** if:

1. It is in **Second Normal Form (2NF)**.
2. It has **no transitive dependencies** (i.e., non-prime attributes are not dependent on other non-prime attributes).

---

## Step-by-Step Normalization

### 1. First Normal Form (1NF)

- All tables have atomic (indivisible) values.
- There are no repeating groups or arrays.

✅ **Status**: All tables satisfy 1NF.

---

### 2. Second Normal Form (2NF)

- All tables are in 1NF.
- All **non-key attributes** are **fully functionally dependent** on the **entire primary key** (no partial dependencies).

✅ **Status**: All tables satisfy 2NF because:
- All primary keys are single-attribute UUIDs.
- Non-key attributes depend fully on the primary key.

---

### 3. Third Normal Form (3NF)

- All tables are in 2NF.
- No **transitive dependencies** exist between non-key attributes.

### Table-by-Table Analysis:

#### ✅ User
- All attributes depend directly on `user_id`.
- No transitive dependencies.

#### ✅ Property
- Attributes like `name`, `description`, and `location` depend directly on `property_id`.
- `host_id` is a foreign key — not a transitive dependency.
- No derived or redundant attributes.

#### ✅ Booking
- All attributes depend directly on `booking_id`.
- No fields are dependent on anything other than the primary key.
- `total_price` is stored — assumed to be fixed at the time of booking (not redundant).

#### ✅ Payment
- `amount`, `payment_method` depend directly on `payment_id`.
- `booking_id` is a foreign key — no transitive dependency.
- All fields are appropriate.

#### ✅ Review
- All fields depend directly on `review_id`.
- Foreign keys are valid.
- `rating` is validated but not redundant.

#### ✅ Message
- All attributes depend directly on `message_id`.
- No transitive dependencies.

---

## Summary of Adjustments

No changes were needed in the current design. The schema already satisfies **3NF** by design:

- Atomic and non-redundant fields
- Proper use of foreign keys
- No derived or transitively dependent attributes stored

---

## Recommendation

If further performance tuning is needed, consider:

- Creating materialized views or computed fields **outside** the core schema
- Adding additional indexes based on query patterns (not related to normalization)

---

**© 2025 ALX - All rights reserved**
