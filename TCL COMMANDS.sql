# 1. Start a Transaction
SET AUTOCOMMIT = 0;   -- turn off auto commit
START TRANSACTION;

# 2. Insert a New Customer (but not commit yet)
INSERT INTO customers (cust_id, first_name, second_name, dob, city)
VALUES (3, 'KUMAR', 'P', '1998-05-12', 'Trichy');

# 3. Use a SAVEPOINT
SAVEPOINT after_insert;

#4. Delete Duplicate Rows (trial run)
SELECT * FROM CUSTOMERS;
DELETE FROM customers
WHERE cust_id = 1 AND first_name = 'RAM';


#5. Rollback to Savepoint
ROLLBACK TO after_insert;

#6. commit
COMMIT;

# Rollback 
ROLLBACK;

