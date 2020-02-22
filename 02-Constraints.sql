CREATE TABLE student (
	student_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE
);

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name, major) VALUES(3, NULL, 'Chemistry'); -- cannot be null
INSERT INTO student VALUES(4, 'Jack', 'Biology'); -- cannot major cannot duplicate
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;

DROP TABLE student;