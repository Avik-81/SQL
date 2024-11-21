create table salary(
	id serial primary key,
	mothly_salary int not null
	)
	
	drop table salary;

	select * from salary;
	select * from roles;
	
	create table roles(
		id serial primary key,
		role_title varchar(50) unique not null
	);

drop table roles;

insert into roles(role_title)
values ('Junior_QA'),
		('Middle_QA'),
		('Senior_QA'),
		('Junior_JS_Developer'),
		('Middle_JS_Developer'),
		('Senior_JS_Developer');
	
	insert into salary(mothly_salary)
	values (300),
			(500),
			(700),
			(1000);
			
create table roles_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key(id_role)
		references roles(id),
	foreign key(id_salary)
		references salary(id)
);

drop table roles_salary;


select * from salary
order by id;
select * from roles;
select * from roles_salary;

insert into roles_salary(id_role, id_salary)
values (1, 1),
	   (4, 2);
	


insert into roles_salary(id_role, id_salary)
values (8, 1);

update salary
set mothly_salary = 400
		where id = 1;
	
	delete from salary
	where id = 4;

alter table roles 
add column parking int;


alter table roles 
rename column parking to taxi;

alter table roles 
drop column taxi;
=================================

HW_1:
--Таблица employees

--1)Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
	);
select * from employees;

--2)Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
	values ('Alice'),
			 ('Bob'),
			 ('Charlie'),
			 ('David'),
			 ('Eve'),
			 ('Frank'),
			 ('Grace'),
			 ('Hank'),
			 ('Ivy'), 
			 ('Jack'),
			 ('Karen'),
			 ('Leo'),
			 ('Mona'),
			 ('Ned'),
			 ('Olivia'),
			 ('Pete'),
			 ('Quinn'),
			 ('Rose'),
			 ('Sam'),
			 ('Tina'),
			 ('Ursula'),
			 ('Vince'),
			 ('Wendy'),
			 ('Xander'),
			 ('Yara'),
			 ('Zack'),
			 ('Amelia'),
			 ('Brian'),
			 ('Catherine'),
			 ('Derek'),
			 ('Ella'),
			 ('Fred'),
			 ('Gina'),
			 ('Harry'),
			 ('Isla'),
			 ('James'),
			 ('Kathy'),
			 ('Liam'),
			 ('Mia'),
			 ('Nathan'),
			 ('Oscar'),
			 ('Paul'),
			 ('Quincy'),
			 ('Rachel'),
			 ('Steve'),
			 ('Tracy'),
			 ('Uma'),
			 ('Victor'),
			 ('Willow'),
			 ('Xena'),
			 ('Yvonne'),
			 ('Zane'),
			 ('Arthur'),
			 ('Bella'),
			 ('Clyde'),
			 ('Diana'),
			 ('Ethan'),
			 ('Fiona'),
			 ('George'),
			 ('Holly'),
			 ('Ian'),
			 ('Julia'),
			 ('Kevin'),
			 ('Lily'),
			 ('Mark'),
			 ('Nina'),
			 ('Owen'), 
			 ('Piper'),
			 ('Andrey'),
			 ('Alexander');
		
			
--Таблица salary

--3)Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

			
create table salary(
	id serial  primary key,
	monthly_salary int not null
);

--4)Наполнить таблицу salary 16 строками:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500

insert into salary(monthly_salary)
	values (1000),
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
	
	select * from salary;

--Таблица employee_salary

--5) Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null

);
--drop table employee_salary;
select * from employee_salary;

--6) Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
		values (3, 7),
				(1, 4),
				(5, 9),
				(40, 13),
				(23, 4),
				(11, 2),
				(52, 10),
				(15, 13),
				(18, 4),
				(16, 1),
				(33, 7),
				(66, 15),
				(53, 12),
				(35, 16),
				(27, 14),
				(4, 7),
				(67, 15),
				(43, 9),
				(26, 4),
				(22, 9),
				(2, 16),
				(17, 9),
				(8, 8),
				(21, 15),
				(25, 6),
				(19, 2),
				(31, 7),
				(20, 9),
				(13, 4),
				(7, 8),
				(73, 6),
				(84, 9),
				(96, 7),
				(71, 2),
				(88, 15),
				(92, 12),
				(93, 5),
				(79, 8),
				(99, 5),
				(100, 8);

select * from employee_salary;

--Таблица roles

--7) Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);
select * from roles;

--8) Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles ALTER COLUMN role_name TYPE VARCHAR(30);

--9) Наполнить таблицу roles 20 строками

insert into roles(role_name)
		values ('Junior Python developer'),
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
	
	select * from roles;

Таблица roles_employee

--10) Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
		id serial primary key,
		employee_id int not null unique,
		foreign key(employee_id)
			references employees(id),
		role_id int not null,
		foreign key(role_id)
			references roles(id)
);
	select * from roles_employee;


--11)Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
		values (7, 2),
				(20, 4),
				(3, 9),
				(5, 13),
				(23, 4),
				(11, 2),
				(10, 9),
				(22, 13),
				(21, 3),
				(34, 4),
				(6, 7),
				(1, 5),
				(8, 7),
				(9, 3),
				(2, 9),
				(4, 15),
				(12, 16),
				(13, 15),
				(14, 9),
				(15, 8),
				(16, 2),
				(17, 8),
				(18, 3),
				(19, 19),
				(26, 18),
				(24, 17),
				(25, 15),
				(28, 13),
				(29, 11),
				(31, 10),
				(32, 15),
				(33, 9),
				(38, 6),
				(35, 8),
				(40, 20),
				(39, 15),
				(37, 18),
				(36, 12),
				(27, 9),
				(41, 20);
				
select * from roles_employee;
