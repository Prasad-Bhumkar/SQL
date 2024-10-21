-- question 1
-- Create a table to store the count of employees reporting to each manager
CREATE TABLE ManagerempCounts (
    manager_id NUMBER(10),  -- Unique identifier for the manager
    report_count NUMBER(10)  -- Number of employees reporting to the manager
);

-- Populate the ManagerempCounts table with data from the employees table
INSERT INTO ManagerempCounts (
    SELECT manager_id, COUNT(employee_id) AS report_count
    FROM employees
    GROUP BY manager_id
);

-- Create a table to store the top manager with the most reports
CREATE TABLE TopManager (
    manager_id NUMBER(10) PRIMARY KEY  -- Unique identifier for the top manager
);

-- Populate the TopManager table with the manager having the most reports
INSERT INTO TopManager (
    SELECT manager_id
    FROM (
        SELECT manager_id, report_count,
        ROW_NUMBER() OVER (ORDER BY report_count DESC) AS row_num
        FROM ManagerempCounts
    )
    WHERE row_num = 1
);


-- question 3
-- Increase the salary of employees with job_id containing 'ACCOUNT' by 15%
UPDATE emp 
SET salary = ((salary/100)*15)+salary 
-- Filter employees with job_id containing 'ACCOUNT'
WHERE job_id 
LIKE '%ACCOUNT';