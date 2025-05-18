# Query Performance Optimization Report

## Initial Query

The initial query retrieves all bookings with related user details, property details, and payment details by joining Booking, User, Property, and Payment tables.

## Performance Analysis

Using `EXPLAIN ANALYZE` on the initial query revealed the following:

- Several sequential scans on Booking and Payment tables due to missing indexes.
- Joins on large tables without filters caused high execution time.
- Payment LEFT JOIN may cause additional overhead if payments are missing for many bookings.

## Identified Issues

- Lack of indexes on foreign key columns (`Booking.user_id`, `Booking.property_id`, `Payment.booking_id`).
- No filtering on booking status or date, causing a large number of rows to be processed.
- Retrieving all columns including potentially unnecessary payment details.
