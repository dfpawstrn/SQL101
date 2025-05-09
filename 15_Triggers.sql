-- Triggers


CREATE TABLE trigger_test (
    message VARCHAR(100)
 );

 --Done in the MYSQL TERMINAL

 DELIMITER $$
 CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES ('added new employee');
    END$$
    DELIMITER ;

    INSERT INTO employee
    VALUES (115, 'Trinity', 'Collins', '1988-12-21', 'F', 69000, 101,1);

    SELECT * FROM trigger_test;

--A trigger is a piece of SQL code that runs automatically when 
--an event (INSERT, UPDATE, DELETE) occurs on a table.

--They are used for data validation, logging, automation, or enforcing business rules.

--Basic trigger syntax (Remember this is inputed in SQL terminal)

CREATE TRIGGER trigger_name
BEFORE | AFTER INSERT | UPDATE | DELETE
ON table_name
FOR EACH ROW
BEGIN
    --trigger logic here
END;

--Example 1: Track Salary Changes (UPDATE Trigger)
--Automatically logs salary changes into a table whenever an employee's salary is updated.

CREATE TRIGGER before_salary_update
BEFORE UPDATE ON employee
FOR EACH ROW
BEGIN
    INSERT INTO salary_log (emp_id, old_salary, new_salary, change_date)
    VALUES (OLD.emp_id, OLD.salary, NEW.salary, NOW());
END;

--Runs before a salary UPDATE.
--OLD.salary → The previous salary value.
--NEW.salary → The new salary being assigned.
--Saves old and new salaries into a salary_log table.

 DELIMITER $$
 CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES (NEW.first_name);
    END$$
    DELIMITER ;


    INSERT INTO employee
    VALUES (116, 'Right', 'Hook', '1959-06-02', 'M', 120000, 2,2);

    SELECT * FROM trigger_test;


    -- CONDITIONALS

    DELIMITER $$
    CREATE  TRIGGER my_trigger2 BEFORE INSERT -- we can use AFTER instead of BEFORE
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES ('Added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES ('Added female employee');
        ELSE
            INSERT INTO trigger_test VALUES ('Added other employee');
        END IF;
    END$$
DELIMITER ;

SELECT * FROM trigger_test;

DROP TRIGGER my_trigger -- eliminates specified trigger (MySQL terminal only)