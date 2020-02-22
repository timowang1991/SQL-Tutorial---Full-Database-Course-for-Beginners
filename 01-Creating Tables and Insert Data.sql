CREATE TABLE student (
	student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student VALUES(1, 'Jack', 'Biology', NULL);
INSERT INTO student VALUES(2, 'Kate', 'Sociology', NULL);
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology', NULL);
INSERT INTO student VALUES(5, 'Mike', 'Computer Science', NULL);

SELECT * FROM student;

DROP TABLE student;