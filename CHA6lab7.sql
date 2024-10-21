-- Retrieve overall salary statistics
SELECT 
  ROUND(MAX(salary)) "highest salary",
  ROUND(MIN(salary)) "lowest salary",
  ROUND(SUM(salary)) "total salary",
  ROUND(AVG(salary)) "average salary"
FROM employees;

-- Count the total number of employees
SELECT COUNT(first_name) "Total Employees"
FROM employees;

-- Retrieve salary statistics by job ID
SELECT 
  job_id, 
  MAX(salary) "highest salary",
  MIN(salary) "lowest salary",
  SUM(salary) "total salary",
  AVG(salary) "average salary"
FROM employees
GROUP BY job_id;

-- Count the number of employees by job ID
SELECT 
  job_id,
  COUNT(last_name) no_of_emp
FROM employees
GROUP BY job_id;

-- Count the number of employees with a specific job ID
SELECT COUNT(last_name)
FROM employees
WHERE job_id = '&job_id';

-- Count the number of unique managers
SELECT COUNT(DISTINCT manager_id) "MANAGERS"
FROM employees
WHERE manager_id IS NOT NULL;

-- Calculate the difference between the highest and lowest salaries
SELECT MAX(salary) - MIN(salary) "Diff"
FROM employees;

-- Count the number of employees by department ID
SELECT 
  department_id,
  COUNT(last_name) no_of_emp
FROM employees
GROUP BY department_id;

-- Retrieve department IDs with more than 7 employees
SELECT 
  COUNT(last_name),
  department_id
FROM employees
GROUP BY department_id
HAVING COUNT(last_name) > 7;

-- Retrieve the lowest salary by manager ID
SELECT 
  manager_id,
  MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id;

-- Retrieve the lowest salary by manager ID, excluding null manager IDs
SELECT 
  manager_id,
  MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id
HAVING manager_id IS NOT NULL;

-- Retrieve the lowest salary by manager ID, with a salary less than 6000
SELECT 
  salary,
  manager_id,
  MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id
HAVING MIN(salary) < 6000
ORDER BY salary DESC;