# ERD Requirements

**Entities:**
- User: represents system users.
- Property: represents a listed house.
- Booking: represents a reservation made by a user.
- Payment: represents money transactions for bookings.
- Review: represents feedback users give to properties.

**Relationships:**
- User (1) --- (many) Property
- User (1) --- (many) Booking
- Property (1) --- (many) Booking
- Booking (1) --- (1) Payment
- Property (1) --- (many) Review
- User (1) --- (many) Review
