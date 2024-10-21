-- question 1: Add a check constraint to ensure the 'firstname' column is in uppercase
alter table myemp1 add constraint ename_upper check(firstname = upper(firstname));

-- question 2: Add a check constraint to ensure the 'salary' column is within a specific range
alter table myemp1 add constraint rangeof_salary check(salary BETWEEN 3000 AND 10000);