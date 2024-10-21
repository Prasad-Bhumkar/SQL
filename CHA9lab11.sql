-- Insert new employee records into the myemp table
INSERT INTO myemp (employee_id, last_name, first_name, salary, department_number)
VALUES 
(5, 'sharma', 'shankar', 15000, 15);
INSERT INTO myemp (employee_id, last_name, first_name, salary, department_number)
VALUES 
(6, 'sharma', 'manohar', 15000, 15);

-- Retrieve all records from the myemp table
SELECT * FROM myemp;

-- Create a savepoint to mark the current state of the transaction
SAVEPOINT s1;

-- Delete all records from the myemp table
DELETE FROM myemp;

-- Retrieve all records from the myemp table after deletion
SELECT * FROM myemp;

-- Rollback the transaction to the savepoint s1
ROLLBACK TO SAVEPOINT s1;

-- Retrieve all records from the myemp table after rollback
SELECT * FROM myemp;

-- Commit the transaction to make the changes permanent
COMMIT;