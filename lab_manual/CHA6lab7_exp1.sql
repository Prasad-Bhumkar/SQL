SELECT
COUNT(*) AS total_employees,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'), '2005', 1,
'2006', 1,
'2007', 1,
'2008', 1,
0)) AS employees_hired_2005_TO_2008
FROM employees;

SELECT ROUND(MAX(AVG(salary))) "Maximum Of Average Salary"
FROM employees
GROUP BY department_id;

SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) < 3 OR COUNT(e.employee_id) = MAX(COUNT(e.employee_id));
