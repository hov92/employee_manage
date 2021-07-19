DROP DATABASE IF EXISTS employee_trackerDB;

CREATE database employee_trackerDB;
USE employee_trackerDB;

CREATE TABLE department(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE role(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INT NOT NULL,
constraint fk_department foreign key (department_id) references department(id) on delete cascade,
PRIMARY KEY (id)
);

CREATE TABLE employee(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
constraint fk_role foreign key (role_id) references role(id) on delete cascade,
manager_id INT,
constraint fk_manager foreign key (manager_id) references employee(id) on delete cascade,
PRIMARY KEY (id)
);

