-- Retrieve department information along with location details
SELECT DISTINCT d.department_name,l.street_address,l.postal_code,l.city,l.state_province
FROM locations l JOIN departments d
ON l.location_id = d.location_id;

-- Retrieve employee information along with department details
SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id;

-- Retrieve employee information for specific departments
SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id
WHERE e.department_id IN (20,30);

-- Retrieve employee information for the 'Finance' department
SELECT e.last_name,e.salary,e.department_id,d.department_name
FROM employees e join departments d
ON e.department_id=d.department_id
WHERE d.department_name='Finance';

-- Retrieve employee information for a specific location
SELECT e.last_name,e.job_id,e.department_id,d.department_name
FROM employees e 
JOIN departments d
ON e.department_id=d.department_id
JOIN locations l
ON d.location_id=l.location_id
WHERE l.city= 'Toronto' ;

-- Retrieve employee and manager information
SELECT e1.last_name "Employee Name",e1.salary "Emp_Salary",e2.last_name "Manager Name",e2.salary "Manager's Salary"
FROM employees e1
JOIN employees e2
ON e1.manager_id=e2.employee_id;

-- Retrieve employee and manager information (including employees without managers)
SELECT e1.last_name "Employee Name",e1.salary "Emp_Salary",e2.last_name "Manager Name",e2.salary "Manager's Salary"
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id=e2.employee_id;

-- Retrieve manager information for a specific employee
SELECT e2.last_name
FROM employees e1
JOIN employees e2
ON e1.department_id=e2.department_id
WHERE e1.last_name LIKE 'Higgins' ;

-- Retrieve employee information where employee salary is greater than manager salary
SELECT e1.last_name,e1.salary
FROM employees e1
JOIN employees e2
ON e1.manager_id=e2.employee_id
WHERE e1.salary>e2.salary ; 

-- Retrieve employee information along with job grade
SELECT e.last_name,e.job_id,d.department_name,j.grade_level
FROM employees e
JOIN departments d
ON e.department_id=d.department_id
JOIN job_grades j 
ON e.salary 
BETWEEN j.lowest_sal AND j.highest_sal;