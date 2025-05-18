# Performance Monitoring and Refinement Report

## 1. Monitored Queries

### Query A: Fetch bookings with user and property details for a date range
```sql
EXPLAIN ANALYZE
SELECT b.booking_id, b.start_date, b.end_date, u.name, p.name
FROM Booking b
JOIN Users u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE b.start_date BETWEEN '2024-01-01' AND '2024-12-31';
