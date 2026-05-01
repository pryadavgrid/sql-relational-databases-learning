# MySQL Stored Procedures

## 📌 What is a Stored Procedure?

A Stored Procedure is a saved SQL block (like a function) that we can reuse anytime.

👉 Instead of writing the same query again and again, we create a procedure and call it.

---

## 📌 Why use Stored Procedures?

- Reusable code
- Cleaner SQL
- Better performance (precompiled)
- Secure (control access)

---

## 📌 DELIMITER Concept

By default MySQL uses `;` to end a query.

But inside a procedure we use many `;`

👉 So we change delimiter:

```

DELIMITER $$

```

Then reset back:

```

DELIMITER ;

```

---

## 📌 Basic Syntax

```

DELIMITER $$

CREATE PROCEDURE procedure_name()
BEGIN
SQL statements;
END $$

DELIMITER ;

```

---

## 📌 Example 1: Simple Procedure

```

CREATE PROCEDURE first_procedure()
BEGIN
SELECT * FROM users;
END

```

👉 Call:
```

CALL first_procedure();

```

---

## 📌 Example 2: Procedure with Parameters

```

CREATE PROCEDURE AddUser(
IN p_name VARCHAR(100),
IN p_email VARCHAR(100),
IN p_gender ENUM('Male', 'Female', 'Other'),
IN p_dob DATE,
IN p_salary INT
)

```

👉 Insert data dynamically

---

## 📌 Keywords Explanation

### 🔹 CREATE PROCEDURE
Used to create a new procedure.

### 🔹 BEGIN ... END
Defines the block of SQL code.

### 🔹 IN
Input parameter (value comes from user)

### 🔹 CALL
Used to execute the procedure

```

CALL AddUser(...);

```

### 🔹 SHOW PROCEDURE STATUS
Shows all procedures in database

```

SHOW PROCEDURE STATUS WHERE Db='college';

```

### 🔹 DROP PROCEDURE
Deletes a procedure

```

DROP PROCEDURE IF EXISTS AddUser;

```

---

## 📌 Use Cases

- Insert data with logic
- Reuse queries
- Data validation
- Business logic inside database
- Reduce backend code

---

## 📌 Real Life Example

Instead of writing:

```

INSERT INTO users ...

```

again and again ❌

We create:

```

CALL AddUser(...)

```

✅ Easy and clean

---

## 📌 Summary

Stored Procedures help you:
- Write less code
- Reuse logic
- Improve performance
- Keep SQL organized
