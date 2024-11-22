SQL HomeWork 2. Joins

Подключится к 
Host: 159.69.151.133
Port: 5557
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass: 123

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )

Credentials 
table employees with id, employee_name
table  salary with id, monthly_salary
table employee_salary with id, employee_id, salary_id
table roles with id, role_name
table roles_employee with id, employee_id, role_id;
select * from employees;
select * from roles;
select * from roles_employee;
select * from salary;
select * from employee_salary;

 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.id, employees.employee_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id;

 --2. Вывести всех работников у которых ЗП меньше 2000.
select employees.id, employees.employee_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.id, employees.employee_name, salary.monthly_salary
from employees
Right join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id;
 
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.)
select employees.id, employees.employee_name, salary.monthly_salary
from employees
Right join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;

 --5. Найти всех работников кому не начислена ЗП.
select employees.id, employees.employee_name
from employees
left join employee_salary on employees.id = employee_salary.employee_id
where employee_salary.salary_id is null;

 --6. Вывести всех работников с названиями их должности.
select employees.id, employees.employee_name, roles.role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

 --7. Вывести имена и должность только Java разработчиков.
 select employees.id, employees.employee_name, roles.role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Java%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.id, employees.employee_name, roles.role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python%';

 --9. Вывести имена и должность всех QA инженеров.
 select employees.id, employees.employee_name, roles.role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

 --10. Вывести имена и должность ручных QA инженеров.
 select employees.id, employees.employee_name, roles.role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA engineer%';

 --11. Вывести имена и должность автоматизаторов QA
  select employees.id, employees.employee_name, roles.role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

 --12. Вывести имена и зарплаты Junior специалистов
select employees.id, employees.employee_name, salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%';


 --13. Вывести имена и зарплаты Middle специалистов
select employees.id, employees.employee_name, salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Middle%';

 --14. Вывести имена и зарплаты Senior специалистов
select employees.id, employees.employee_name, salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Java%';

 --16. Вывести зарплаты Python разработчиков
 select salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python%';

 --17. Вывести имена и зарплаты Junior Python разработчиков
select employees.id, employees.employee_name, salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior Python%';

 --18. Вывести имена и зарплаты Middle JS разработчиков
 select employees.id, employees.employee_name, salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Middle JavaScript%';

 --19. Вывести имена и зарплаты Senior Java разработчиков
  select employees.id, employees.employee_name, salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Senior Java%';

 --20. Вывести зарплаты Junior QA инженеров
 select salary.monthly_salary, roles.role_name
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%QA engineer%';

 --21. Вывести среднюю зарплату всех Junior специалистов
  select AVG (salary.monthly_salary) 
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%';

 --22. Вывести сумму зарплат JS разработчиков
  select SUM (salary.monthly_salary) 
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%JavaScript%';

 --23. Вывести минимальную ЗП QA инженеров
  select MIN (salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%QA engineer%';

 --24. Вывести максимальную ЗП QA инженеров
  select MAX (salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%QA engineer%';

 --25. Вывести количество QA инженеров
 select COUNT (salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Junior%QA engineer%';

 --26. Вывести количество Middle специалистов.
 select COUNT (salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Middle%';

 --27. Вывести количество разработчиков
 select COUNT (salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%developer%';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
 select SUM (salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%developer%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
order by monthly_salary;
 
 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
  select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where monthly_salary between 1700 and 2300
order by monthly_salary;
 
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where monthly_salary < 2300
order by monthly_salary;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 select employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
