CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20), 
    major VARCHAR(20) DEFAULT('undecided'),
    PRIMARY KEY(student_id)
);

DESCRIBE student; 


INSERT INTO student (name, major) VALUES('Jack', 'Biology');
INSERT INTO student (name,major) VALUES('Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO student VALUES (5, 'Mike', 'Computer Science');

SELECT * FROM student;

DROP TABLE student;

UPDATE student
SET major ="Bio"
WHERE major = "Biology";


UPDATE STUDENT
SET name = 'Tom', major = 'undecided';


DELETE FROM student
WHERE student_id = 5;

-- CONSTRAINTS
-- NOT NULL = guarantees input is not null
-- UNIQUE   = guarantees input is not repeated on different rows
-- DEFAULT('placeholder text if none inserted')
-- AUTO_INCREMENT Specifies added data is automatically incremented
-- this is a comment