DESC DEPARTMENTS;
SELECT * 
FROM DEPARTMENTS;

DESC EMPLOYEES;
SELECT * 
FROM EMPLOYEES;

SELECT employee_id,last_name,job_id,hire_date AS "Joining Date"
FROM employees;

SELECT DISTINCT job_id
FROM employees;
