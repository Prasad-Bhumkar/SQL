-- Create a table to store employee information
CREATE TABLE myemp (
  employee_id number (5),  -- Unique identifier for each employee
  last_name varchar2(20),  -- Last name of the employee
  first_name varchar2(20),  -- First name of the employee
  salary number(15),  -- Salary of the employee
  department_number number(10)  -- Department number of the employee
);

-- Describe the table structure
DESCRIBE myemp;

-- Insert a new employee record
INSERT INTO myemp
VALUES
(2,'bade','ravi',25000,30);

-- Insert another employee record with column names specified
INSERT INTO myemp
(employee_id,last_name,first_name,salary,department_number)
VALUES 
(2,'chaudhar','sanket',15000,15);

-- Retrieve all employee records
SELECT * FROM myemp;

-- Insert a new employee record with user input
INSERT INTO myemp
VALUES
('&employee_id','&last_name','&first_name','&salary','&department_number');

-- Retrieve all employee records again
SELECT * FROM myemp;

-- Commit the changes
COMMIT;

-- Update the last name of an employee with employee_id = 3
UPDATE myemp
SET last_name = 'jadhav'
WHERE employee_id = 3;

-- Update the salary of employees with salary less than 900
UPDATE myemp
SET salary = 1000
WHERE salary < 900;

-- Retrieve all employee records after updates
SELECT * FROM myemp;

-- Delete employee records with salary less than 24000
DELETE FROM myemp 
WHERE salary < 24000;

-- Retrieve all employee records after deletion
SELECT * FROM myemp;

-- Commit the changes
COMMIT;