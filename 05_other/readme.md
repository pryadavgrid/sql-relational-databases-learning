# 📘 SQL Concepts: UNION, Subquery, MySQL View

---

## 📌 1. UNION

### 🔹 What is UNION?

**UNION** is used to combine the result of **two or more SELECT queries** into a single result.

👉 It removes duplicate records by default.

---

### 🔹 Rules of UNION

* All SELECT queries must have **same number of columns**
* Columns must have **same data types**
* Order of columns must be the same

---

### 🔹 Example:

```sql
SELECT name FROM students
UNION
SELECT name FROM teachers;
```

---

### 🔹 UNION ALL

* Same as UNION
* But **includes duplicate values**

```sql
SELECT name FROM students
UNION ALL
SELECT name FROM teachers;
```

---

## 📌 2. Subquery

### 🔹 What is Subquery?

A **Subquery** is a query inside another query.

👉 It is also called a **nested query**.

---

### 🔹 Why Use Subquery?

* To perform operations in steps
* To filter data using another query result
* To make complex queries easier

---

### 🔹 Example:

```sql
SELECT name
FROM students
WHERE marks > (
    SELECT AVG(marks) FROM students
);
```

👉 This query finds students with marks greater than average.

---

### 🔹 Types of Subqueries

* Single-row subquery
* Multi-row subquery
* Correlated subquery

---

## 📌 3. MySQL View

### 🔹 What is a View?

A **View** is a **virtual table** based on a SQL query.

👉 It does not store data physically, it shows data from one or more tables.

---

### 🔹 Why Use View?

* To show only required data
* To improve security (hide sensitive columns)
* To simplify complex queries
* To reuse queries

---

### 🔹 Example:

```sql
CREATE VIEW student_view AS
SELECT name, marks FROM students;
```

👉 Now you can use:

```sql
SELECT * FROM student_view;
```

---

### 🔹 Key Points

* View does not store data
* Always shows updated data from base tables
* Can be used like a normal table
* Helps in clean and readable queries

---

## 🚀 Conclusion

* **UNION** → Combine multiple SELECT results
* **Subquery** → Query inside another query
* **View** → Virtual table for simplified access

---

💡 Tip: Practice these concepts with real tables to understand better.
