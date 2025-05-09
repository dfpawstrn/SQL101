-- Join

INSERT INTO branch VALUES (4, 'Bubbles Shed-N-Breakfast', 102, '2014-09-05');

SELECT * FROM branch;

-- Find all branches and the names of their managers

--Inner join 

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- We combine rows from different tables into a new table, in this case, only rows where the employee ID is present in the branch table

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN Included all rows from the LEFT table, not just branch mannagers

--RIGHT JOIN / identical but the right table includes all its rows

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;
