CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20), 
    major VARCHAR(20) DEFAULT('undecided'),
    PRIMARY KEY(student_id)
);

-- this is a comment

DESCRIBE student; 

SELECT * FROM student;

INSERT INTO student (name, major) VALUES('Jack', 'Biology');
INSERT INTO student (name,major) VALUES('Kate', 'Sociology');
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES (4, 'Jack', 'Biology');
INSERT INTO student VALUES (5, 'Mike', 'Computer Science');


DROP TABLE student;

-- CONSTRAINTS
-- NOT NULL = guarantees input is not null
-- UNIQUE   = guarantees input is not repeated on different rows
-- DEFAULT('placeholder text if none inserted')
-- AUTO_INCREMENT Specifies added data is automatically incremented