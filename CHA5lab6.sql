SELECT
last_name||' earns monthly '||salary||' but expects '||2*salary||' after appraisal.' "Appraised Salary"
FROM employees;

SELECT last_name,hire_date,
    ADD_MONTHS(hire_date, 5) AS service_date,
    NEXT_DAY(ADD_MONTHS(hire_date, 5), 'MONDAY') AS review_date
FROM employees;

SELECT last_name,TO_CHAR(commission_pct) || NVL2(commission_pct,' ','No commission') comm
FROM employees;

select last_name,TO_CHAR(hire_date,'DAY') joined_on
from employees 
where last_name = 'Davies';

SELECT last_name,
CASE job_id WHEN 'AD_PRES' THEN 'A'
WHEN 'ST_MAN' THEN 'B'
WHEN 'IT_PROG' THEN 'C'
WHEN 'SA_REP' THEN 'D'
WHEN 'ST_CLERK' THEN 'E' 
ELSE 'O' END "GRADES"
FROM employees;

SELECT last_name,
CASE job_id WHEN 'AD_PRES' THEN 'A'
WHEN 'ST_MAN' THEN 'B'
WHEN 'IT_PROG' THEN 'C'
WHEN 'SA_REP' THEN 'D'
WHEN 'ST_CLERK' THEN 'E' 
ELSE 'O' END "GRADES"
FROM employees;

SELECT last_name,
DECODE (job_id, 'AD_PRES', 'A',
 'ST_MAN', 'B',
 'IT_PROG', 'C',
 'SA_REP', 'D',
 'ST_CLERK', 'E', 
 'O') AS "GRADES"
FROM employees;