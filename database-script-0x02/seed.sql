-- seed.sql
-- Sample data to populate the Airbnb database

-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashedpwd1', '1234567890', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashedpwd2', '0987654321', 'host'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol@example.com', 'hashedpwd3', NULL, 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '22222222-2222-2222-2222-222222222222', 'Beachside Bungalow', 'A lovely home by the beach.', 'Miami, FL', 150.00),
('bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '22222222-2222-2222-2222-222222222222', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Aspen, CO', 200.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bkg11111-b111-1111-b111-b111bkg11111', 'aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '11111111-1111-1111-1111-111111111111', '2025-06-01', '2025-06-05', 600.00, 'confirmed'),
('bkg22222-b222-2222-b222-b222bkg22222', 'bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '33333333-3333-3333-3333-333333333333', '2025-07-10', '2025-07-12', 400.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay11111-p111-1111-p111-p111pay11111', 'bkg11111-b111-1111-b111-b111bkg11111', 600.00, 'credit_card'),
('pay22222-p222-2222-p222-p222pay22222', 'bkg22222-b222-2222-b222-b222bkg22222', 400.00, 'paypa
