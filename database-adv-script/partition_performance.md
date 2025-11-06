# Task 5 - Partitioning Large Tables

## 🧩 Objective
To optimize query performance on the `bookings` table by implementing table partitioning based on the `start_date` column.

---

## ⚙️ Implementation
The table was partitioned using:
```sql
PARTITION BY RANGE (YEAR(start_date))
