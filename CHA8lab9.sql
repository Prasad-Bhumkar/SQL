SELECT last_name,salary
FROM employees 
WHERE department_id IN (
			SELECT department_id
			FROM employees
			WHERE last_name = '&name');


SELECT employee_id,last_name,salary
FROM employees
WHERE salary > (
		SELECT ROUND(AVG(salary))
		FROM employees);


SELECT employee_id,last_name,department_id 
FROM employees
WHERE department_id IN (
			SELECT department_id
			FROM employees
			WHERE last_name LIKE '%u%')
ORDER BY department_id;


SELECT e.last_name,e.department_id,e.job_id,d.location_id
FROM employees e 
JOIN departments d
ON e.department_id=d.department_id
WHERE d.location_id IN (
		SELECT location_id 
		FROM departments 
		WHERE location_id=1700);


SELECT e.last_name,e.department_id,e.job_id
FROM employees e 
JOIN departments d
ON e.department_id=d.department_id
WHERE d.location_id IN (
		SELECT location_id 
		FROM departments 
		WHERE location_id='&location_id');


SELECT emp.last_name name,emp.salary,mgr.last_name manager
FROM employees mgr
JOIN employees emp
ON emp.manager_id=mgr.employee_id 
WHERE mgr.employee_id=(
		SELECT employee_id
		FROM employees
		WHERE last_name = 'King'
		AND
		manager_id IS NULL);


SELECT emp.department_id, emp.last_name, emp.job_id
FROM employees emp
WHERE emp.department_id = (
    SELECT d.department_id
    FROM departments d
    WHERE d.department_name = 'Finance');


SELECT last_name,salary
FROM employees
WHERE salary >ANY (
			SELECT salary
			FROM employees
			WHERE department_id=60);


SELECT last_name,salary 
FROM employees e1
WHERE salary > (
			SELECT AVG(salary)
			FROM employees e2
			WHERE e1.department_id=e2.department_id);


SELECT last_name
FROM employees
WHERE salary IN(
		SELECT  MAX(salary)
		FROM employees
		);


SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees );
