USE FUNCTIONS_DB;

-- STRING FUNCTIONS
-- UPPER() / UCASE()  LCASE()/LOWER()
select * from functions_db.student;
select UCASE(name) from functions_db.student;
select UPPER(name) from functions_db.student;
select LCASE(subject) from functions_db.student;
select LOWER(subject) from functions_db.student;

-- CONCAT , CONCAT_WS
SELECT CONCAT(NAME,ID) AS CONCATED_COLUMN FROM FUNCTIONS_DB.STUDENT;
SELECT CONCAT_WS(' ',NAME,ID) AS CONCATED_COLUMN FROM FUNCTIONS_DB.STUDENT;

-- Find the length of each student's name
SELECT name, LENGTH(name) AS name_length FROM student;
select length('aishu ');

-- SUBSTRING
-- SUBSTRING(string, position);
-- SUBSTRING(string FROM position);
SELECT SUBSTRING('MYSQL SUBSTRING', 0); -- EMPTY IF 0
SELECT SUBSTRING('MYSQL SUBSTRING', 7); -- SUBSTRING

-- SUBSTRING(string, position, length);
-- SUBSTRING(string FROM position FOR  length);
SELECT SUBSTRING('MySQL SUBSTRING',1,5); 
SELECT SUBSTRING('MySQL SUBSTRING' FROM 1 FOR 5);
SELECT SUBSTRING('MySQL SUBSTRING',-15,7); 
SELECT SUBSTRING('MySQL SUBSTRING' FROM -15 FOR 5); 

-- LEFT/RIGHT
SELECT LEFT('MySQL LEFT', 0);
SELECT LEFT('MySQL LEFT', 2);
SELECT LEFT('MySQL LEFT', -2);  -- ACCEPTS ONLY POSITIVE LENGTH VALUE
SELECT LEFT('MySQL LEFT', NULL);
SELECT LEFT('MySQL LEFT', LENGTH('MySQL LEFT') - 2);

SELECT RIGHT('MySQL LEFT', 0);
SELECT RIGHT('MySQL LEFT', 2);
SELECT RIGHT('MySQL LEFT', NULL);
SELECT RIGHT('MySQL LEFT', LENGTH('MySQL LEFT') - 2);

-- TRIM LTRIM RTRIM
SELECT TRIM('   Hello World   ') AS Result;
SELECT TRIM('x' FROM 'xxxSQLxxx') AS Result;
SELECT LTRIM('   Hello World   ') AS Result;
SELECT RTRIM('   Hello World   ') AS Result;
SELECT 
    LTRIM('   SQL') AS LeftTrimmed,
    RTRIM('SQL   ') AS RightTrimmed,
    TRIM('   SQL   ') AS FullyTrimmed;

-- REPLACE
UPDATE  FUNCTIONS_DB.STUDENT 
SET NAME = REPLACE(NAME,'LISHAice' ,'Lisha')
WHERE ID = 3;
select * from functions_db.student;

-- REVERSE
CREATE TABLE words(
  id INT AUTO_INCREMENT PRIMARY KEY,
  word VARCHAR(255) NOT NULL
);
INSERT INTO words(word)
VALUES('radar'), ('level'),('deified'),('man'),('12321');
SELECT word, REVERSE(word), word = REVERSE(word) AS palindrome FROM words;

