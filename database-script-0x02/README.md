# Airbnb Database Sample Data Seeder

## Objective

This script populates the Airbnb relational database with sample data that simulates realistic user and booking behavior.

---

## Files

- **seed.sql**: Contains SQL `INSERT` statements for populating each table.
- **README.md**: Documentation for the seed script.

---

## Data Coverage

### Tables Seeded:
- **User**: 3 users (2 guests, 1 host)
- **Property**: 2 properties owned by the host
- **Booking**: 2 bookings (1 confirmed, 1 pending)
- **Payment**: Corresponding payments for bookings
- **Review**: Guest feedback on properties
- **Message**: Communication between guest and host

---

## Usage

To populate your database:

```bash
psql -d your_database_name -f seed.sql
