-- This query creates a new database named "college"
CREATE DATABASE college;

-- This query tells MySQL to use the "college" database
-- All the tables and operations will now happen inside this database
USE college;


-- This query creates a table named "student"
-- Table is used to store data in rows and columns
-- It has 2 columns: rollno and name
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
-- if we want to define a primary key we can give like this 
-- PRIMARY KEY (rollno, name)
);


-- This query fetches all records from student table
-- "*" means select all columns
SELECT * FROM student;


-- This query creates a table named "employee"
-- It has 2 columns: id and salary
-- salary has a DEFAULT value of 20000
-- If we do not provide salary while inserting data,
-- then automatically 20000 will be stored
CREATE TABLE employee(
id INT,
salary INT DEFAULT 20000
);


-- This query inserts a new record into employee table
-- Only id is provided (101)
-- salary is not given, so default value (20000) will be used automatically
INSERT INTO employee (id) VALUES (101);


-- This query displays all data from employee table
SELECT * FROM employee;


-- This query creates a table named "city"
-- It demonstrates the use of CHECK constraint
CREATE TABLE city(
id INT PRIMARY KEY,
city VARCHAR(50),
age INT,
-- it mean in my data age always > 18 and city always "Delhi" otherwise we can't enter the values 
CONSTRAINT age_check CHECK (age >= 18 AND city="Delhi")
);