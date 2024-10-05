SELECT ROUND(MAX(salary)) "highest salary",
ROUND(MIN(salary)) "lowest salary",
ROUND(SUM(salary)) "total salary",
ROUND(AVG(salary)) "average salary"
FROM employees;

SELECT COUNT(first_name) "Total Employees"
FROM employees;

SELECT job_id, MAX(salary) "highest salary",MIN(salary) "lowest salary",SUM(salary) "total salary",AVG(salary) "average salary"
FROM employees
GROUP BY job_id;

SELECT job_id,COUNT(last_name) no_of_emp
FROM employees
GROUP BY job_id;

SELECT COUNT(last_name)
FROM employees
WHERE job_id = '&job_id';

SELECT COUNT(DISTINCT manager_id) "MANAGERS"
FROM employees
where manager_id is not null;

SELECT MAX(salary)-MIN(salary) "Diff"
FROM employees;

SELECT department_id,COUNT(last_name) no_of_emp
FROM employees
GROUP BY department_id;

SELECT COUNT(last_name),department_id
FROM employees
HAVING COUNT(last_name) > 7
GROUP BY department_id;

SELECT manager_id,MIN(salary) "Lowest Salary"
FROM employees
GROUP BY manager_id;

SELECT manager_id,MIN(salary) "Lowest Salary"
FROM employees
HAVING manager_id IS NOT NULL
GROUP BY manager_id;

SELECT salary,manager_id,MIN(salary) "Lowest Salary"
FROM employees
HAVING MIN(salary) < 6000
ORDER BY salary DESC
GROUP BY manager_id;