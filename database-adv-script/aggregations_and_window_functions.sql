-- 1. Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(booking_id) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;

-- 2. Rank properties based on total number of bookings
SELECT 
    property_id,
    COUNT(booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank
FROM 
    Booking
GROUP BY 
    property_id;
