INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Find all branches and the names of their managers
SELECT
	employee.emp_id,
    employee.first_name,
    branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;