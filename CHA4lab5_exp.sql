SELECT last_name 
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE,hire_date)/12 > 2;

SELECT DISTINCT LENGTH(last_name)
FROM employees;

SELECT last_name
FROM employees
WHERE LENGTH(last_name)=5;