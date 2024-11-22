SQL_HW_2
Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду.

.sql файл выгружайте на гит и скидывайте ссылки на проверку.

 1. Вывести все поля и все строки.
 select * from table_name;
 
 2. Вывести всех студентов в таблице
 select students from table_name;
 
 3. Вывести только Id пользователей
 select id_column from table_name;
 
 4. Вывести только имя пользователей
  select name_column from table_name;
  
 5. Вывести только email пользователей
 select email_column from table_name;
 
 6. Вывести имя и email пользователей
 select name_column, email_column from table_name;
 
 7. Вывести id, имя, email и дату создания пользователей
 select name_column, email_column, create_data_column from table_name;
 
 8. Вывести пользователей где password 12333
 select user_name from table_name where password = 12333;
 
 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
 select user_name from table_name where created_at = '2021-03-26 00:00:00';

 10. Вывести пользователей где в имени есть слово Анна
 select user_name from table_name where user_name like 'Анна';
 
 11. Вывести пользователей где в имени в конце есть 8
 select user_name from table_name where user_name like '%_8';
 
 12. Вывести пользователей где в имени в есть буква а
  select user_name from table_name where user_name like '%a%';
 
 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
 select user_name from table_name where created_at = '2021-07-12 00:00:00';
 
 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
 select user_name from table_name where created_at = '2021-07-12 00:00:00' and password = '1m313';
 
 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
 select user_name from table_name where created_at = '2021-07-12 00:00:00' and user_name like '%Andrey%';
 
 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
 select user_name from table_name where created_at = '2021-07-12 00:00:00' and user_name like '%8%';
 
 17. Вывести пользователя у которых id равен 110
  select user_name from table_name where id = 110;
  
 18. Вывести пользователя у которых id равен 153
 select user_name from table_name where id = 153;

 19. Вывести пользователя у которых id больше 140
 select user_name from table_name where id > 140;

 20. Вывести пользователя у которых id меньше 130
 select user_name from table_name where id < 130;
 
 21. Вывести пользователя у которых id меньше 127 или больше 188
 select user_name from table_name where id < 127 or id > 188;
 
 22. Вывести пользователя у которых id меньше либо равно 137
 select user_name from table_name where id <= 137;
 
 23. Вывести пользователя у которых id больше либо равно 137
  select user_name from table_name where id => 137;
 
 24. Вывести пользователя у которых id больше 180 но меньше 190
  select user_name from table_name where id > 180 and id < 190;
 
 25. Вывести пользователя у которых id между 180 и 190
 select user_name from table_name where id between 180 and 190;
 
 26. Вывести пользователей где password равен 12333, 1m313, 123313
 select user_name from table_name where password in ('12333', '1m313', '123313');
 
 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
 select user_name from table_name where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
 
 28. Вывести минимальный id 
 select MIN (id) from table_name;
 
 29. Вывести максимальный.
  select MAX (id) from table_name;
 
 30. Вывести количество пользователей
 select count (user_name) from table_name;

 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 select id, user_name, created_data from table_name ordered by created_data ASC;
 
 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, user_name, created_data from table_name ordered by created_data DESC;
