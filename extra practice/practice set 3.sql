--[1] Display the employee information whose name is David
SELECT * 
FROM employees 
WHERE name = 'David';

--[2] Describe locations table
DESCRIBE locations;

--[3] Display employee id and start date and end date from a job history table
SELECT employee_id, start_date, end_date 
FROM job_history;

--[4] Display all information from regions table
SELECT * 
FROM regions;

--[5] Display country id and name from countries table
SELECT country_id,country_name 
FROM countries;

--[6] Display department name whose id is 30
SELECT department_name 
FROM departments 
WHERE department_id = 30;

--[7] Subtract 4 from higher date column
SELECT hire_date - 4 AS hire_date
FROM employees;

--[8] Display first name department id like "Abel's department_id is 90."
SELECT first_name||'''s department id is '||department_id||'.'
FROM employees;

--[9] List the employees who are not assigned to any department
SELECT *
FROM employees
WHERE department_id IS NULL;

--[10] List the details of employee whose salary is greater than 2000 and commission is null
SELECT *
FROM employees
WHERE salary > 2000 AND commission_pct IS NULL;

