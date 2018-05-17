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
fk_typeEmployee int,
CONSTRAINT fk_typeEmployee FOREIGN KEY (fk_typeEmployee) REFERENCES TypeEmployee (id_TypeEmployee)
);

CREATE TABLE employee_department (
id_department int  primary key not null,
nameDep varchar(35),
descriptionDep varchar(50)
);

CREATE TABLE employee_hobby (
id_hobby int  primary key not null,
name_hobby varchar(50),
description_hobby varchar(50)
);
alter table employee add id_jefe int
ALTER TABLE employee ADD FOREIGN KEY(id_jefe) REFERENCES employee(id_Employee)
Create Table Hobbiedetalle
 (
 id_HobbieDetalle int not null identity primary key,
 fk_hobby int not null,
 fk_employee int not null,
 CONSTRAINT fk_hobby FOREIGN KEY (fk_hobby) REFERENCES employee_hobby (id_hobby),
 CONSTRAINT fk_employee FOREIGN KEY (fk_employee) REFERENCES employee (id_employee)
 );

 create table TypeEmployee
(
id_TypeEmployee int  primary key not null identity,
DescriptionType varchar(50)
);


INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (1, 'Sistemas', 'Administración de sistemas y soporte')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (2, 'Calidad', 'Armonizar la Política de Calidad')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (3, 'Almacén', 'Garantizar el abasto de productos')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (4, 'Logística', 'Administración de los materiales comprados.')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (5, 'Producción', 'Transformación de materias primas')
INSERT employee_department (id_department, nameDep, descriptionDep) VALUES (6, 'Recursos_Humanos', 'Organización y planificación del personal')

INSERT employee (id_employee, first_name, last_name, id_department) VALUES (1, 'Eduardo ', 'Gámez', 1,1)
INSERT employee (id_employee, first_name, last_name, id_department) VALUES (2, 'Juan ', 'Peréz', 2,2)
INSERT employee (id_employee, first_name, last_name, id_department) VALUES (3, 'Roxana', 'Barrón', 1,1)
INSERT employee (id_employee, first_name, last_name, id_department) VALUES (4, 'Guadalupe', 'Salas', 4,2)


INSERT employee_hobby (id_hobby, name_hobby, description_hobby) VALUES (1, 'Deportes', 'Practicar Deportes')
INSERT employee_hobby (id_hobby, name_hobby, description_hobby) VALUES (2, 'Cine', 'Ir al cine')
INSERT employee_hobby (id_hobby, name_hobby, description_hobby) VALUES (3, 'Música', 'Escuchar Música')


INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (1, 1, 1)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (2, 2, 1)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (3, 1, 2)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (4, 2, 2)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (5, 1, 3)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (6, 3, 3)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (7, 2, 4)
INSERT Hobbiedetalle (id_HobbieDetalle, fk_hobby, fk_employee) VALUES (8, 3, 4)
-- ...
