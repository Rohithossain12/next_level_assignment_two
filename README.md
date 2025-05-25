## 🧩 What is PostgreSQL?

**PostgreSQL** is a **free and open-source database system** that supports both **relational (SQL)** and **non-relational (JSON)** queries.

PostgreSQL is a back-end database for dynamic websites and web applications.

---

## 🧩 Explain the Primary Key and Foreign Key concepts in PostgreSQL.

A **Primary Key** is a column or set of columns in a table that uniquely identifies each row. It cannot have duplicate or NULL values. Every table can have only one primary key.

### Example:
```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
```
A **Foreign Key** is a column or set of columns in one table that refers to the Primary Key in another table. It creates a link between two tables and ensures data consistency.

### Example:
```
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

```
---
