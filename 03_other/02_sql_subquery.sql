USE college;

-- A sub query on inner query or a Nested query within another SQL query, (it involve two select query)
-- There are three type where we write sub query
-- 1. inside the SELECT
-- 2. inside the FROM
-- 3. inside the WHERE


SELECT * FROM student;
-- 1. Inside the SELECT

SELECT (SELECT MAX(marks) FROM student), name
FROM student;


-- 2. Inside From
-- Example : 1. Find the student of Delhi, 2. Find their max marks using the sublist in step 1

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = 'Delhi') AS temp;



-- 3. Inside the Where
SELECT * 
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);
