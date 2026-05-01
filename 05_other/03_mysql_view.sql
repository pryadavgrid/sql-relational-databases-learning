USE college;

-- MySQL View:
-- A view is a virtual table created from the result of an SQL query.
-- It does not store data physically, it only shows data from one or more tables.

-- In simple words:
-- If a table has many columns but we want to show only some columns to users,
-- then we create a view.

-- Example:
-- Suppose we have a payment table with columns like name, date, credit_card_no, etc.
-- If the sales team only needs the name column,
-- we create a view that shows only the name column.

-- Note:
-- A view always shows the latest (updated) data.
-- Every time a user runs a query on the view,
-- MySQL fetches fresh data from the original table.

-- Syntax:
-- CREATE VIEW view_name AS SELECT column_names FROM table_name;
-- SELECT * FROM view_name;


CREATE VIEW student_view AS
SELECT rollno, name, marks
FROM student;

SELECT * FROM student_view;

DROP VIEW student_view;