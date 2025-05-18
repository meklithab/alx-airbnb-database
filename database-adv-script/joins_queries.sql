
SELECT Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.status
    Booking.total_price,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email,
    User.phone_number from Booking INNER JOIN User ON Booking.user_id = User.user_id;

SELECT 
    p.property_id,
    p.name AS property_name,
    p.description,
    p.location,
    p.pricepernight,
    r.review_id,
    r.user_id AS reviewer_id,
    r.rating,
    r.comment,
    r.created_at AS review_created_at
FROM 
    Property p
LEFT JOIN 
    Review r ON p.property_id = r.property_id;



SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
