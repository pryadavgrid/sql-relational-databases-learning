USE college;

-- UPDATE : To update the existig query
-- sometimes UPDATE, DELETE, ALTER want to take permmition because MySQL run on safe mode 

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "A"
WHERE marks >= 80; 


UPDATE student
SET marks = marks + 1;


-- DELETE

DELETE FROM student
WHERE marks < 70; 






SELECT * FROM student;

