-- Retrieve the current system date
SELECT SYSDATE
FROM dual;

-- Calculate the updated salary with a 16% increase
SELECT employee_id, last_name, salary, TRUNC(salary + (salary * 16 / 100)) AS "Updated Salary"
FROM employees;

-- Calculate the updated salary and the difference from the original salary
SELECT employee_id, last_name, salary, TRUNC(salary + (salary * 16 / 100)) AS salary_16, TRUNC((salary + (salary * 16 / 100)) - salary) AS salary_diff
FROM employees;

-- Retrieve the last name in title case and its length
SELECT INITCAP(last_name) name, LENGTH(last_name) length
FROM employees;

-- Retrieve the last name in title case and its length for employees with last name starting with 'J' or 'M'
SELECT INITCAP(last_name) name, LENGTH(last_name) length
FROM employees
WHERE last_name LIKE 'J%' OR last_name LIKE 'M%';

-- Retrieve the last name and its length for employees with last name starting with a specified initial letter
SELECT last_name name, LENGTH(last_name) length
FROM employees
WHERE last_name LIKE '&initial_letter%';

-- Retrieve the last name and its length for employees with last name starting with a specified initial letter (case-insensitive)
SELECT last_name name, LENGTH(last_name) length
FROM employees
WHERE LOWER(last_name) LIKE '&initial_letter%';

-- Retrieve the last name and the duration of employment in months
SELECT last_name, TRUNC(MONTHS_BETWEEN(sysdate, hire_date), 0) duration
FROM employees
ORDER BY duration;

-- Retrieve the last name and the salary padded with asterisks to a length of 10
SELECT last_name, RPAD(salary, 10, '*')
FROM employees;

-- Retrieve the last name and the number of weeks worked for employees in department 90
SELECT last_name, TRUNC(((sysdate - hire_date) / 7), 0) "Weeks_Worked"
FROM employees
WHERE department_id = 90
ORDER BY "Weeks_Worked" DESC;

-- Retrieve the last name and the salary padded with dollar signs to a length of 12
SELECT last_name, LPAD(salary, 12, '$') salary
FROM employees;