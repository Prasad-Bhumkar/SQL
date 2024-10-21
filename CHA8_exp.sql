-- Retrieve employee details with salary higher than the average salary in their department
-- and last name containing 'u' or starting with 'U'
SELECT e1.employee_id, e1.last_name, e1.salary
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id)
AND
e1.last_name IN (
    SELECT e3.last_name
    FROM employees e3
    WHERE e3.last_name LIKE '%u%'
    OR e3.last_name LIKE 'U%');

-- Retrieve employee details with salary lower than the average salary in department 20
SELECT last_name, salary
FROM employees
WHERE salary < (SELECT AVG(salary)
FROM employees
WHERE department_id = 20);

-- Retrieve employee details with manager 'Whalen'
SELECT last_name
from employees 
where manager_id IN (select employee_id 
            from employees 
            where last_name = 'Whalen');

-- Retrieve employee details with location 'Seattle'
SELECT e.last_name, l.city
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l
ON (d.location_id = l.location_id)
WHERE d.location_id IN (SELECT l.location_id
FROM locations l
WHERE l.city = 'Seattle');

-- Retrieve employee details with department 'Davies'
SELECT last_name, department_id
FROM employees 
WHERE department_id IN (SELECT department_id 
FROM employees 
WHERE last_name = 'Davies');

-- Retrieve employee details with the highest salary in their department
SELECT e1.last_name, e1.department_id, e1.salary
FROM employees e1
WHERE e1.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id);