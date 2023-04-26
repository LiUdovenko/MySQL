#Отримайте інформацію зі стовпця “dept_no” таблиці “departments”.
SELECT dept_no
FROM employees.departments;

#Отримайте всі дані з таблиці “departments”.
SELECT *
FROM employees.departments;

#Отримайте всі дані з таблиці “employees”.
SELECT *
FROM employees.employees;

#Отримайте лише стовпці ”emp_no” та стовпці з типом даних "varchar".
SELECT emp_no, first_name, last_name
FROM employees.employees;

#Отримайте лише стовпці ”emp_no” та стовпців з типом даних "Date".
SELECT emp_no, birth_date, hire_date
FROM employees.employees;

#Отримайте список з усіма працівниками з іменем "Lech".
SELECT *
FROM employees.employees
WHERE first_name = 'Lech';

#Отримайте список з усіма співробітниками чиє прізвище "Merro".
SELECT *
FROM employees.employees
WHERE last_name = 'Merro';

#Отримайте список з усіма співробітниками хто народився 1952-02-01.
SELECT *
FROM employees.employees
WHERE birth_date = '1952-02-01';

#Отримайте список з усіма співробітниками кого прийняли на роботу 1998-08-06.
SELECT *
FROM employees.employees
WHERE hire_date = '1998-08-06';

#Отримайте список з усіма працівниками жінками з іменем "Kellie".
SELECT *
FROM employees.employees
WHERE first_name = 'Kellie'
	AND gender = 'F';
    
#Отримайте список з працівниками чоловіками з іменем "Mark".
SELECT *
FROM employees.employees
WHERE first_name = 'Mark'
	AND gender = 'M';

#Отримайте список з працівниками жінками, хто був прийнятий на роботу 1995-11-29.    
SELECT *
FROM employees.employees
WHERE hire_date = '1995-11-29'
	AND gender = 'F';

#Отримайте список з працівниками чоловіками, хто був прийнятий на роботу 1996-06-19.    
SELECT *
FROM employees.employees
WHERE hire_date = '1996-06-19'
	AND gender = 'M';

#Отримайте список з усіма працівниками жінками з іменами "Kellie" та "Beshir".    
SELECT *
FROM employees.employees
WHERE (first_name = 'Kellie'
	OR  first_name = 'Beshir')
	AND gender = 'F';
    
#Отримайте список з працівниками чоловіками з іменем "Mark" та усіма співробітниками чиє прізвище "Luit".    
SELECT *
FROM employees.employees
WHERE (first_name = 'Mark'
	AND gender = 'M')
    OR last_name = 'Luit';

#Отримайте список з працівниками жінками, хто був прийнятий на роботу 1995-11-29 та усіма співробітниками чоловіками хто був прийнятий на роботу 1996-06-19.    
SELECT *
FROM employees.employees
WHERE (hire_date = '1995-11-29'
	AND gender = 'F')
    OR (hire_date = '1996-06-19'
	AND gender = 'M');

#За допомогою оператора IN виберіть усіх осіб із таблиці "employees", ім’я яких - "Denis" або "Elvis".    
SELECT *
FROM employees.employees
WHERE first_name IN ('Denis', 'Elvis');

#Витягніть усі записи із таблиці "employees", в яких дата прийняття на роботу 1986-06-26, окрім записів із працівниками на ім’я "John", "Mark" чи "Jacob".
SELECT *
FROM employees.employees
WHERE first_name NOT IN ('John', 'Mark', 'Jacob')
	AND hire_date = '1986-06-26';

#Отримайте список з працівниками жінками, хто був прийнятий на роботу в дати: 1997-12-07, 1995-11-29, 1994-11-11, 1995-04-27, 1997-01-03    
SELECT *
FROM employees.employees
WHERE hire_date IN ('1997-12-07','1995-11-29','1994-11-11','1995-04-27','1997-01-03')
	AND gender = 'F';

#Працюючи з таблицею "employees", використовуйте оператор LIKE, щоб вибрати дані про працівників чоловіків, 
#чиє ім'я починається з "Mark"; вкажіть, що після імені "Mark" може використовуватись будь-яка послідовність символів.
SELECT *
FROM employees.employees
WHERE first_name LIKE 'Mark%'
	AND gender = 'M';

#Отримайте список працівників жінок, які були прийняті на роботу у 2000 році.    
SELECT *
FROM employees.employees
WHERE hire_date LIKE '2000%'
	AND gender = 'F';

#Отримайте список усіх працівників, які були прийняті на роботу 1989-09-12 та чиє і’мя не містить символ "a".    
SELECT *
FROM employees.employees
WHERE first_name NOT LIKE ('%a%')
	AND hire_date = '1989-09-12';

#Отримайте список усіх працівників, чий номер складається з 5-ти символів та починається з "1000".    
SELECT *
FROM employees.employees
WHERE emp_no LIKE '1000_';

#Отримайте список працівників, які народились 1962-10-19 та і’мя складається лише з трьох букв.
SELECT *
FROM employees.employees
WHERE first_name LIKE ('___')
	AND birth_date = '1962-10-19';

#Працюючи з таблицею "employees" виберіть дані про всіх працівників, чиє ім'я починається з "Mark" 
#та складається з п’яти букв; вкажіть, що після імені "Mark" може використовуватись один символ.    
SELECT *
FROM employees.employees
WHERE first_name LIKE ('Mark_');

#Отримайте всю інформацію з таблиці "salaries" щодо контрактів від 35 000 до 39 000 доларів на рік.
SELECT *
FROM employees.salaries
WHERE salary BETWEEN 35000 AND 39000;

#Отримайте список із усіма особами з таблиці "employees", чий номер працівника знаходиться між «110020» та «110039».
SELECT *
FROM employees.employees
WHERE emp_no BETWEEN 110020 AND 110039;

#Отримайте список із усіма особами з таблиці "employees", чий номер працівника не знаходиться між «10020» та «499990».
SELECT *
FROM employees.employees
WHERE emp_no NOT BETWEEN 10020 AND 499990;

#Виберіть назви всіх департаментів із номерами між «d003» та «d006».
SELECT *
FROM employees.departments
WHERE dept_no BETWEEN 'd003' AND 'd006';

#Виберіть назви всіх департаментів, номери яких не дорівнюють нулю, а імена мають символ "a" на будь-якій позиції або "e" на другому місці.
SELECT count(dept_name)
FROM employees.departments
WHERE dept_no IS NOT NULL
AND (dept_name LIKE '%a%' 
	OR dept_name LIKE '_e%');

#Отримайте список із даними про всіх працівників, які були прийняті на роботу в 2000 році або пізніше.    
SELECT *
FROM employees.employees
WHERE hire_date >= '2000-01-01';

#Витягніть список із зарплатою всіх працівників, що перевищує 150 000 доларів США на рік.
SELECT *
FROM employees.salaries
WHERE salary > 150000;

#Витягніть список із зарплатою всіх працівників, що менше 39 300 доларів США на рік.
SELECT *
FROM employees.salaries
WHERE salary < 39300;

#Отримати лише системну дату БД.
SELECT CURDATE();

#Отримати системну дату з часом БД.
SELECT NOW();

#Отримати мiсяц та рiк з дати народження всіх співробітників в числовому форматi.
SELECT YEAR(birth_date), MONTH(birth_date)
FROM employees.employees;

#Який найменший номер співробітника в базі даних?
SELECT MIN(emp_no)
FROM employees.employees;

#Який найбільший номер співробітника в базі даних?
SELECT MAX(emp_no)
FROM employees.employees;

#Отримайте кількість співробітників для департамента номер d003.
SELECT COUNT(emp_no)
FROM employees.dept_emp
WHERE dept_no LIKE 'd003';

#Отримайте інформацію по співробітнику 10050, скільки разів змінювалася зарплата, не враховуючи першу зарплату як зміну.
SELECT COUNT(salary)-1
FROM employees.salaries
WHERE emp_no LIKE '10050';

#Згрупуйте дані по колонці gender.
SELECT gender
FROM employees.employees
GROUP BY gender;

#Згрупуйте дані по колонці gender. Яка найбільша дата народження для групи "F" в базі даних?
SELECT gender, MAX(birth_date)
FROM employees.employees
WHERE gender = 'F'
GROUP BY gender;

#Згрупуйте дані по колонці gender. Яка найменша дата прийняття на роботу для групи "M" в базі даних?
SELECT gender, MIN(hire_date)
FROM employees.employees
WHERE gender = 'M'
GROUP BY gender;

#Виведіть унікальні дані з колонки gender.
SELECT DISTINCT gender
FROM employees.employees;

#Отримати унікальний список департаментів з таблиці dept_manager.
SELECT DISTINCT dept_no
FROM employees.dept_manager;

#Витягніть всіх працівників чия середня зарплатня вище 120 000$ на рік.
SELECT DISTINCT emp_no, AVG(salary)
FROM employees.salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

#Виберіть номери працівників усіх осіб, які підписали більше 1 контракту після 1 січня 2000 року.
SELECT emp_no
FROM employees.dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1;

#Покажіть значення зарплати з першого рядка, відсортувавши зарплату в порядку A-Z.
SELECT salary
FROM employees.salaries
ORDER BY salary ASC
LIMIT 1; 

#Покажіть значення зарплати з першого рядка, відсортувавши зарплату в порядку Z-A.
SELECT salary
FROM employees.salaries
ORDER BY salary DESC
LIMIT 1;

#Отримати поле emp_no перейменувавши в emp_number.
SELECT emp_no AS emp_number
FROM employees.employees;

#Задайте alias для таблиці “departments”.
SELECT dept_no
FROM employees.departments AS ed;

#Виведіть номер співробітника, який являється актуальним менеджером департаменту з назвою Development.
SELECT emp_no
FROM employees.dept_manager AS dm
JOIN departments AS d
ON (dm.dept_no = d.dept_no)
WHERE d.dept_name LIKE 'Development'
AND dm.to_date LIKE '9999-01-01';

#Виведіть максимальну зарплату для співробітника чоловічої статі, якого звати Tokuyasu і прізвище Pesch.
SELECT s.emp_no, e.first_name, e.last_name, MAX(salary)
FROM salaries AS s
JOIN 
(
SELECT emp_no, first_name, last_name 
FROM employees 
WHERE first_name like 'Tokuyasu'
AND last_name like 'Pesch'
) AS e
ON (s.emp_no = e.emp_no);

#Виведіть кількість співробітників, які ніколи не були менеджерами в департаментах в компанії (використати LEFT або RIGHT JOIN).
SELECT COUNT(*)
FROM employees AS e
LEFT JOIN dept_manager AS dm
ON (dm.emp_no = e.emp_no)
WHERE dm.dept_no IS NULL
ORDER BY dm.emp_no DESC;

#Виведіть кількість співробітників, які на даний момент не працюють в компанії (використати LEFT або RIGHT JOIN).
SELECT COUNT(*)
FROM employees AS e
LEFT JOIN 
(SELECT emp_no
FROM dept_emp
WHERE to_date = '9999-01-01')
AS de
ON (de.emp_no = e.emp_no)
WHERE de.emp_no IS NULL;

#За допомогою якого запиту ми можемо видалити існуючу базу даних
﻿DROP DATABASE IF EXISTS;

#За допомогою якого запиту ми можемо створити нову базу даних
CREATE DATABASE IF NOT EXISTS;

#За допомогою якого запиту ми можемо видалити існуючу таблицю
DROP TABLE tb_name;

#За допомогою якого запиту ми можемо перейменувати існуючу таблицю
RENAME TABLE tb_name TO tb_name1;

#За допомогою якого запиту ми можемо видалити колонку з існуючої таблиці
ALTER TABLE tb_name DROP COLUMN cl_name;

#За допомогою якого запиту ми можемо змінити назву колонки в існуючій таблиці
ALTER TABLE tb_name CHANGE COLUMN cl_name cl_name1 VARCHAR(20);

#Виведіть лише 1 співробітника, в якого найпізніша дата прийняття на роботу.
SELECT emp_no, hire_date
FROM employees.employees
ORDER BY hire_date DESC
LIMIT 1;

#Виведіть лише 1 співробітника, в якого найбільша зарплата.
SELECT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 1;

/*З таблиці зарплат створити штучний стовпчик level_sal за такою формулою:
low_salary від 30 000 до 60 000
mid_salary від 60 001 до 110 000
hig_salary від 110 001 до 180 000.
За цією ж формулою створити групи і відобразити сумарну кількість грошей, виділену на зарплату з групи low_salary.*/
SELECT *, SUM(salary),
CASE 
	WHEN salary BETWEEN 30000 AND 60000 THEN 'low_salary'
	WHEN salary BETWEEN 60001 AND 110000 THEN 'mid_salary'
	WHEN salary BETWEEN 110001 AND 180000 THEN 'hig_salary'
    ELSE 'test'
END AS level_sal
FROM salaries
GROUP BY level_sal
HAVING level_sal = 'low_salary'
ORDER BY level_sal;

/*З таблиці зарплат створити штучний стовпчик level_sal за такою формулою:
low_salary від 30 000 до 60 000
mid_salary від 60 001 до 110 000
hig_salary від 110 001 до 180 000.
За цією ж формулою створити групи і відобразити середню зарплату з групи hig_salary.*/
SELECT *, AVG(salary),
CASE 
	WHEN salary BETWEEN 30000 AND 60000 THEN 'low_salary'
	WHEN salary BETWEEN 60001 AND 110000 THEN 'mid_salary'
	WHEN salary BETWEEN 110001 AND 180000 THEN 'hig_salary'
    ELSE 'test'
END AS level_sal
FROM salaries
GROUP BY level_sal
HAVING level_sal = 'hig_salary'
ORDER BY level_sal;
