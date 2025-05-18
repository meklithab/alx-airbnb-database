# Index Performance Report

## Objective
Improve query performance by creating indexes on high-usage columns in the `User`, `Booking`, and `Property` tables.

---

## Identified High-Usage Columns

| Table     | Column        | Reason                                  |
|-----------|---------------|------------------------------------------|
| User      | email         | Used in login and lookup operations      |
| Booking   | user_id       | Used in WHERE and JOIN conditions        |
| Booking   | property_id   | Used in JOINs with Property table        |
| Property  | location      | Frequently filtered in searches          |
| Property  | host_id       | Used in JOINs with User table            |

---

## Indexes Created

```sql
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
