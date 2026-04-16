USE college;

-- UNION : it used to combine the result-set two or more SELECT statementa "Gives Unique Records"
-- To Use It : 
-- 	- every SELECT should have same number of columns
-- 	- columns must have similar data type
--  - columns in every SELECT should be in same order

-- Syntax : 
-- SELECT columns FROM tableA
-- UNION
-- SELECT columns FROM tableB

SELECT name FROM empolyee
UNION
SELECT name FROM empolyee;

-- UNION ALL : Return all Value
SELECT name FROM empolyee
UNION ALL
SELECT name FROM empolyee

