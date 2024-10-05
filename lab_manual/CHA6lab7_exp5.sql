SELECT COUNT(last_name)
FROM employees
WHERE department_id = 30
OR commission_pct IS NOT NULL;