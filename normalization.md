# Normalization

**1NF:**  
All attributes hold atomic values (e.g., address split into street, city, state). No lists or repeating groups.

**2NF:**  
All non-key attributes depend entirely on the primary key (each table has one-column primary key).

**3NF:**  
No transitive dependencies. Example: property owner info is stored in `users`, not repeated in `properties`.

All tables meet 3NF.
