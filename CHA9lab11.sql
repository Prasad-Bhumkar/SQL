INSERT INTO myemp (employee_id, last_name, first_name, salary, department_number)
VALUES 
(5, 'sharma', 'shankar', 15000, 15);
INSERT INTO myemp (employee_id, last_name, first_name, salary, department_number)
VALUES 
(6, 'sharma', 'manohar', 15000, 15);


SELECT * FROM myemp;


SAVEPOINT s1;


DELETE FROM myemp;


SELECT * FROM myemp;


ROLLBACK TO SAVEPOINT s1;


SELECT * FR0M myemp;


COMMIT;
