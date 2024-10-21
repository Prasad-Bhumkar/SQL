-- Retrieve employees with more than 2 years of service
SELECT last_name 
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE,hire_date)/12 > 2;

-- Get distinct lengths of last names
SELECT DISTINCT LENGTH(last_name)
FROM employees;

-- Retrieve employees with last names of exactly 5 characters
SELECT last_name
FROM employees
WHERE LENGTH(last_name)=5;