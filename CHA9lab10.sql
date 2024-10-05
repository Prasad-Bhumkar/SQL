CREATE TABLE myemp (
employee_id number (5),
last_name varchar2(20),
first_name varchar2(20),
salary number(15),
department_number number(10)
);


DESCRIBE myemp;


INSERT INTO myemp
VALUES
(2,'bade','ravi',25000,30);


INSERT INTO myemp
(employee_id,last_name,first_name,salary,department_number)
VALUES 
(2,'chaudhar','sanket',15000,15);


SELECT * FROM myemp;


INSERT INTO myemp
VALUES
('&employee_id','&last_name','&first_name','&salary','&department_number');


SELECT * FROM myemp;


COMMIT;


UPDATE myemp
SET last_name = 'jadhav'
WHERE employee_id = 3;


UPDATE myemp
SET salary = 1000
WHERE salary < 900;


SELECT * FROM myemp;


DELETE FROM myemp 
WHERE salary < 24000;


SELECT * FROM myemp;


COMMIT;