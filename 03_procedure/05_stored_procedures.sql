USE college;
SELECT * FROM users;


-- 👉 By default MySQL uses ";" as the end of a statement.
-- But inside a stored procedure we also use ";" multiple times.
-- So MySQL may get confused and think the procedure ends early.
-- To fix this, we temporarily change the delimiter (end symbol) to "$$"

-- 👉 Stored Procedure = A saved SQL block (like a function)
-- It helps reuse SQL logic again and again


-- Syntax of Stored Procedure

-- DELIMITER $$

-- CREATE PROCEDURE procedure_name()
-- BEGIN
--     -- SQL statements go here
-- END$$

-- DELIMITER ;

-- CALL procedure_name();



-- Example 1: Simple Procedure (Fetch all users)

-- DELIMITER $$

-- CREATE PROCEDURE first_procedure()
-- BEGIN
--     SELECT * FROM users;
-- END $$

-- DELIMITER ;

-- CALL first_procedure()



-- Example 2: Procedure with Input Parameters (Insert User)

-- DELIMITER $$

-- CREATE PROCEDURE AddUser(
--     IN p_name VARCHAR(100),                 -- User name
--     IN p_email VARCHAR(100),                -- User email
--     IN p_gender ENUM('Male', 'Female', 'Other'), -- Gender
--     IN p_dob DATE,                          -- Date of birth
--     IN p_salary INT                         -- Salary
-- )
-- BEGIN
--     -- Insert new user into table
--     INSERT INTO users (name, email, gender, date_of_birth, salary)
--     VALUES (p_name, p_email, p_gender, p_dob, p_salary);

--     -- Show updated table
--     SELECT * FROM users;
-- END$$

-- DELIMITER ;


-- 👉 Calling the procedure
CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);


-- 👉 Show all stored procedures in 'college' database
SHOW PROCEDURE STATUS WHERE Db='college';


-- 👉 Delete the procedure if it exists
DROP PROCEDURE IF EXISTS AddUser;