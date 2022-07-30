CREATE KEYSPACE employee WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE employee;

-- Creanto tabla
CREATE TABLE employee_details (
id int,
age int,
city text,
name text,
PRIMARY KEY (id));

-- Consulta
SELECT * FROM employee_details;

-- Insertando valores

INSERT INTO employee_details (id, age, city, name) VALUES (99, 20, 'Chicago', 'Max');

INSERT INTO employee_details (id, age, city, name) VALUES (1, 20, 'San Francisco', 'Max');

INSERT INTO employee_details (id, age, city, name) VALUES (2, 15, 'Atlanta', 'Trevor');

INSERT INTO employee_details (id, age, city, name) VALUES (400, 25, 'Seattle', 'Bob');



