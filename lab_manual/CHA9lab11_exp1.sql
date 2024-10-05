create table ManagerempCounts(manager_id number(10),report_count number(10));

INSERT INTO ManagerempCounts (
    SELECT manager_id, COUNT(employee_id) AS report_count
    FROM employees
    GROUP BY manager_id
);

create table TopManager(manager_id number(10)`);

INSERT INTO TopManager (
    SELECT manager_id
    FROM ManagerempCounts
    ORDER BY report_count DESC LIMIT 1);



