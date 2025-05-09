-- Union

--Find a list of employee and branch names

SELECT first_name AS Company_names --company-names instead of first name updates the output for more consistency
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- Rule 1: on each SELECT row we are uniting, we must have the same number of columns
-- Rule 2: They must have the same data type


SELECT client_name, client.branch_id   -- . prefixes specific table of origin
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

--Find a list of all money spent or earned by the company

SELECT SUM(total_sales)
FROM works_with
UNION
SELECT SUM (salary)
FROM employee;

--Version 2 with COLUMN ALIASES

--Adds a category column → Labels each sum as Earnings or Salary Expenses
-- Uses UNION ALL (Keeps all rows/faster) instead of UNION (Removes duplicate entries) 

SELECT 'Total earnings' AS category, SUM(total_sales) AS total_amount
FROM works_with
UNION ALL
SELECT 'Total salary expenses', SUM(salary)
FROM employee;