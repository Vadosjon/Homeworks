
-- 1) Таблица employees
-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);

insert into employees(employee_name)
VALUES ('Vadim'),
       ('Sergey'),
       ('Ivan'),
       ('Elena'),
       ('Olga'),
       ('Anna'),
       ('Dmitry'),
       ('Natalia'),
       ('Alex'),
       ('Maria'),
       ('Andrey'),
       ('Ekaterina'),
       ('Maxim'),
       ('Eugene'),
       ('Viktor'),
       ('Julia'),
       ('Pavel'),
       ('Tatiana'),
       ('Svetlana'),
       ('Nikolay'),
       ('Irina'),
       ('Anton'),
       ('Yulia'),
       ('Roman'),
       ('Marina'),
       ('Artem'),
       ('Anastasia'),
       ('Denis'),
       ('Katerina'),
       ('Sofia'),
       ('Konstantin'),
       ('Victoria'),
       ('Vladimir'),
       ('Polina'),
       ('Igor'),
       ('Larisa'),
       ('Evgeny'),
       ('Ekaterina'),
       ('Valentin'),
       ('Elizaveta'),
       ('Mikhail'),
       ('Alina'),
       ('Boris'),
       ('Anatoly'),
       ('Ekaterina'),
       ('Vadim'),
       ('Nina'),
       ('Sergey'),
       ('Elena'),
       ('Alexandra'),
       ('Svetlana'),
       ('Nikolay'),
       ('Daria'),
       ('Vitaly'),
       ('Ksenia'),
       ('Marina'),
       ('Ivan'),
       ('Maria'),
       ('Andrey'),
       ('Ekaterina'),
       ('Maxim'),
       ('Eugene'),
       ('Viktor'),
       ('Julia'),
       ('Pavel'),
       ('Tatiana'),
       ('Svetlana'),
       ('Nikolay'),
       ('Irina'),
       ('Anton');



-- 2) Таблица salary

-- Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500


CREATE TABLE salary (
    id SERIAL PRIMARY KEY,
    monthly_salary INT NOT NULL
);

INSERT INTO salary (monthly_salary)
VALUES
    (1000),
    (1100),
    (1200),
    (1300),
    (1400),
    (1500),
    (1600),
    (1700),
    (1800),
    (1900),
    (2000),
    (2100),
    (2200),
    (2300),
    (2400),
    (2500);


-- Таблица employee_salary
-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

create table emloyee_salary(
	id serial primary key,
	emplyees_id int not null unique,
	salary_id int not null
);

insert into emloyee_salary (emplyes_id, salary_id)
VALUES
    (3, 7),
    (1, 4),
    (5, 9),
    (40, 13),
    (23, 4),
    (11, 2),
    (52, 10),
    (15, 13),
    (26, 4),
    (16, 1),
    (33, 7),
    (9, 3),
    (25, 11),
    (17, 5),
    (30, 15),
    (18, 9),
    (22, 6),
    (4, 14),
    (20, 8),
    (36, 12),
    (2, 1),
    (7, 10),
    (13, 2),
    (29, 14),
    (8, 3),
    (31, 11),
    (27, 5),
    (12, 15),
    (14, 9),
    (19, 6),
    (6, 12),
    (21, 8),
    (32, 1),
    (35, 10),
    (39, 2),
    (80, 31),
    (81, 32),
    (82, 33),
    (83, 34),
    (84, 35),
    (85, 36),
    (86, 37),
    (87, 38),
    (88, 39),
    (89, 40);


-- Таблица roles
-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками:
-- id
-- role_name
-- 1
-- Junior Python developer
-- 2
-- Middle Python developer
-- 3
-- Senior Python developer
-- 4
-- Junior Java developer
-- 5
-- Middle Java developer
-- 6
-- Senior Java developer
-- 7
-- Junior JavaScript developer
-- 8
-- Middle JavaScript developer
-- 9
-- Senior JavaScript developer
-- 10
-- Junior Manual QA engineer
-- 11
-- Middle Manual QA engineer
-- 12
-- Senior Manual QA engineer
-- 13
-- Project Manager
-- 14
-- Designer
-- 15
-- HR
-- 16
-- CEO
-- 17
-- Sales manager
-- 18
-- Junior Automation QA engineer
-- 19
-- Middle Automation QA engineer
-- 20
-- Senior Automation QA engineer



create table roles(
	id serial primary key,
	role_name int not null unique,
	salary_id int not null
);

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');


-- Таблица roles_employee
-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id serial primary key, 
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id), 
	foreign key (role_id) references roles(id)
);

insert into roles_employee  (employee_id, role_id)
VALUES
    (68, 2),
    (69, 2),
    (3, 9),
    (40, 13),
    (23, 4),
    (11, 2),
    (59, 10),
    (15, 13),
    (26, 4),
    (16, 1),
    (33, 7),
    (9, 3),
    (25, 11),
    (17, 5),
    (30, 15),
    (18, 9),
    (22, 6),
    (66, 14),
    (20, 8),
    (36, 12),
    (2, 1),
    (7, 10),
    (13, 2),
    (29, 14),
    (8, 3),
    (31, 11),
    (27, 5),
    (12, 15),
    (14, 9),
    (19, 6),
    (6, 12),
    (21, 8),
    (32, 1),
    (35, 10),
    (39, 2),
    (4, 14),
    (5, 3),
    (61, 11),
    (51, 5),
    (52, 15),
    (62, 9),
    (53, 6),
    (63, 12),
    (67, 1),
    (57, 10);
   
