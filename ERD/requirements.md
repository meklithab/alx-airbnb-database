
# ALX Airbnb Database Requirements

This document outlines the database schema, including entities, attributes, constraints, and indexing used in the ALX Airbnb Clone project.

---

## Entities and Attributes

### 1. User

- `user_id` — UUID, Primary Key, Indexed  
- `first_name` — VARCHAR, Not Null  
- `last_name` — VARCHAR, Not Null  
- `email` — VARCHAR, Unique, Not Null  
- `password_hash` — VARCHAR, Not Null  
- `phone_number` — VARCHAR, Nullable  
- `role` — ENUM('guest', 'host', 'admin'), Not Null  
- `created_at` — TIMESTAMP, Default: CURRENT_TIMESTAMP

---

### 2. Property

- `property_id` — UUID, Primary Key, Indexed  
- `host_id` — Foreign Key → User(user_id)  
- `name` — VARCHAR, Not Null  
- `description` — TEXT, Not Null  
- `location` — VARCHAR, Not Null  
- `pricepernight` — DECIMAL, Not Null  
- `created_at` — TIMESTAMP, Default: CURRENT_TIMESTAMP  
- `updated_at` — TIMESTAMP, On Update: CURRENT_TIMESTAMP

---

### 3. Booking

- `booking_id` — UUID, Primary Key, Indexed  
- `property_id` — Foreign Key → Property(property_id)  
- `user_id` — Foreign Key → User(user_id)  
- `start_date` — DATE, Not Null  
- `end_date` — DATE, Not Null  
- `total_price` — DECIMAL, Not Null  
- `status` — ENUM('pending', 'confirmed', 'canceled'), Not Null  
- `created_at` — TIMESTAMP, Default: CURRENT_TIMESTAMP

---

### 4. Payment

- `payment_id` — UUID, Primary Key, Indexed  
- `booking_id` — Foreign Key → Booking(booking_id)  
- `amount` — DECIMAL, Not Null  
- `payment_date` — TIMESTAMP, Default: CURRENT_TIMESTAMP  
- `payment_method` — ENUM('credit_card', 'paypal', 'stripe'), Not Null

---

### 5. Review

- `review_id` — UUID, Primary Key, Indexed  
- `property_id` — Foreign Key → Property(property_id)  
- `user_id` — Foreign Key → User(user_id)  
- `rating` — INTEGER, Not Null, CHECK: rating BETWEEN 1 AND 5  
- `comment` — TEXT, Not Null  
- `created_at` — TIMESTAMP, Default: CURRENT_TIMESTAMP

---

### 6. Message

- `message_id` — UUID, Primary Key, Indexed  
- `sender_id` — Foreign Key → User(user_id)  
- `recipient_id` — Foreign Key → User(user_id)  
- `message_body` — TEXT, Not Null  
- `sent_at` — TIMESTAMP, Default: CURRENT_TIMESTAMP

---

## Constraints

- **Unique**: `User.email`  
- **Non-Null**: All fields unless explicitly marked as nullable  
- **Foreign Key Relationships**:
  - `Property.host_id` → `User.user_id`
  - `Booking.property_id` → `Property.property_id`
  - `Booking.user_id` → `User.user_id`
  - `Payment.booking_id` → `Booking.booking_id`
  - `Review.property_id` → `Property.property_id`
  - `Review.user_id` → `User.user_id`
  - `Message.sender_id` → `User.user_id`
  - `Message.recipient_id` → `User.user_id`
- **ENUM Values**:
  - `User.role`: guest, host, admin
  - `Booking.status`: pending, confirmed, canceled
  - `Payment.payment_method`: credit_card, paypal, stripe
- **Rating** must be between 1 and 5

---

## Indexing

- All primary keys are indexed by default  
- Additional indexes:
  - `User.email`
  - `Property.property_id`
  - `Booking.property_id`, `booking_id`
  - `Payment.booking_id`

---
