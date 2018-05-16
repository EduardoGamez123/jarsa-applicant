-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
create database employee_employee
go
use employee_employee

CREATE TABLE employee (
  id_employee int  primary key not null,
first_name varchar(50),
last_name varchar (50),
id_department int ,
CONSTRAINT fk_department FOREIGN KEY (id_department) REFERENCES employee_department (id_department)
);

CREATE TABLE employee_department (
  id_department int  primary key not null,
nameDep varchar(35),
descriptionDep varchar(50)
);

CREATE TABLE employee_hobby (
);


INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (1, 'Sistemas', 'Administración de sistemas y soporte')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (2, 'Calidad', 'Armonizar la Política de Calidad')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (3, 'Almacén', 'Garantizar el abasto de productos')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (4, 'Logística', 'Administración de los materiales comprados.')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (5, 'Producción', 'Transformación de materias primas')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (6, 'Recursos_Humanos', 'Organización y planificación del personal')

INSERT employee (id_employee, first_name, last_name, id_department) VALUES (1, 'Eduardo ', 'Gámez', 1)
INSERT employee (id_employee, first_name, last_name, id_department) VALUES (2, 'Juan ', 'Peréz', 2)
INSERT employee (id_employee, first_name, last_name, id_department) VALUES (3, 'Roxana', 'Barrón', 1)
INSERT employee (id_employee, first_name, last_name, id_department) VALUES (4, 'Guadalupe', 'Salas', 4)
-- ...
