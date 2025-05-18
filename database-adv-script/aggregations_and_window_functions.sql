-- 1. Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;

-- 2. Rank properties based on the total number of bookings using a window function
WITH property_bookings AS (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        Booking
    GROUP BY 
        property_id
)
SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM 
    property_bookings;
