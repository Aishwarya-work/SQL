#DML COMMANDS
SET AUTOCOMMIT =1 ;
SELECT * FROM customerdb.customers;

#insert
INSERT INTO customers VALUES('1','Ram','k','2000-10-4','chennai');
INSERT INTO customers VALUES('2','RAVI','A','2000-10-24','chennai');
INSERT INTO customers VALUES('3','RAVI','A','2000-10-24','chennai');
#Update
UPDATE customers 
SET first_name = 'RAM',second_name = 'S',city = 'Madurai'
where cust_id = 1;

#Delete
DELETE  FROM customers WHERE cust_id = 3;
