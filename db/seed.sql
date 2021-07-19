USE employee_trackerDB;
INSERT INTO department (name)
VALUES ("HR");
INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Customer Service");

INSERT INTO role (title, salary, department_id)
VALUES ("Supervisor",65000,2);

INSERT INTO role (title, salary, department_id)
VALUES ("Intern",5000,3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe",1, NUll);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jane", "Dawn",2, 1);
