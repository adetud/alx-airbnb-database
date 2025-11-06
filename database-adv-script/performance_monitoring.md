# Task 6 - Monitor and Refine Database Performance

## 🧩 Objective
To monitor query performance using SQL tools (`EXPLAIN ANALYZE`, `SHOW PROFILE`) and refine the database by applying indexing and schema improvements.

---

## ⚙️ Tools Used
- **EXPLAIN ANALYZE:** Shows how MySQL executes queries and how long each step takes.  
- **SHOW PROFILE:** Displays CPU, memory, and I/O usage for a specific query.  

---

## 🧪 Example Queries Monitored

### 1️⃣ Booking Query (Before Optimization)
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;