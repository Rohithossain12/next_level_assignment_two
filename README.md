## 🧩 What is PostgreSQL?

**PostgreSQL** is a **free and open-source database system** that supports both **relational (SQL)** and **non-relational (JSON)** queries.

PostgreSQL is a back-end database for dynamic websites and web applications.

---

## 🧩 Explain the Primary Key and Foreign Key concepts in PostgreSQL.

A **Primary Key** is a column or set of columns in a table that uniquely identifies each row. It cannot have duplicate or NULL values. Every table can have only one primary key.

### Example:

```
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
## 🧩 Explain the purpose of the WHERE clause in a SELECT statement.

The **WHERE** clause is used in a **SELECT** statement to filter records and specify which rows to retrieve based on a given condition. It helps to get only the data that meets certain criteria, making queries more precise and efficient.

### Example:

```
SELECT * FROM students
WHERE age > 18;

```

---
## 🧩 Explain the purpose of the WHERE clause in a SELECT statement.

The **LIMIT** and **OFFSET** clauses are used in **SQL** queries to control the number of rows returned and to skip a certain number of rows before starting to return rows.

- **LIMIT** specifies the maximum number of rows to return.
- **OFFSET** specifies the number of rows to skip before starting to return rows.
Together, they are often used for pagination — showing a subset of results per page.

### Example:

```
SELECT * FROM students
LIMIT 5 OFFSET 10;

```
---

## 🧩 How can you modify data using UPDATE statements?

The UPDATE statement in PostgreSQL is used to change existing data within a table. It allows you to modify one or more columns for rows that match a specific condition.

### Key points:
- Specify the table you want to update.
- Use the SET clause to assign new values to one or more columns.
- Use the WHERE clause to define which rows should be updated. Without a WHERE clause, all rows in the table will be updated.

### Syntax:

```
UPDATE table_name
SET column1 = new_value1, column2 = new_value2, ...
WHERE condition;

```
### Example:

```
UPDATE students
SET age = 21
WHERE student_id = 5;

```

---
