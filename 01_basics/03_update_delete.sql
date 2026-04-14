-- Select the "college" database
USE college;


-- UPDATE: used to modify existing data in table
-- Disable safe update mode (required when updating without key in some cases)
SET SQL_SAFE_UPDATES = 0;


-- Update grade to "A" where marks >= 80
UPDATE student
SET grade = "A"
WHERE marks >= 80; 


-- Increase marks of all students by 1
UPDATE student
SET marks = marks + 1;


-- DELETE: remove rows where marks < 70
DELETE FROM student
WHERE marks < 70; 


-- ALTER: add a new column "age" with default value 20
ALTER TABLE student
ADD age INT DEFAULT 20;


-- Remove column "st_age" from table
ALTER TABLE student
DROP st_age;


-- Rename table (currently commented)
-- ALTER TABLE student
-- RENAME TO student_data;

-- Rename back to original name (commented)
-- ALTER TABLE student_data
-- RENAME TO student;


-- Change column name from "age" to "st_age"
ALTER TABLE student
CHANGE COLUMN age st_age INT;


-- Modify datatype of "st_age" to VARCHAR(50)
ALTER TABLE student
MODIFY st_age VARCHAR(50);


-- Rename column back from "st_age" to "age"
ALTER TABLE student
CHANGE COLUMN st_age age INT;


-- TRUNCATE: delete all rows from table (fast operation)
TRUNCATE TABLE student;


-- Show all data from student table
SELECT * FROM student;

-- Show data from student_data table (commented)
-- SELECT * FROM student_data;


-- Rename column "name" to "full_name"
ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);


-- Delete rows where marks < 80
DELETE FROM student
WHERE marks < 80;