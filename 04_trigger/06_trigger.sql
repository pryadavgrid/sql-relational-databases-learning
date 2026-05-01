USE college;

-- Table: user_log
-- This table stores log data whenever a new user is inserted
-- id → unique log id
-- user_id → id from users table
-- name → name of the user
-- created_on → automatically stores current time

-- CREATE TABLE user_log (
-- id INT AUTO_INCREMENT PRIMARY KEY,
-- user_id INT,
-- name VARCHAR(100),
-- created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );


-- TRIGGER SYNTAX EXPLANATION

-- DELIMITER $$ 
-- We change delimiter because trigger body uses ';'
-- Without changing delimiter MySQL will stop early

-- CREATE TRIGGER trigger_name
-- AFTER INSERT ON table_name
-- FOR EACH ROW
-- BEGIN
--     -- SQL statements
-- END $$

-- DELIMITER ; 
-- Reset delimiter back to normal


DELIMITER $$

-- Trigger Name: after_user_insert
-- This trigger runs automatically AFTER a new row is inserted into 'users' table

CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    -- Insert log into user_log table
    -- NEW.id and NEW.name come from the inserted row in users table

    INSERT INTO user_log (user_id, name)
    VALUES (NEW.id, NEW.name);

END$$

DELIMITER ;


-- Insert new user into users table
-- This will automatically trigger the above trigger

INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES ('Kiran', 'kirantwothreef@example.com', 'Female', '1994-06-15', 72000);


-- Check logs
-- This will show automatically inserted log data

SELECT * FROM user_log;


-- Delete trigger if needed
DROP TRIGGER IF EXISTS after_user_insert;