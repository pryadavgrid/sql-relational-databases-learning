# 🔗 SQL Joins (Relational Database)

## 📌 What is Join in Database?

A **JOIN** is used to combine data from **two or more tables** based on a related column (usually a key).

👉 It helps to fetch data from multiple tables in a single query.

---

## 📌 Why We Use Join?

We use JOIN because:

* 🔹 Data is stored in multiple tables
* 🔹 To avoid data duplication
* 🔹 To get combined information easily
* 🔹 To maintain relationships between tables

👉 Example:

* Student table + Marks table → Get full student details

---

## 📌 Types of Joins (Definition Only)

### 1. INNER JOIN

Returns only the **matching records** from both tables.

---

### 2. LEFT JOIN (LEFT OUTER JOIN)

Returns **all records from the left table** and matching records from the right table.
If no match → NULL values.

---

### 3. RIGHT JOIN (RIGHT OUTER JOIN)

Returns **all records from the right table** and matching records from the left table.
If no match → NULL values.

---

### 4. FULL JOIN (FULL OUTER JOIN)

Returns **all records from both tables**.
If no match → NULL values on either side.

---

### 5. EXCLUSIVE LEFT JOIN

Returns **only unmatched records from the left table**.

---

### 6. EXCLUSIVE RIGHT JOIN

Returns **only unmatched records from the right table**.

---

### 7. EXCLUSIVE FULL JOIN

Returns **only unmatched records from both tables** (no matching records).

---

### 8. SELF JOIN

A **SELF JOIN** is when a table is joined with itself.

---

## 📌 Important Tips

* 🔹 Always use **ON condition** to define relationship between tables
* 🔹 Use proper **Primary Key and Foreign Key** for better joins
* 🔹 INNER JOIN is most commonly used
* 🔹 LEFT JOIN is useful when you want all data from one table
* 🔹 Be careful with NULL values in joins
* 🔹 Use table aliases (short names) for better readability
* 🔹 Avoid unnecessary joins → improves performance
* 🔹 Understand data before applying joins

---

## 🚀 Conclusion

* JOIN is used to combine data from multiple tables
* Different joins are used based on requirement
* Proper use of joins makes queries powerful and efficient
