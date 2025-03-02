CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)

);

DROP TABLE student;

DESCRIBE student;

ALTER TABLE student ADD gpa DECIMAL (3,2);

ALTER TABLE student DROP gpa;