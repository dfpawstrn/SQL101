CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_day DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT,  
    branch_id INT   

);

ALTER TABLE employee
ADD COLUMN sex VARCHAR(1) AFTER birth_day;

CREATE TABLE branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL

);

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;


CREATE TABLE client (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE works_with (
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

CREATE TABLE branch_supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);


-- Freedom 35

DESCRIBE employee;

INSERT INTO employee VALUES(100, 'Julian', 'Swayze', '1968-05-17', 'M', 250000,NULL, NULL);

INSERT INTO branch VALUES (1, 'Freedom 35', 100, '2002-06-23'); 


UPDATE employee SET branch_id = 1 WHERE emp_id=100;

INSERT INTO employee VALUES(101, 'Richard', 'LaFleur', '1971-03-21', 'M', 220420, 100,1);

INSERT INTO employee VALUES(102, 'Bubbles', 'Bubs', '1972-10-13', 'M', 76000, 100,1);

-- Sunnyvale TP


INSERT INTO employee VALUES(103, 'Barbara', 'Lahey', '1948-07-02', 'F', 25000, NULL,NULL);

UPDATE employee SET branch_id = 2 WHERE emp_id=103;


INSERT INTO branch VALUES (2, 'Sunnyvale Trailer Park', 103,'1977-02-22');

INSERT INTO employee VALUES (104, 'Jim', 'Lahey', '1946-04-12', 'M', 18000, 103,2);

INSERT INTO employee VALUES (105, 'Sarah', 'Gaddy', '1976,01,25', 'F', 8000,100,2);

INSERT INTO employee VALUES (106, 'Lucy', 'Decoutere', '1970-09-05', 'F', 8000,100,2);

INSERT INTO employee VALUES(107, 'Cory', 'Bowles', '1973-11-02', 'M', 200, 100,1);

INSERT INTO employee VALUES(108, 'Trevor', 'Gumby', '1970-12-17', 'M', 200, 100,1);


-- Dirty Burguer

INSERT INTO employee VALUES (109, 'Philadelphia', 'Collins', '1947-03-19', 'M', 13000, NULL,NULL);

INSERT INTO branch VALUES (3, 'Dirty Burger', 109, '2007-05-20');

UPDATE employee SET branch_id = 3 WHERE emp_id=109;

INSERT INTO employee VALUES (110, 'Randy', 'Bobandy', '1969-03-04', 'M', 2100, 109, 3);

INSERT INTO employee VALUES (111, 'Jacob', 'Collins', '1975-10-28', 'M', 500,100, 1);

select * from branch;

-- Client

DESCRIBE client;

INSERT INTO client VALUES (400, 'J-Roc', 2);

INSERT INTO client VALUES(401, 'Bottle Kids Inc.', 2);

INSERT INTO client VALUES(402, 'Dartmouth Vocacional School', 3);

INSERT INTO client VALUES (403, 'Ray LaFleur', 3);

INSERT INTO client VALUES (404, 'Steve French', 1);

INSERT INTO client VALUES (405, 'George Green', 2);

INSERT INTO client VALUES (406, 'Dartmouth Penitentiary (Con College', 1);

UPDATE client
SET client_name = 'Dartmouth Penetentiary (Con College)'
WHERE client_id = 406;

-- Branch Supplier

INSERT INTO branch_supplier VALUES (2, 'Roc Vodka', 'Liquor');
INSERT INTO branch_supplier VALUES (2, 'The Dirty Dancer', 'Adult Entertainment');
INSERT INTO branch_supplier VALUES (1, 'Shitty Bill', 'Logistics');
INSERT INTO branch_supplier VALUES (2, 'King of Donair', 'Food');
INSERT INTO branch_supplier VALUES (1, 'Reggie Rose','Hidroponics');
INSERT INTO branch_supplier VALUES (3, 'Cyrus MacDougall', 'Hardware');
INSERT INTO branch_supplier VALUES (3, 'Sam Losco', 'Team building cave expeditions');

-- Works With
-- ctrl + ~  Comments Selecter line

INSERT INTO works_with VALUES (105, 400, 2700);
INSERT INTO works_with VALUES (101, 406, 223000);
INSERT INTO works_with VALUES (108, 404, 0);
INSERT INTO works_with VALUES (107, 401, 20);
INSERT INTO works_with VALUES (109, 402, 45000);
INSERT INTO works_with VALUES (111, 403, 60);
INSERT INTO works_with VALUES (104, 401, 650);
INSERT INTO works_with VALUES (110, 405, 3200);
INSERT INTO works_with VALUES (101, 402, 19500);
INSERT INTO works_with VALUES (103, 403, 8500);
INSERT INTO works_with VALUES (106, 405, 31000);
