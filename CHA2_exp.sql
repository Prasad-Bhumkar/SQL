-- Retrieve employee details in a comma-separated format
SELECT 
    -- Concatenate last name, job ID, hire date, and salary
    last_name || ',' || job_id || ',' || hire_date || ',' || salary 
    -- Alias the concatenated column as "Employee Details"
    "Employee Details"
-- Specify the table to retrieve data from
FROM employees;