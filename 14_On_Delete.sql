-- ON DELETE SET NULL

CREATE TABLE branch (
branch_id INT PRIMARY KEY,
branch_name VARCHAR(40),
mgr_id INT,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL -- usefull when
--what we delete is not a PRIMARY KEY
);

DELETE FROM employee
WHERE emp_id = 102;

-- ON DELETE CASCADE (deletes entire row)

CREATE TABLE branch_supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    supply,type VARCHAR(40),
    PRIMARY KEY (branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE -- Usefull
    -- we need to delete rows that have primary keys. PK's cannot have null values
);

DELETE FROM branch_supplier
where branch_id = 2;
