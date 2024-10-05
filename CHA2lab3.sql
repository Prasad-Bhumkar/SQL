SELECT employee_id id,last_name name,job_id job,hire_date join_from
FROM employees;

SELECT employee_id, last_name||' , '||job_id AS "Employee"
FROM employees;