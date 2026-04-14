# 📘 SQL Basics & Relational Database Notes

## 📌 What is a Database?

A **database** is a collection of data stored in an organized way so we can easily access and manage it.

---

## 📌 Types of Query Languages in SQL

### 1. DDL (Data Definition Language)

Used to define database structure
**Keywords:** CREATE, ALTER, DROP, TRUNCATE

---

### 2. DML (Data Manipulation Language)

Used to modify data inside tables
**Keywords:** INSERT, UPDATE, DELETE

---

### 3. DQL (Data Query Language)

Used to fetch data
**Keyword:** SELECT

---

### 4. DCL (Data Control Language)

Used to control access
**Keywords:** GRANT, REVOKE

---

### 5. TCL (Transaction Control Language)

Used to manage transactions
**Keywords:** COMMIT, ROLLBACK, SAVEPOINT

---

## 📌 Data Types in SQL

### Types of Data Types:

1. Numeric
2. String (Character)
3. Date & Time
4. Boolean

---

### Example Query (All Data Types)

```sql
CREATE TABLE example_datatypes(
id INT,                  -- Numeric
name VARCHAR(50),        -- String
created_at DATE,         -- Date
is_active BOOLEAN        -- Boolean
);
```

---

## 📌 Constraints in SQL

### Types of Constraints:

1. PRIMARY KEY
2. NOT NULL
3. UNIQUE
4. DEFAULT
5. CHECK
6. FOREIGN KEY

---

### Example Query (All Constraints)

```sql
CREATE TABLE example_constraints(
id INT PRIMARY KEY,                -- Primary Key
name VARCHAR(50) NOT NULL,         -- Not Null
email VARCHAR(100) UNIQUE,         -- Unique
salary INT DEFAULT 20000,          -- Default
age INT CHECK (age >= 18),         -- Check
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(id) -- Foreign Key
);
```

---

## 📌 Difference Between UPDATE and ALTER TABLE

### UPDATE

* Used to change **data (rows)**
* Works on table records

---

### ALTER TABLE

* Used to change **structure (columns)**
* Works on table design

---

## 📌 Foreign Key (Definition & Concept)

### Definition:

A **Foreign Key** is a column that links one table to another table’s Primary Key.

---

### Concept:

* Creates relationship between tables
* Ensures valid data
* Prevents wrong entries

---

### Important Behavior:

#### ON UPDATE CASCADE

* Updates child table automatically when parent changes

#### ON DELETE CASCADE

* Deletes child data automatically when parent is deleted

