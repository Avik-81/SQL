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