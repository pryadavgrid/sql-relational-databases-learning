USE college;


CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO students
VALUES
(101, 'Aman'),
(102, 'Naman'),
(103, 'Kalam');

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course
VALUES
(102, 'ENGLISH'),
(105, 'MATH'),
(103, 'SCIENCE'),
(107, 'CS');


SELECT * FROM students;
SELECT * FROM course;


-- 1. Inner Join : Return records that have matching values in both table
-- Syntax : 
-- SELECT column_names
-- FROM table_name_A
-- INNER JOIN table_name_B
-- ON table_name_A.column_name = table_name_B.column_name;


SELECT *
FROM students AS st
INNER JOIN course AS cr
ON st.id = cr.id;


-- 2. Left Join : Return all records from the left table, and the matched record from the right table
-- Syntax : 
-- SELECT column_names
-- FROM tableA
-- LEFT JOIN tableB
-- ON tableA.column_name = tableB.column_name


SELECT *
FROM students AS st
LEFT JOIN course AS cr
ON st.id = cr.id;


-- 3. Right Join : Return all record from right table, and matched record from left table
-- Syntax : 
-- SELECT column_names
-- FROM tableA
-- RIGHT JOIN tableB
-- ON tableA.column_name = tableB.column_name


SELECT *
FROM students AS st
RIGHT JOIN course AS cr
ON st.id = cr.id;


-- 4. FULL JOIN : Return all records when there is a match in either left or right table
-- Syntax : 
-- LEFT JOIN UNION RIGHT JOIN


SELECT *
FROM students AS st
LEFT JOIN course AS cr
ON st.id = cr.id
UNION 
SELECT *
FROM students AS st
RIGHT JOIN course AS cr
ON cr.id = st.id;


-- 5. EXCLUSIVE JOIN
-- 5.1. Left Exclusive Join
-- Syntax : 
-- SELECT columns_name
-- FROM tableA
-- LEFT JOIN tableB
-- ON tableA.column_name = tableB.column_name
-- WHERE tableB.column_name IS NULL;


SELECT * 
FROM students AS st
LEFT JOIN course AS cr
ON st.id = cr.id
WHERE cr.id IS NULL;


-- 5.2. Right Exclusive join 
-- Syntax:
-- SELECT columns_name
-- FROM tableA
-- RIGHT JOIN tableB
-- ON tableA.column_name = tableB.column_name
-- WHERE tableA.column_name IS NULL;


SELECT *
FROM students AS st
RIGHT JOIN course AS cr
ON st.id = cr.id
WHERE st.id IS NULL;

-- 5.3 Full Exclusive Join
-- Syntax :
-- LEFT EXCLUSIVE JOIN
-- UNION
-- RIGHT EXCLUSIVE JOIN;

SELECT *
FROM students AS st
LEFT JOIN course AS cr
ON st.id = cr.id
WHERE cr.id IS NULL
UNION
SELECT *
FROM students AS st
RIGHT JOIN course AS cr
ON st.id = cr.id
WHERE st.id IS NULL;



-- 6. Self Join : It is a reguler join but the table is join itself
-- Syntax :
-- SELECT columns_name
-- FROM tableA
-- JOIN tableA
-- ON tableA.column_name = tableB.clolumn_name



CREATE TABLE empolyee(
id INT PRIMARY KEY,
name VARCHAR(50)
);

ALTER TABLE empolyee
ADD manager_id INT;

INSERT INTO empolyee
VALUES
(101, 'Aman', 103),
(102, 'Baman', 104),
(103, 'Kamn', null),
(104, 'Naman', 103);

SELECT * from empolyee;


SELECT a.id, a.name AS manager_name, b.name AS empolyee_name
FROM empolyee AS a
JOIN empolyee AS b
ON a.id = b.manager_id;




