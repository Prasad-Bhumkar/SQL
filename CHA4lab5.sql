SELECT SYSDATE
FROM dual;

SELECT employee_id,last_name,salary,TRUNC(salary+(salary*16/100)) AS "Updated Salary" 
FROM employees;

SELECT employee_id,last_name,salary,TRUNC(salary+(salary*16/100)) AS salary_16, TRUNC((salary+(salary*16/100))-salary) AS salary_diff
FROM employees;

SELECT INITCAP(last_name) name, LENGTH(last_name) length
FROM employees;

SELECT INITCAP(last_name) name, LENGTH(last_name) length
FROM employees
WHERE last_name LIKE 'J%' OR last_name LIKE 'M%';

SELECT last_name name, LENGTH(last_name) length
FROM employees
WHERE last_name LIKE '&initial_letter%';

SELECT last_name name, LENGTH(last_name) length
FROM employees
WHERE LOWER(last_name) LIKE '&initial_letter%';

SELECT last_name,TRUNC(MONTHS_BETWEEN(sysdate,hire_date),0) duration
FROM employees
ORDER BY duration;

SELECT last_name,RPAD(salary,10,'*')
FROM employees;

SELECT last_name,TRUNC(((sysdate-hire_date)/7),0) "Weeks_Worked"
FROM employees
WHERE department_id = 90
ORDER BY "Weeks_Worked" DESC;

SELECT last_name,LPAD(salary,12,'$') salary
FROM employees;