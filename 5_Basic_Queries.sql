CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20), 
    major VARCHAR(20) DEFAULT('undecided'),
    PRIMARY KEY(student_id)
);

DESCRIBE student; 

SELECT * FROM student;

INSERT INTO student (name, major) VALUES('Jack', 'Biology');
INSERT INTO student (name,major) VALUES('Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO student VALUES (5, 'Mike', 'Computer Science');

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


SELECT name
FROM student;

SELECT student.name, student.major
FROM student;
ORDER BY name;

--ORDER BY name DESC/ASC; orders in a descending/ascending fashion

SELECT * FROM student
ORDER BY major, name;

SELECT * FROM student
ORDER BY student_id DESC
LIMIT 2; 

--Limit - Sets the maximum amount of results we want returned

SELECT * FROM student
WHERE major = 'Biology' OR major = 'Computer Science';

-- Alternatively (better option for multiple conditions)

SELECT * FROM student
WHERE major IN ('Biology', 'Computer Science');

-- <, >, <=, >=, =, <> (NOT EQUAL), AND, OR

SELECT name, major
FROM student
WHERE major <> 'Chemistry';

SELECT * FROM student
WHERE student_id <= 3 AND name <> 'Jack';

SELECT * FROM student
WHERE name in ('Claire', 'Jack', 'Mike');

SELECT * FROM student
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;
