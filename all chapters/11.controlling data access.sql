-- 1. What object privilege must be granted to a user to allow them to query a table?
-- This privilege allows users to retrieve data from the specified table.

-- Answer: The SELECT privilege must be granted to a user to allow them to query a table.
GRANT SELECT ON table_name TO user_name;

-- 2. What object privilege must be granted to a user to allow them to create a table?
-- This privilege enables users to create new tables within the specified schema.

-- The CREATE TABLE privilege must be given to the user who wants to create a table.
GRANT CREATE ON SCHEMA schema_name TO user_name;

-- 3. Consider a scenario where you are a database administrator. You want to give setup privileges on a table to all the users. What will make your job easier?
-- Granting all privileges to a user by setting them as public simplifies management.

--It will be a better approach to grant all the privileges of tables To the user by setting them as public.
GRANT ALL PRIVILEGES ON table_name TO PUBLIC;

-- 4. What command will be used to change the password for user hr?
-- This command allows the administrator to update the user's password for security purposes.

alter user hr identified by mypass;

-- 5. Grant the UPDATE privilege on the EMPLOYEES table to the DEMO user, allowing them to grant this privilege to others.
-- This command enables the DEMO user to modify records in the EMPLOYEES table.

grant update
on employees
to demo
with grant option;



-- 1. Grant another user privilege on your table and verify the privilege given.
-- This command allows you to check if the privileges have been successfully granted.

grant select, update, insert, drop
on myemp
to demo;


-- 2. Grant another user privilege to manipulate data on the countries table.
-- This command provides the necessary permissions for data operations on the countries table.

grant select, insert, update, delete
on countries
to demo;

-- 3. Revoke privileges from the 'demo' user on the 'myemp' table.
-- This command removes the specified privileges from the demo user to restrict access.

revoke select, update, insert, drop
on myemp
to demo;


revoke select, insert, update, delete
on countries
to demo;
