-- FUNCTIONS / AGGREGATION

-- Find the number of employees

SELECT COUNT(emp_id) FROM employee;  --COUNT(what we want to count) function

SELECT COUNT(super_id) FROM employee;  --COUNT(what we want to count) function

--Find the number of female employees born after 1970

SELECT COUNT(emp_id) FROM employee 
WHERE (birth_day >= '1970-01-01') 
AND (sex='F');

-- Find the average of all employee salaries

SELECT AVG(salary) FROM employee;

-- Find the average of all male employee salaries

SELECT AVG(salary) FROM employee
WHERE (sex='M');

-- Find the average of all male employee salaries, rounded result (2 decimals)

SELECT ROUND(AVG(salary),2) FROM employee
WHERE (sex='M');

-- Average Salary for BOTH M & F (groups employees by gender and calculates avg for each)

SELECT sex, AVG(salary)
FROM employee
GROUP BY sex;

--find the sum of all employee salaries

SELECT SUM(salary) FROM employee;

SELECT SUM(salary) FROM employee
WHERE (sex='F');

SELECT SUM(salary) FROM employee
GROUP BY sex;

-- Find out how many males and females there are

select COUNT(sex) FROM employee
GROUP BY sex;

SELECT sex, COUNT(*)
FROM employee 
GROUP BY sex;

--Find the total sales of each salesman

SELECT SUM(total_sales) FROM works_with
GROUP BY emp_id;

SELECT * FROM works_with;

--Find the total purchases of each client

SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;