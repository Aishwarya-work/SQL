SELECT NOW();
SELECT current_date();
SELECT current_time();
SELECT curdate();
SELECT curtime();
SELECT current_timestamp();
SELECT current_user();
SELECT ADDTIME('2023-10-23 14:30:00', '03:30:45');
SELECT 
    DATE_ADD('1999-12-31 23:59:59',
        INTERVAL 1 SECOND) result;
SELECT 
    DATE_ADD('1999-12-31 23:59:59',
        INTERVAL 1 MONTH) result;
SELECT 
    DATE_SUB('1999-12-31 23:59:59',
        INTERVAL 1 SECOND) result;
SELECT 
    DATE_ADD('1999-12-31 23:59:59',
        INTERVAL 1 MONTH) result;
SELECT 
  DATEDIFF('2011-08-17', '2011-08-18') days;
  
-- DATE_FORMAT(date,format)
SELECT TIME_FORMAT('20:30:45', '%h:%i %p');