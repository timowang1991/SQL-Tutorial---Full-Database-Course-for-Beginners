CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided'
);

DESCRIBE student;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

SET SQL_SAFE_UPDATES=0;

UPDATE student
SET major = 'Com Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET
	name = 'Tom',
    major = 'undecided'
WHERE student_id = 1;

UPDATE student
SET major = 'undecided';

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

SELECT * FROM student;

DROP TABLE student;