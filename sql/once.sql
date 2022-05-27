-- run it on MySQL as root
-- creates user and schema red

drop user if exists red;
drop schema if exists red;

-- !!! change password !!!
create user red identified by 'password';
create schema red;

grant all privileges on red.* to red;
