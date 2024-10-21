-- Object privileges are required to perform specific actions on database objects.
-- The SELECT privilege must be granted to the user to allow them to query the table.

-- The CREATE TABLE privilege must be given to the user who wants to create a table.

-- Setting all privileges as public will make administration easier, but it's not recommended for security reasons.

-- Alter the password for the HR user.
alter user hr identified by mypass;

-- Grant the UPDATE privilege on the EMPLOYEES table to the DEMO user, allowing them to grant this privilege to others.
grant update
on employees
to demo
with grant option;

