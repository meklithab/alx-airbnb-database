-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('uuid-2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('uuid-3', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', NULL, 'guest');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('prop-1', 'uuid-2', 'Cozy Cottage', 'A cozy cottage near the lake.', 'Lakeview, NY', 120.00),
  ('prop-2', 'uuid-2', 'Urban Apartment', 'Modern apartment in downtown.', 'New York, NY', 200.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('book-1', 'prop-1', 'uuid-1', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  ('book-2', 'prop-2', 'uuid-3', '2025-07-10', '2025-07-12', 400.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay-1', 'book-1', 480.00, 'credit_card'),
  ('pay-2', 'book-2', 400.00, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev-1', 'prop-1', 'uuid-1', 5, 'Wonderful stay! Highly recommended.'),
  ('rev-2', 'prop-2', 'uuid-3', 4, 'Great location, clean apartment.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg-1', 'uuid-1', 'uuid-2', 'Hi, is the cottage available next month?'),
  ('msg-2', 'uuid-2', 'uuid-1', 'Yes, it is available for your dates!');
