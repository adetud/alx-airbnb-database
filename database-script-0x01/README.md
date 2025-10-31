# Airbnb Database Schema

## Overview
This directory contains the SQL script (`schema.sql`) that defines the structure of the Airbnb-like database used in this project.  
The schema is designed following normalization principles up to the **Third Normal Form (3NF)** to ensure efficiency, scalability, and minimal redundancy.

## Files
- **schema.sql** — Contains the SQL commands to create all database tables and relationships.
- **README.md** — Explains the purpose and structure of the schema.

## Database Entities
1. **Users** — Stores user information such as name, email, and password.
2. **Properties** — Stores property listings with details like price, location, and description.
3. **Bookings** — Records reservations made by users for specific properties.
4. **Payments** — Handles payment information linked to bookings.
5. **Reviews** — Stores user feedback and ratings for properties.

## Relationships
- One **User** can have many **Properties**.
- One **User** can make many **Bookings**.
- Each **Booking** belongs to one **Property** and one **User**.
- Each **Booking** has one **Payment**.
- One **User** can leave many **Reviews** for different **Properties**.

## Notes
- All `id` fields are primary keys with auto-increment (`SERIAL`).
- Foreign keys enforce referential integrity and cascade deletions.
- Timestamps track when records are created.
- The schema is optimized for real-world use in an Airbnb-style system.
