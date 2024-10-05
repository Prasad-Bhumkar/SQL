UPDATE emp 
SET salary = ((salary/100)*15)+salary 
WHERE job_id 
LIKE '%ACCOUNT';