-- WILDCARDS

-- % = any # characters, _ = one character

--Find any clients who are official Dartmouth entities

SELECT * 
FROM client
WHERE client_name LIKE '%Dartmouth%';

SELECT * FROM client;

-- Find any branch suppliers who are in the Liquor business

SELECT *
FROM branch_supplier
WHERE supply_type LIKE '%Liquor';

-- Find any employee born in october

--v1- no Wildcard

SELECT * 
FROM employee
WHERE MONTH(birth_day) =10;

--V2 WITH wildcard _ (1x_ per character)

SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

--Find any clients who are schools

SELECT * FROM client
WHERE client_name LIKE '%school%'

