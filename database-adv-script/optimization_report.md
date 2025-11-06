# Task 4 - Query Optimization Report

## 🧩 Initial Query
The initial query joined four tables: `bookings`, `users`, `properties`, and `payments`.  
It retrieved all columns, which increased data load and slowed down execution.

### Example
```sql
SELECT * 
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON pay.booking_id = b.id;