# Airbnb Database Schema (SQL)

## Objective

This directory contains SQL scripts to define and set up the Airbnb database schema using `CREATE TABLE` statements. The design ensures data normalization, integrity through constraints, and performance through indexing.

---

## Files

- **schema.sql**: Contains all SQL `CREATE TABLE` statements and index definitions.
- **README.md**: Describes the purpose and structure of the schema.

---

## Entities & Relationships

The database includes the following entities:

1. **User**: Stores user account details.
2. **Property**: Details of properties listed by hosts.
3. **Booking**: User bookings for properties.
4. **Payment**: Payment information tied to bookings.
5. **Review**: Reviews submitted by users for properties.
6. **Message**: Private messages between users.

---

## Constraints

- Primary and foreign key constraints ensure referential integrity.
- `UNIQUE`, `NOT NULL`, `CHECK`, and `ENUM` constraints enforce valid data input.

---

## Indexes

To improve query performance:
- Index on `User.email`
- Indexes on foreign keys (`host_id`, `property_id`, `booking_id`, etc.)

---

## Usage

To create the database schema:

```bash
psql -d your_database_name -f schema.sql
