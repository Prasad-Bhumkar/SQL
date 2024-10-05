SELECT last_name,salary
FROM employees
WHERE salary > 12000;

SELECT *
FROM employees
WHERE employee_id=175;

SELECT last_name,salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

SELECT last_name,job_id,hire_date
FROM employees
WHERE last_name IN ('Taylor','Vargas')
ORDER BY hire_date;

SELECT last_name,department_id
FROM employees
WHERE department_id IN(20,70)
ORDER BY last_name;

SELECT last_name,salary
FROM employees 
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (10,20);

SELECT last_name,hire_date
FROM employees
WHERE hire_date LIKE '%06';

SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY commission_pct DESC;

SELECT last_name,salary
FROM employees
WHERE salary > &minimum_salary;

SELECT last_name
FROM employees
WHERE manager_id='&manager_id'
ORDER BY &SORT_by;

SELECT last_name 
FROM employees
WHERE last_name LIKE '__a%';

SELECT last_name 
FROM employees
WHERE last_name LIKE '%a%'
AND last_name LIKE '%i%';