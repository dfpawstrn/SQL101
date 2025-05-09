-- Nested Queries

--Find names of employees who have sold over X$ to a single client

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
FROM works_with
WHERE total_sales > 30000
);


-- Pre code we nested above
SELECT works_with.emp_id
FROM works_with
WHERE total_sales > 30000;

--Nested queries (subqueries) are used for filtering – here, we're filtering employees based on a condition in another table.
--The subquery returns a list of emp_ids that meet the total_sales > 30000 condition.
--The outer query then selects first_name and last_name of those employees.


-- Find all clients who are handled by the branch
--that Julian Swayze manages
--Assume you know Julian's ID


SELECT client.client_name
FROM client
WHERE client.branch_id= (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 100
    LIMIT 1  
);


--Nested queries allow filtering based on conditions in another table.
-- The subquery finds the branch_id for manager 100, and the outer query fetches clients from that branch.
-- Using LIMIT 1 ensures a single branch is returned, preventing multiple matches.