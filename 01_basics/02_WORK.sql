-- Create Database
CREATE DATABASE IF NOT EXISTS college; 

-- start using database
USE college; 

-- create student table

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(100),
marks INT NOT NULL,
grade VARCHAR(2), 
city VARCHAR(20)
);

-- insert 10 sample data into student table 
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, 'Amit Sharma', 85, 'A', 'Delhi'),
(102, 'Priya Verma', 78, 'B', 'Mumbai'),
(103, 'Rahul Singh', 92, 'A', 'Lucknow'),
(104, 'Sneha Reddy', 88, 'A', 'Hyderabad'),
(105, 'Vikram Patel', 67, 'C', 'Ahmedabad'),
(106, 'Neha Gupta', 74, 'B', 'Jaipur'),
(107, 'Arjun Kumar', 59, 'D', 'Patna'),
(108, 'Pooja Nair', 81, 'A', 'Kochi'),
(109, 'Rohit Das', 69, 'C', 'Kolkata'),
(110, 'Kavya Iyer', 90, 'A', 'Chennai');

-- when we want to see all row and column from my table 
SELECT * FROM student;

-- when we want to see some specific column
SELECT rollno, name FROM student; 

-- when we want to see unique data like grade are similer so we can see unique value
SELECT DISTINCT grade FROM student; 

-- when we want to give a perticuler condition thats class 'CLAUSE'
SELECT * FROM STUDENT 
WHERE grade='A';


SELECT * FROM student
WHERE marks > 80;

-- Operators
-- Aithmatic :  +, - , %, /, *
-- Comparision : =, !=, >, <, >=, <=
-- Logical : AND, OR, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise : &(Bitwise AND), | (Bitwise OR)


SELECT * FROM student
WHERE marks + 10 > 80;

SELECT * FROM student
WHERE grade != 'D';

-- AND : check LHS == RHS
SELECT * FROM student
WHERE marks> 60 AND grade = 'A';

-- OR : check if one correct LHS, RHS
SELECT * FROM student
WHERE marks > 90 OR grade='D';


-- BETWEEN : when we want to see a data between any range like give me the data where marks between the 70-90
SELECT * FROM student
WHERE marks BETWEEN 70 AND 90;

-- IN : when we want to see data in a selected value like or if value matches in list 
SELECT * FROM student
WHERE city IN ('Mumbai', 'Delhi', 'Jaipur');


-- NOT IN: when we want to see give me data where value not match in list   
SELECT * FROM student
WHERE city NOT IN ('Mumbai', 'Delhi', 'Jaipur');

-- LIMIT : when we want to see a specific number of row
SELECT * FROM student
LIMIT 5; 


-- ORDER BY : when we want to arrange our data in ascending and descending order , ASC fot ascending order, DESC for descending order
SELECT * FROM student
ORDER BY marks ASC
LIMIT 5;




-- AGGREGATE Functions : perform a calculation on a set of values, and return a single value
-- COUNT()
-- MAX()
-- MIN()
-- SUM()
-- AVG()

SELECT COUNT(rollno) AS to_student
FROM student;

SELECT MAX(marks) AS max_mark
FROM student;


-- GROUP BY
-- Groups row that have same values ito same rows
-- Generally we use group by with some AGGREGATION FUNCTION like count, sum, etc.
-- it is must that the column name same as group by column

SELECT grade, SUM(marks)
FROM student
GROUP BY grade; 


-- HAVING :  similer to tha WHERE, we use HAVING when we want to apply any "condition after grouping"
-- in this query first it find where Having Condition is match if match then collect the data otherwise none
-- like we have diffrent type of mark so this query have to group by grade where every group of grade contain atleat one >80 marks if any grade has no any >80 marks group will not countable

SELECT grade, SUM(marks)
FROM student
GROUP BY grade
HAVING MAX(marks) > 80;



-- GENERAL ORDER

-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;


SELECT city, SUM(marks)
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 70;

