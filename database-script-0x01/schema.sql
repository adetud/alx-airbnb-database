-- Create Users table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create Properties table
CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER REFERENCES users(id),
  title VARCHAR(100),
  description TEXT,
  price_per_night NUMERIC(10,2),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  created_at TIMESTAMP DEFAULT NOW()
);

-- Create Bookings table
CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  guest_id INTEGER REFERENCES users(id),
  property_id INTEGER REFERENCES properties(id),
  start_date DATE,
  end_date DATE,
  status VARCHAR(20)
);

-- Create Payments table
CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  booking_id INTEGER UNIQUE REFERENCES bookings(id),
  amount NUMERIC(10,2),
  method VARCHAR(20),
  status VARCHAR(20),
  paid_at TIMESTAMP DEFAULT NOW()
);

-- Create Reviews table
CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  reviewer_id INTEGER REFERENCES users(id),
  property_id INTEGER REFERENCES properties(id),
  rating INTEGER CHECK (rating BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP DEFAULT NOW()
);
