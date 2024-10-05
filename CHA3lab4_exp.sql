SELECT last_name,job_id,salary
FROM employees
WHERE (job_id LIKE 'SA_REP' OR job_id LIKE 'ST_CLERK')
AND (salary NOT IN (2500,3500,7000));

SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct='.20';

SELECT employee_id,last_name 
FROM employees
WHERE job_id LIKE '%PRES%';

SELECT *
FROM employees
WHERE department_id=80
AND last_name NOT IN ('Abel');

SELECT last_name||'-'||job_id AS "Employee Details"
FROM employees
WHERE department_id = 80;

SELECT last_name,job_id
FROM employees
WHERE manager_id IS NULL;

SELECT last_name,job_id
FROM employees
WHERE department_id IS NULL;

SELECT last_name,salary
FROM employees
WHERE salary > 2000
AND commission_pct IS NULL;