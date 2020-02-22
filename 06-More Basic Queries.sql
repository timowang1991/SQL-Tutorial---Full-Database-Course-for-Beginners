-- Find all employees
SELECT *
FROM employee;

SELECT *
FROM client;

-- Find all employees ordered by salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- Find all employees ordered by sex then name
SELECT *
FROM employee
ORDER BY sex, first_name;

-- Find the first 5 employees in the table
SELECT *
FROM employee
LIMIT 5;

-- Find the first and lastname in the table
SELECT
	first_name AS forename,
    last_name AS surname
FROM employee;

-- Find out all the different genders
SELECT
	DISTINCT sex
FROM employee;

-- Find out all the different branch
SELECT
	DISTINCT branch_id
FROM employee;