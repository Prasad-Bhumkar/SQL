-- Retrieve the last name of employees who were hired after the employee with the last name 'Taylor'
SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e2.hire_date > e1.hire_date
WHERE e1.last_name = 'Taylor';

-- Retrieve the last name, hire date, manager's last name, and manager's hire date of employees
-- who were hired before their manager
SELECT emp.last_name, emp.hire_date, mgr.last_name "Manager", mgr.hire_date "Mgr hired"
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
AND emp.hire_date < mgr.hire_date;

-- Retrieve the last name, name length, manager's last name, and manager's name length of employees
-- whose last name is longer than their manager's last name
SELECT emp.last_name, LENGTH(emp.last_name) "Name Length", mgr.last_name "Manager", LENGTH(mgr.last_name) "Manager Name Length"
FROM employees emp
JOIN employees mgr
ON emp.manager_id = mgr.employee_id
AND LENGTH(emp.last_name) > LENGTH(mgr.last_name);