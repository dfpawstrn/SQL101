CREATE TABLE IF NOT EXISTS student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)

);

SELECT * FROM student;

INSERT INTO student (student_id, name)
Values (4, 'Claire');


