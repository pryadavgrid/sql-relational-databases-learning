USE college;

SELECT * FROM student;

-- desable autocommit : When AutoCommit is off, you can explicitly control when to commit or rollback changes.
-- Until you execute a COMMIT , your changes are not permanent.
SET autocommit = 0;

-- we have to delete a user where roll no is 104 but by mistake we delete 105 so in this situation we roll back 
DELETE FROM student WHERE rollno=105;

-- ROLLBACK : go to the last commit and give me data till last commit
ROLLBACK;

-- now we delete right user
DELETE FROM student WHERE rollno=104;

-- COMMIT : it act like a checkpoint.
COMMIT;

SET autocommit = 1;


-- Use COMMIT when you want to make changes permanent.
-- Use ROLLBACK to discard changes if something goes wrong.
-- Consider disabling AutoCommit when performing complex updates to avoid
-- saving partial or incorrect data.