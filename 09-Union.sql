-- Find a list of employee and branch names
SELECT
	first_name AS names,
    last_name
FROM employee
UNION
SELECT
	branch_name,
    mgr_id
FROM branch;

-- Find a list of all clients & branch suppliers' names
SELECT
	client_name, client.branch_id
FROM client
UNION
SELECT
	supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- Find a list of all money spent or earned by the company
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;