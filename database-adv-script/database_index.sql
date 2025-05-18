-- USER table indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_id ON User(user_id);  -- although user_id is PK, indexing here for clarity

-- PROPERTY table indexes
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_host_id ON Property(host_id);

-- BOOKING table indexes
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_id ON Booking(booking_id);  -- already PK, but explicitly listed

-- USER email
EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'test@example.com';

CREATE INDEX idx_user_email ON User(email);

EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'test@example.com';

-- PROPERTY location
EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'New York';

CREATE INDEX idx_property_location ON Property(location);

EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'New York';

-- BOOKING user_id
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'some-user-id';

CREATE INDEX idx_booking_user_id ON Booking(user_id);

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'some-user-id';
