-- Describe the DEPARTMENTS table to view its structure
DESC DEPARTMENTS;

-- Retrieve all columns for all rows in the DEPARTMENTS table
SELECT * 
FROM DEPARTMENTS;

-- Describe the EMPLOYEES table to view its structure
DESC EMPLOYEES;

-- Retrieve all columns for all rows in the EMPLOYEES table
SELECT * 
FROM EMPLOYEES;

-- Retrieve specific columns (employee_id, last_name, job_id, hire_date) from the EMPLOYEES table
-- and alias the hire_date column as "Joining Date"
SELECT employee_id, last_name, job_id, hire_date AS "Joining Date"
FROM employees;

-- Retrieve distinct job_id values from the EMPLOYEES table
SELECT DISTINCT job_id
FROM employees;