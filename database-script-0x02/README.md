# 🏡 Property Rental Sample Database

This repository contains a sample dataset for a **Property Rental Platform**, including users, property listings, bookings, payments, reviews, and user messages. It can be used for testing, learning, or backend API development.

---

## 📋 Sample Data Overview

This dataset includes:
- 👤 3 Users (guests and a host)
- 🏠 2 Property Listings
- 📅 2 Bookings
- 💳 2 Payments
- 🌟 2 Reviews
- 💬 2 User Messages

---

## 🧩 Table Data

### 👤 Users

| user_id | first_name | last_name | email              | role  |
|---------|------------|-----------|--------------------|-------|
| uuid-1  | Alice      | Smith     | alice@example.com  | guest |
| uuid-2  | Bob        | Johnson   | bob@example.com    | host  |
| uuid-3  | Charlie    | Brown     | charlie@example.com| guest |

---

### 🏠 Properties

| property_id | name            | location     | price/night | host_id |
|-------------|------------------|--------------|-------------|---------|
| prop-1      | Cozy Cottage     | Lakeview, NY | $120.00     | uuid-2  |
| prop-2      | Urban Apartment  | New York, NY | $200.00     | uuid-2  |

---

### 📅 Bookings

| booking_id | user_id | property_id | start_date | end_date   | status     |
|------------|---------|-------------|------------|------------|------------|
| book-1     | uuid-1  | prop-1      | 2025-06-01 | 2025-06-05 | confirmed  |
| book-2     | uuid-3  | prop-2      | 2025-07-10 | 2025-07-12 | pending    |

---

### 💳 Payments

| payment_id | booking_id | amount | method      |
|------------|-------------|--------|-------------|
| pay-1      | book-1      | $480   | credit_card |
| pay-2      | book-2      | $400   | paypal      |

---

### 🌟 Reviews

| review_id | user_id | property_id | rating | comment                          |
|-----------|---------|-------------|--------|----------------------------------|
| rev-1     | uuid-1  | prop-1      | 5      | Wonderful stay! Highly recommended. |
| rev-2     | uuid-3  | prop-2      | 4      | Great location, clean apartment.   |

---

### 💬 Messages

| message_id | sender_id | recipient_id | message_body                                  |
|------------|-----------|---------------|-----------------------------------------------|
| msg-1      | uuid-1    | uuid-2        | Hi, is the cottage available next month?      |
| msg-2      | uuid-2    | uuid-1        | Yes, it is available for your dates!          |

---

## 📄 License

This project is open-source and free to use under the MIT License.
