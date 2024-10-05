SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e2.hire_date > e1.hire_date
WHERE e1.last_name = 'Taylor';

SELECT emp.last_name,emp.hire_date,mgr.last_name "Manager",mgr.hire_date "Mgr hired"
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
AND emp.hire_date < mgr.hire_date;

SELECT emp.last_name,LENGTH(emp.last_name) "Name Length",mgr.last_name "Manager",LENGTH(mgr.last_name) "Manager Name Length"
FROM employees emp
JOIN employees mgr
ON emp.manager_id=mgr.employee_id
AND LENGTH(emp.last_name) > LENGTH(mgr.last_name);