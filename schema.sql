DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(70) NULL,
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(70) NULL,
  salary DECIMAL (9, 2) NOT NULL,
  dept_id INT NOT NULL,
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR (30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
);

-- CREATING DEPARTMENTS
INSERT INTO departments (deptName)
VALUES ('MANAGEMENT');
INSERT INTO departments (deptName)
VALUES ('SALES DEPARTMENT');
INSERT INTO departments (deptName)
VALUES ('ACCOUNTING');
INSERT INTO departments (deptName)
VALUES ('OTHER');


-- CREATING EMPLOYEES
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Michael', 'Scott', 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Dwight', 'Shrute', 3, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Jim', 'Halpert', 2, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Pam', 'Beesly', 4, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Angela', 'Martin', 5, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Kevin', 'Malone', 6, 6);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Creed', 'Bratton', 7, 7);


-- CREATING ROLES
INSERT INTO role (title, salary, dept_id)
VALUES ('Worlds Best Boss', 75000.00, 1);
INSERT INTO role (title, salary, dept_id)
VALUES ('Assistant to the Worlds Best Boss', 50000.00, 1);
INSERT INTO role (title, salary, dept_id)
VALUES ('Salesman', 60000.00, 2);
INSERT INTO role (title, salary, dept_id)
VALUES ('Receptionist', 35000.00, 4);
INSERT INTO role (title, salary, dept_id)
VALUES ('Head Accountant', 60000.00, 3);
INSERT INTO role (title, salary, dept_id)
VALUES ('Accountant', 51000.00, 3);
INSERT INTO role (title, salary, dept_id)
VALUES ('Head of Quality Assurance', 65000.00, 4);


SELECT * FROM departments;

SELECT * FROM role;

SELECT * FROM employee;


SELECT role.role_id first_name, last_name, title, deptName, salary FROM ((employee
INNER JOIN role ON employee.role_id = role.role_id)
INNER JOIN departments ON role.dept_id = departments.dept_id);