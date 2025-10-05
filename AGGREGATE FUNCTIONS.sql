CREATE DATABASE functions_db;
USE functions_db;
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 10 AND age <= 25),
    subject ENUM('Math', 'Science', 'English', 'History', 'Geography') NOT NULL,
    marks INT CHECK (marks >= 50 AND marks <= 100),
    grade CHAR(1)
);

INSERT INTO student (name, age, subject, marks, grade) VALUES
('Alice', 15, 'Math', 85, 'A'),
('Alice', 15, 'Science', 78, 'B'),
('Alice', 15, 'English', 92, 'A'),

('Bob', 17, 'Math', 74, 'B'),
('Bob', 17, 'Science', 88, 'A'),
('Bob', 17, 'English', 95, 'A'),

('Charlie', 14, 'Math', 91, 'A'),
('Charlie', 14, 'Science', 80, 'B'),
('Charlie', 14, 'English', 85, 'A'),

('David', 18, 'Math', 67, 'C'),
('David', 18, 'Science', 72, 'C'),
('David', 18, 'English', 90, 'A'),

('Emma', 16, 'Math', 79, 'B'),
('Emma', 16, 'Science', 89, 'A'),
('Emma', 16, 'English', 94, 'A'),

('Frank', 19, 'Math', 83, 'B'),
('Frank', 19, 'Science', 77, 'B'),
('Frank', 19, 'English', 91, 'A'),

('Grace', 20, 'Math', 90, 'A'),
('Grace', 20, 'Science', 85, 'A'),
('Grace', 20, 'English', 93, 'A'),

('Harry', 21, 'Math', 70, 'C'),
('Harry', 21, 'Science', 76, 'B'),
('Harry', 21, 'English', 88, 'A'),

('Ivy', 22, 'Math', 82, 'B'),
('Ivy', 22, 'Science', 90, 'A'),
('Ivy', 22, 'English', 97, 'A'),

('Jack', 23, 'Math', 75, 'B'),
('Jack', 23, 'Science', 81, 'B'),
('Jack', 23, 'English', 92, 'A');

select * from functions_db.student;
-- count
select count(*) as Row_count from functions_db.student; 

-- Total marks obtained by all students
select sum(marks) as Total_marks from functions_db.student;
SELECT name , SUM(marks) AS Total_marks
FROM functions_db.student
GROUP BY name;

-- Average marks for each subject
SELECT subject, AVG(marks) AS avg_marks FROM student GROUP BY subject;

-- Number of students in each grade
SELECT grade, COUNT(DISTINCT name) AS student_count FROM student GROUP BY grade;

-- Highest and lowest marks in each subject
SELECT subject, MAX(marks) AS highest_marks, MIN(marks) AS lowest_marks FROM student GROUP BY subject;

-- count
SELECT COUNT(DISTINCT name) AS unique_students
FROM functions_db.student;


