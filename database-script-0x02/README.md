# Airbnb Database Seed Data

## Overview
This directory contains the SQL script (`seed.sql`) that populates the Airbnb-like database with sample data.  
It is designed to simulate realistic scenarios for users, properties, bookings, payments, and reviews.

## Files
- **seed.sql** — Contains SQL `INSERT` statements that add sample records into each table.
- **README.md** — Explains the purpose and structure of the seed script.

## Sample Data Overview

### Users
Includes 3 sample users:
- Daniel Adetu (Host)
- Mary Johnson
- Ahmed Musa

### Properties
Each property belongs to a user:
- Cozy Apartment in Lagos
- Luxury Villa in Abuja
- Modern Studio in Nairobi

### Bookings
Each booking connects a user and a property:
- Mary booked Daniel’s apartment (confirmed)
- Ahmed booked Mary’s villa (pending)
- Daniel booked Ahmed’s studio (cancelled)

### Payments
Linked to bookings with different statuses:
- Completed, Pending, Refunded

### Reviews
Users give ratings and comments on properties they stayed in.

## Notes
- The script assumes the schema from `database-script-0x01/schema.sql` has already been created.
- All foreign key relationships are respected.
- You can modify or expand the data for more testing.
