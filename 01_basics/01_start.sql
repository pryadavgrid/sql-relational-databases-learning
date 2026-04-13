CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
-- if we want to define a primary key we can give like this 
-- PRIMARY KEY (rollno, name)
);

SELECT * FROM student;


CREATE TABLE employee(
id INT,
salary INT DEFAULT 20000
);

INSERT INTO employee (id) VALUES (101);

SELECT * FROM employee;


-- Check it can limit the values allowed in the column
CREATE TABLE city(
id INT PRIMARY KEY,
city VARCHAR(50),
age INT,
-- it mean in my data age always > 18 and city always "Delhi" otherwise we can't enter the values 
CONSTRAINT age_check CHECK (age >= 18 AND city="Delhi")
);






