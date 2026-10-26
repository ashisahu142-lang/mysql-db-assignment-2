# MySQL DB Select Query Assignment MCA 3rd Semester
# Employees table and sample rows based on the source diagram.
CREATE DATABASE IF NOT EXISTS assignment2;
USE assignment2;

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(5, 2),
    manager_id INT,
    department_id INT
);

INSERT IGNORE INTO employees
    (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
    (100, 'Ellen', 'Abel', 'EABEL', '555.123.4567', '2004-05-11', 'SA_REP', 11000.00, 0.30, 149, 80),
    (101, 'Sundar', 'Ande', 'SANDE', '555.123.4568', '2004-03-24', 'SA_REP', 6400.00, 0.20, 149, 80),
    (102, 'Alexander', 'Hunold', 'AHUNOLD', '555.123.4569', '2006-01-03', 'IT_PROG', 9000.00, NULL, 100, 60),
    (103, 'Bruce', 'Ernst', 'BERNST', '555.123.4570', '2007-05-21', 'IT_PROG', 6000.00, NULL, 102, 60),
    (104, 'David', 'Austin', 'DAUSTIN', '555.123.4571', '2005-06-25', 'IT_PROG', 4800.00, NULL, 102, 60),
    (105, 'Valli', 'Pataballa', 'VPATABAL', '555.123.4572', '2006-02-05', 'IT_PROG', 4800.00, NULL, 103, 60),
    (106, 'Diana', 'Lorentz', 'DLORENTZ', '555.123.4573', '2007-02-07', 'IT_PROG', 4200.00, NULL, 103, 60),
    (107, 'Nancy', 'Greenberg', 'NGREENBE', '555.123.4574', '2002-08-17', 'FI_MGR', 12008.00, NULL, 101, 100),
    (108, 'Daniel', 'Faviet', 'DFAVIET', '555.123.4575', '2002-08-16', 'FI_ACCOUNT', 9000.00, NULL, 108, 100),
    (109, 'John3', 'Chen', 'JCHEN', '555.123.4576', '2005-09-28', 'FI_ACCOUNT', 8200.00, NULL, 108, 100),
    (110, 'Ismael', 'Sciarra', 'ISCIARRA', '555.123.4577', '2005-09-30', 'FI_ACCOUNT', 7700.00, NULL, 108, 100);
