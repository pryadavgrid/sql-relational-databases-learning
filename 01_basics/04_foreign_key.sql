-- Select the "college" database
USE college;


-- Create "department" table
-- id -> primary key (unique department id)
-- name -> department name
CREATE TABLE department(
id INT PRIMARY KEY,
name VARCHAR(50)
);


-- Insert sample data into department table
INSERT INTO department
VALUES
(101, "Math"),
(102, "Chemistry"),
(103, "Physics");


-- Create "teacher" table
-- dept_id is a FOREIGN KEY which connects to department(id)
-- This creates a relationship between teacher and department tables
-- ON UPDATE CASCADE: if department id changes, it updates here also
-- ON DELETE CASCADE: if department is deleted, related teachers also get deleted
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);


-- Insert sample data into teacher table
-- dept_id must match existing department ids (foreign key rule)
INSERT INTO teacher
VALUES
(1001, "Bhaskar", 101),
(1002, "Arun", 102),
(1003, "Ashok", 103),
(1004, "Ashu", 103);


-- Demonstrate ON UPDATE CASCADE
-- When department id is updated (103 -> 104),
-- it will automatically update in teacher table also
UPDATE department
SET id = 104
WHERE id = 103;


-- Demonstrate ON DELETE CASCADE
-- When department id = 104 is deleted,
-- all teachers with dept_id = 104 will also be deleted automatically
DELETE FROM department
WHERE id=104;


-- Show all data from department table
SELECT * FROM department;

-- Show all data from teacher table
SELECT * FROM teacher;