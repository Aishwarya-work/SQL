# DDL-- CUSTOMER DB -- CREATE,ALTER , DROP,TRUNCATE

# CREATE DATABASE
CREATE DATABASE customerdb;
USE customerdb;
# CREATE TABLE
CREATE TABLE customers(
cust_id int
,first_name varchar(20)
,last_name varchar(10)
,dob date
,city varchar(15));

# ALTER TABLE -- CHANGE CLAUSE
ALTER TABLE customers CHANGE last_name second_name varchar(10);
DESCRIBE customers;
# MODIFY 
ALTER TABLE customers MODIFY first_name varchar(25) NOT NULL;
DESCRIBE customers;
-- ADD COLUMN 
ALTER TABLE customers ADD COLUMN salary int ;
DESCRIBE customers;
-- DROP COLUMN 
ALTER TABLE customers DROP COLUMN salary;
DESCRIBE customers;

# DROP
DROP DATABASE customerdb;
DROP TABLE customers;

# TRUNCATE 
TRUNCATE TABLE customers;

SELECT * FROM customerdb.customers;