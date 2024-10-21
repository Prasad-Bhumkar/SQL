-- Retrieve employee details for sales representatives and stock clerks with specific salaries
SELECT last_name,job_id,salary
FROM employees
WHERE (job_id LIKE 'SA_REP' OR job_id LIKE 'ST_CLERK')
AND (salary NOT IN (2500,3500,7000));

-- Retrieve employee details for employees with a commission percentage of 20%
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct='.20';

-- Retrieve employee IDs and last names for presidents
SELECT employee_id,last_name 
FROM employees
WHERE job_id LIKE '%PRES%';

-- Retrieve all employee details for department 80, excluding Abel
SELECT *
FROM employees
WHERE department_id=80
AND last_name NOT IN ('Abel');

-- Retrieve employee details for department 80, concatenating last name and job ID
SELECT last_name||'-'||job_id AS "Employee Details"
FROM employees
WHERE department_id = 80;

-- Retrieve employee details for employees with no manager
SELECT last_name,job_id
FROM employees
WHERE manager_id IS NULL;

-- Retrieve employee details for employees with no department
SELECT last_name,job_id
FROM employees
WHERE department_id IS NULL;

-- Retrieve employee details for employees with a salary greater than 2000 and no commission
SELECT last_name,salary
FROM employees
WHERE salary > 2000
AND commission_pct IS NULL;