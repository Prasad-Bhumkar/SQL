-- Retrieve employees with a salary greater than 12000
SELECT last_name, salary
FROM employees
WHERE salary > 12000;

-- Retrieve all columns for the employee with ID 175
SELECT *
FROM employees
WHERE employee_id = 175;

-- Retrieve employees with a salary not between 5000 and 12000
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- Retrieve employees with last name 'Taylor' or 'Vargas', ordered by hire date
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Taylor', 'Vargas')
ORDER BY hire_date;

-- Retrieve employees in departments 20 or 70, ordered by last name
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 70)
ORDER BY last_name;

-- Retrieve employees with a salary between 5000 and 12000 in departments 10 or 20
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (10, 20);

-- Retrieve employees hired in June
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '%06';

-- Retrieve employees with no manager
SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

-- Retrieve employees with a commission, ordered by commission in descending order
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY commission_pct DESC;

-- Retrieve employees with a salary greater than the specified minimum salary
SELECT last_name, salary
FROM employees
WHERE salary > &minimum_salary;

-- Retrieve employees with the specified manager ID, ordered by the specified column
SELECT last_name
FROM employees
WHERE manager_id = '&manager_id'
ORDER BY &SORT_by;

-- Retrieve employees with a last name starting with two characters followed by 'a'
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

-- Retrieve employees with a last name containing both 'a' and 'i'
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%i%';