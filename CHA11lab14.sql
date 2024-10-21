-- Grant privileges to the 'demo' user on the 'myemp' table
grant select, update, insert, drop
on myemp
to demo;

-- Grant privileges to the 'demo' user on the 'countries' table
grant select, insert, update, delete
on countries
to demo;

-- Revoke privileges from the 'demo' user on the 'myemp' table
revoke select, update, insert, drop
on myemp
to demo;

-- Revoke privileges from the 'demo' user on the 'countries' table
revoke select, insert, update, delete
on countries
to demo;

