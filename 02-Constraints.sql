CREATE TABLE student (
	student_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE
);

DESCRIBE student;

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name, major) VALUES(3, NULL, 'Chemistry'); -- cannot be null
INSERT INTO student VALUES(4, 'Jack', 'Biology'); -- cannot major cannot duplicate
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;

DROP TABLE student;

----------------------------

CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided'
);

DESCRIBE student;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');

SELECT * FROM student;

DROP TABLE student;