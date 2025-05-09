-- MORE BASIC QUERIES

--FIND ALL EMPLOYEES

SELECT * FROM employee;

--Find all clients

SELECT * FROM client;

--Find all employees by salary (To get Largest to smallest -> DESC)

SELECT * FROM employee
ORDER BY salary DESC;

--Find all employees ordered by sex then name

SELECT * FROM employee
ORDER BY sex, first_name, last_name;

--find the first 5 employees in the table

SELECT * FROM employee
LIMIT 5;

--Find the first and last names of all employees

SELECT first_name, last_name FROM employee;

--Find the forename and surname of all employees

SELECT first_name AS forename, last_name AS surname
FROM employee;

--Find out all the different genders (different sexes stored inside the table)

SELECT DISTINCT sex FROM employee;

SELECT DISTINCT branch_id FROM branch;