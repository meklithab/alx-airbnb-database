-- 1. Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    Booking
GROUP BY 
    user_id;

-- 2. Use ROW_NUMBER() to rank properties based on total bookings
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
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_num_rank,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_rank
FROM 
    property_bookings;
