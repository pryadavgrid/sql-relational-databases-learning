# MySQL Trigger Example

## 📌 What is a Trigger?

A Trigger is a special type of stored program in MySQL.

It runs automatically when an event happens in a table.

👉 Example:
- When INSERT happens → trigger runs
- When UPDATE happens → trigger runs
- When DELETE happens → trigger runs


---

## 📌 Types of Triggers

1. BEFORE INSERT
2. AFTER INSERT
3. BEFORE UPDATE
4. AFTER UPDATE
5. BEFORE DELETE
6. AFTER DELETE


---

## 📌 What We Built

We created:

1. `users` table (already exists)
2. `user_log` table → stores logs
3. Trigger → automatically logs user insert


---

## 📌 How It Works

Step 1:
User inserts data into `users` table

Step 2:
Trigger `after_user_insert` runs automatically

Step 3:
Data is inserted into `user_log` table


---

## 📌 Important Keywords

### 1. TRIGGER
Used to create a trigger

Example:
CREATE TRIGGER trigger_name


---

### 2. AFTER INSERT
Runs after data is inserted

Example:
AFTER INSERT ON users


---

### 3. FOR EACH ROW
Trigger runs for every row inserted

---

### 4. NEW Keyword
Used to access new inserted data

Example:
NEW.id
NEW.name


---

### 5. DELIMITER
Changes the end symbol temporarily

Why?
Because trigger uses multiple `;`

Example:
DELIMITER $$


---

### 6. DROP TRIGGER
Deletes trigger

Example:
DROP TRIGGER IF EXISTS trigger_name;


---

## 📌 Example Flow

INSERT INTO users → Trigger runs → Data saved in user_log


---

## 📌 Use Cases

- Audit logs
- Tracking changes
- Security logging
- Auto backup of important data


---

## 📌 Final Summary

- Trigger runs automatically
- No need to call manually
- Helps in automation
- Useful for logging and tracking


---

## 🚀 Simple Line

👉 "Trigger = automatic action when database event happens"
