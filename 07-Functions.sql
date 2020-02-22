-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Find the number of super_id
SELECT COUNT(super_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1970-01-01';

-- Find the avg of all male employees salaries
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

-- Find the sum of all employees salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
SELECT
	COUNT(sex),
    sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT
	SUM(total_sales),
    emp_id
FROM works_with
GROUP BY emp_id;

-- Find the total expense of each client_id
SELECT
	SUM(total_sales),
    client_id
FROM works_with
GROUP BY client_id;