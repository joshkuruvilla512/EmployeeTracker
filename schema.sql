
DROP DATABASE IF EXISTS EmployeeTracker_db;

CREATE DATABASE EmployeeTracker_db;

USE EmployeeTracker_db;

CREATE TABLE department(
id INTEGER auto_increment NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE role(
id INTEGER auto_increment NOT NULL,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INTEGER NOT NULL,
constraint fk_department_id FOREIGN KEY (department_id) references department(id),
PRIMARY KEY(id)
);


CREATE TABLE employee(
id INTEGER auto_increment NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INTEGER NOT NULL,
constraint fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
manager_id INTEGER ,
constraint fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id),
PRIMARY KEY(id)
);

select * from employee;
select * from role;
select * from department;

INSERT into department (name)
VALUES ("Sales");
INSERT into department (name)
VALUES ("Engineering");
INSERT into department (name)
VALUES ("Finance");
INSERT into department (name)
VALUES ("Legal");
INSERT into department (name)
VALUES ("Manager");

select * from department;

INSERT into role (title, salary, department_id)
VALUES ("Sales Lead", 50000, 1);
INSERT into role (title, salary, department_id)
VALUES ("Assistant to the Worlds Best Boss", 63000, 2);
INSERT into role (title, salary, department_id)
VALUES ("Scott's Tots CEO", 55000, 3);
INSERT into role (title, salary, department_id)
VALUES ("Sales Lead", 60000, 4);
INSERT into role (title, salary, department_id)
VALUES ("Secretary", 85000, 5);
INSERT into role (title, salary, department_id)
VALUES ("One of a kind bitch", 40000, 6);
INSERT into role (title, salary, department_id)
VALUES ("Chili Master", 40000, 7);
INSERT into role (title, salary, department_id)
VALUES ("Scranton Strangler", 40000, 8);

select * from role;

INSERT into employee (first_name, last_name, role_id)
values ("Dwight", "Schrute", 2); 
INSERT into employee (first_name, last_name, role_id)
values ("Michael", "Scott", 3);
INSERT into employee (first_name, last_name, role_id)
values ("Jim", "Halpert", 1);
INSERT into employee (first_name, last_name, role_id)
values ("Pamela", "Beesly", 5);
INSERT into employee (first_name, last_name, role_id)
values ("Angela", "Martin", 6);
INSERT into employee (first_name, last_name, role_id)
values ("Kevin", "Malone", 7);
INSERT into employee (first_name, last_name, role_id)
values ("Creed", "Bratton", 8);

select * from employee;