CREATE DATABASE students_db;
CREATE TABLE info1 
( student_name VARCHAR(50) PRIMARY KEY,
  id INT,
  cgpa DECIMAL(4,3),
  section VARCHAR(10)
);
INSERT INTO info1 VALUES
('HARSHA',1,9.06,'F'),
('VARDHAN',2,9.15,'F');
SELECT *
FROM info1


 