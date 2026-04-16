-- Create database if it does not already exist
CREATE DATABASE IF NOT EXISTS college; 

-- Select the database to use
USE college; 


-- Create "student" table with basic columns
-- rollno -> unique id (primary key)
-- marks -> cannot be NULL
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(100),
marks INT NOT NULL,
grade VARCHAR(2), 
city VARCHAR(20)
);

DROP TABLE student;

-- Insert 10 sample records into student table
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, 'Amit Sharma', 85, 'A', 'Delhi'),
(102, 'Priya Verma', 78, 'B', 'Mumbai'),
(103, 'Rahul Singh', 92, 'A', 'Lucknow'),
(104, 'Sneha Reddy', 88, 'A', 'Hyderabad'),
(105, 'Vikram Patel', 67, 'C', 'Ahmedabad'),
(106, 'Neha Gupta', 74, 'B', 'Delhi'),
(107, 'Arjun Kumar', 59, 'D', 'Hyderabad'),
(108, 'Pooja Nair', 81, 'A', 'Delhi'),
(109, 'Rohit Das', 69, 'C', 'Kolkata'),
(110, 'Kavya Iyer', 90, 'A', 'Delhi');


-- Show all data (all rows and columns)
SELECT * FROM student;


-- Show only selected columns
SELECT rollno, name FROM student; 


-- Show unique (non-duplicate) grades
SELECT DISTINCT grade FROM student; 


-- Filter rows where grade is 'A'
SELECT * FROM STUDENT 
WHERE grade='A';


-- Filter rows where marks > 80
SELECT * FROM student
WHERE marks > 80;


-- Use arithmetic operation inside condition
SELECT * FROM student
WHERE marks + 10 > 80;


-- Filter rows where grade is not 'D'
SELECT * FROM student
WHERE grade != 'D';


-- AND: both conditions must be true
SELECT * FROM student
WHERE marks > 60 AND grade = 'A';


-- OR: any one condition must be true
SELECT * FROM student
WHERE marks > 90 OR grade='D';


-- BETWEEN: filter values in a range (70 to 90)
SELECT * FROM student
WHERE marks BETWEEN 70 AND 90;


-- IN: match values from given list
SELECT * FROM student
WHERE city IN ('Mumbai', 'Delhi', 'Jaipur');


-- NOT IN: exclude values from given list
SELECT * FROM student
WHERE city NOT IN ('Mumbai', 'Delhi', 'Jaipur');


-- LIMIT: show only first 5 rows
SELECT * FROM student
LIMIT 5; 


-- ORDER BY: sort by marks (ascending) and limit result
SELECT * FROM student
ORDER BY marks ASC
LIMIT 5;



-- COUNT: total number of students
SELECT COUNT(rollno) AS to_student
FROM student;


-- MAX: highest marks
SELECT MAX(marks) AS max_mark
FROM student;


-- GROUP BY: group data by grade and sum marks
SELECT grade, SUM(marks)
FROM student
GROUP BY grade; 


-- HAVING: filter groups where max marks > 80
SELECT grade, SUM(marks)
FROM student
GROUP BY grade
HAVING MAX(marks) > 80;



-- Combine WHERE + GROUP BY + HAVING
-- First filter grade 'A', then group by city, then apply condition
SELECT city, SUM(marks)
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 70;