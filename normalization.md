# Airbnb Database Normalization Report

## Step-by-Step Normalization

### 1. First Normal Form (1NF)

- All tables have atomic (indivisible) values.
- There are no repeating groups or arrays.


---

### 2. Second Normal Form (2NF)

- All tables are in 1NF.
- All **non-key attributes** are **fully functionally dependent** on the **entire primary key** (no partial dependencies).



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
