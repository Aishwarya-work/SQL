GRANT SELECT ON customerdb.customers TO 'root'@'localhost';
REVOKE SELECT ON customerdb.customers FROM 'root'@'localhost';

SHOW GRANTS FOR CURRENT_USER;
USE CUSTOMERDB;
SELECT * FROM CUSTOMERS;
