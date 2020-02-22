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

SELECT
	student.student_id,
	student.name,
    student.major
FROM student
ORDER BY major, student_id DESC
LIMIT 4;

SELECT *
FROM student
WHERE major <> 'Chemistry' OR major = 'Biology';

SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');

DROP TABLE student;