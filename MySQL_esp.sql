#Obtener información de la columna "dept_no" de la tabla "departamentos".
SELECT dept_no
FROM employees.departments;

#Obtener todos los datos de la tabla "departamentos".
SELECT *
FROM employees.departments;

#Obtener todos los datos de la tabla "empleados".
SELECT *
FROM employees.employees;

#Obtener solo columnas "emp_no" y columnas de tipo de datos "varchar".
SELECT emp_no, first_name, last_name
FROM employees.employees;

#Obtener solo columnas "emp_no" y columnas de tipo de datos "date".
SELECT emp_no, birth_date, hire_date
FROM employees.employees;

#Obtener una lista de todos los empleados con el nombre "Lech".
SELECT *
FROM employees.employees
WHERE first_name = 'Lech';

#Obtener una lista de todos los empleados cuyo apellido es "Merro".
SELECT *
FROM employees.employees
WHERE last_name = 'Merro';

#Obtener una lista de todos los empleados que nacieron el 1952-02-01.
SELECT *
FROM employees.employees
WHERE birth_date = '1952-02-01';

#Obtener una lista de todos los empleados que fueron contratados el 1998-08-06.
SELECT *
FROM employees.employees
WHERE hire_date = '1998-08-06';

#Obtener una lista de todas las empleadas con el nombre "Kellie"
SELECT *
FROM employees.employees
WHERE first_name = 'Kellie'
	AND gender = 'F';
    
#Obtener una lista de empleados varones llamados "Mark".
SELECT *
FROM employees.employees
WHERE first_name = 'Mark'
	AND gender = 'M';

#Obtener una lista de las empleadas que fueron contratadas el 1995-11-29.   
SELECT *
FROM employees.employees
WHERE hire_date = '1995-11-29'
	AND gender = 'F';

#Obtener una lista de los empleados varones que fueron contratados el 1996-06-19.    
SELECT *
FROM employees.employees
WHERE hire_date = '1996-06-19'
	AND gender = 'M';

#Obtener una lista de todas las empleadas mujeres llamadas "Kellie" y "Beshir".   
SELECT *
FROM employees.employees
WHERE (first_name = 'Kellie'
	OR  first_name = 'Beshir')
	AND gender = 'F';
    
#Obtener una lista de empleados varones llamados "Mark" y todos los empleados cuyo apellido sea "Luit".    
SELECT *
FROM employees.employees
WHERE (first_name = 'Mark'
	AND gender = 'M')
    OR last_name = 'Luit';

#Obtener una lista de las empleadas mujeres que fueron contratadas el 1995-11-29  
#y de todos los empleados varones que fueron contratados el 1996-06-19.   
SELECT *
FROM employees.employees
WHERE (hire_date = '1995-11-29'
	AND gender = 'F')
    OR (hire_date = '1996-06-19'
	AND gender = 'M');

#Utilizar el operador IN para seleccionar todas las personas de la tabla "empleados" cuyo nombre sea "Denis" o "Elvis".    
SELECT *
FROM employees.employees
WHERE first_name IN ('Denis', 'Elvis');

#Extraer todos los registros de la tabla "empleados" que tengan una fecha de contratación  
#de 1986-06-26, excepto los registros con empleados llamados "John", "Mark" o "Jacob".
SELECT *
FROM employees.employees
WHERE first_name NOT IN ('John', 'Mark', 'Jacob')
	AND hire_date = '1986-06-26';

#Obtener una lista de empleadas que fueron contratadas el: 1997-12-07, 1995-11-29, 1994-11-11, 1995-04-27, 1997-01-03.  
SELECT *
FROM employees.employees
WHERE hire_date IN ('1997-12-07','1995-11-29','1994-11-11','1995-04-27','1997-01-03')
	AND gender = 'F';

#Cuando trabaje con la tabla "empleados", use el operador LIKE para seleccionar datos sobre empleados varones, cuyo 
#nombre comienza con "Mark"; especificar que se puede utilizar cualquier secuencia de caracteres después del nombre "Mark".
SELECT *
FROM employees.employees
WHERE first_name LIKE 'Mark%'
	AND gender = 'M';

#Obtener una lista de empleadas mujeres que fueron contratadas en el año 2000.  
SELECT *
FROM employees.employees
WHERE hire_date LIKE '2000%'
	AND gender = 'F';

#Obtener una lista de todos los empleados que fueron contratados el 12-09-1989 y cuyo nombre no contiene el carácter "a".  
SELECT *
FROM employees.employees
WHERE first_name NOT LIKE ('%a%')
	AND hire_date = '1989-09-12';

#Obtenga una lista de todos los empleados cuyo número consta de 5 caracteres y comienza con "1000". 
SELECT *
FROM employees.employees
WHERE emp_no LIKE '1000_';

#Obtenga una lista de empleados que nacieron el 1962-10-19 y cuyo nombre consta de solo tres letras.
SELECT *
FROM employees.employees
WHERE first_name LIKE ('___')
	AND birth_date = '1962-10-19';

#Trabajando con la tabla "empleados", seleccionar datos sobre todos los empleados cuyo nombre comience con 
#"Mark" y consta de cinco letras; especificar que se puede usar un carácter después del nombre "Mark".  
SELECT *
FROM employees.employees
WHERE first_name LIKE ('Mark_');

#Obtener toda la información de la tabla de "salarios" para contratos entre $35.000 y $39.000 anuales.
SELECT *
FROM employees.salaries
WHERE salary BETWEEN 35000 AND 39000;

#Obtener una lista de todas las personas de la tabla "empleados" cuyo número de empleado esté entre "110020" y "110039".
SELECT *
FROM employees.employees
WHERE emp_no BETWEEN 110020 AND 110039;

#Obtener una lista de todas las personas de la tabla "empleados" cuyo número de empleado no esté entre "10020" y "499990".
SELECT *
FROM employees.employees
WHERE emp_no NOT BETWEEN 10020 AND 499990;

#Seleccionar todos los nombres de departamento con números entre "d003" y "d006".
SELECT *
FROM employees.departments
WHERE dept_no BETWEEN 'd003' AND 'd006';

#Seleccionar los nombres de todos los departamentos cuyos números no sean iguales a cero 
#y cuyos nombres tengan una "a" en cualquier posición o una "e" en la segunda posición.
SELECT count(dept_name)
FROM employees.departments
WHERE dept_no IS NOT NULL
AND (dept_name LIKE '%a%' 
	OR dept_name LIKE '_e%');

#Obtener una lista de todos los empleados que fueron contratados en 2000 o después.    
SELECT *
FROM employees.employees
WHERE hire_date >= '2000-01-01';

#Extraer una lista de todos los empleados con un salario superior a $ 150,000 por año.
SELECT *
FROM employees.salaries
WHERE salary > 150000;

#Extraer una lista de todos los empleados con salarios inferiores a $39,300 por año.
SELECT *
FROM employees.salaries
WHERE salary < 39300;

#Obtener solo la fecha del sistema DB.
SELECT CURDATE();

#Obtener la fecha del sistema con la hora de la DB.
SELECT NOW();

#Obtenga el mes y el año de la fecha de nacimiento de todos los empleados en formato numérico.
SELECT YEAR(birth_date), MONTH(birth_date)
FROM employees.employees;

#Obtener el número de empleado más bajo en la DB.
SELECT MIN(emp_no)
FROM employees.employees;

#Obtener el número de empleado más alto en la DB.
SELECT MAX(emp_no)
FROM employees.employees;

#Obtener el número de empleados para el número de departamento "d003".
SELECT COUNT(emp_no)
FROM employees.dept_emp
WHERE dept_no LIKE 'd003';

#Obtener información del empleado 10050, cuantas veces se cambió 
#el salario, sin contar el primer salario como cambio.
SELECT COUNT(salary)-1
FROM employees.salaries
WHERE emp_no LIKE '10050';

#Agrupar los datos por la columna "género".
SELECT gender
FROM employees.employees
GROUP BY gender;

#Agrupar los datos por la columna de género. Obtener la fecha 
#de nacimiento más grande para el grupo "F" en la base de datos.
SELECT gender, MAX(birth_date)
FROM employees.employees
WHERE gender = 'F'
GROUP BY gender;

#Agrupar los datos por la columna "género". Obtener la fecha de  
#contratación más pequeña para el grupo "M" en la base de datos.
SELECT gender, MIN(hire_date)
FROM employees.employees
WHERE gender = 'M'
GROUP BY gender;

#Extraer los datos únicos de la columna "género".
SELECT DISTINCT gender
FROM employees.employees;

#Отримати унікальний список департаментів з таблиці dept_manager.
SELECT DISTINCT dept_no
FROM employees.dept_manager;

#Extraer a todos los empleados cuyo salario promedio sea superior a $120,000 por año.
SELECT DISTINCT emp_no, AVG(salary)
FROM employees.salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

#Seleccionar los números de empleados de todas las personas que firmaron más de 1 contrato después del 1 de enero de 2000.
SELECT emp_no
FROM employees.dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1;

#Mostrar el valor del salario de la primera fila ordenando el salario en orden A-Z.
SELECT salary
FROM employees.salaries
ORDER BY salary ASC
LIMIT 1; 

#Mostrar el valor del salario de la primera fila ordenando el salario en orden Z-A.
SELECT salary
FROM employees.salaries
ORDER BY salary DESC
LIMIT 1;

#Obtener el campo emp_no cambiándole el nombre a emp_number.
SELECT emp_no AS emp_number
FROM employees.employees;

#Establecer un alias para la tabla "departamentos".
SELECT dept_no
FROM employees.departments AS ed;

#Obtener el número del empleado que es el gerente actual del departamento llamado "development".
SELECT emp_no
FROM employees.dept_manager AS dm
JOIN departments AS d
ON (dm.dept_no = d.dept_no)
WHERE d.dept_name LIKE 'Development'
AND dm.to_date LIKE '9999-01-01';

#Obtener el salario máximo para un empleado cuyo nombre es "Tokuyasu" y cuyo apellido es "Pesch".
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

#Obtener el número de empleados que nunca han sido gerentes en los departamentos de la empresa (utilizar LEFT o RIGHT JOIN).
SELECT COUNT(*)
FROM employees AS e
LEFT JOIN dept_manager AS dm
ON (dm.emp_no = e.emp_no)
WHERE dm.dept_no IS NULL
ORDER BY dm.emp_no DESC;

#Obtener el número de empleados que actualmente no trabajan en la empresa (utilizar LEFT o RIGHT JOIN).
SELECT COUNT(*)
FROM employees AS e
LEFT JOIN 
(SELECT emp_no
FROM dept_emp
WHERE to_date = '9999-01-01')
AS de
ON (de.emp_no = e.emp_no)
WHERE de.emp_no IS NULL;

#Crear nueva DB.
CREATE DATABASE IF NOT EXISTS;

#Eliminar DB existente.
﻿DROP DATABASE IF EXISTS;

#Eliminar tabla existente.
DROP TABLE tb_name;

#Renombrar tabla existente.
RENAME TABLE tb_name TO tb_name1;

#Eliminar una columna de una tabla existente.
ALTER TABLE tb_name DROP COLUMN cl_name;

#Cambiar el nombre de la columna en la tabla existente.
ALTER TABLE tb_name CHANGE COLUMN cl_name cl_name1 VARCHAR(20);

#Extraer solo 1 empleado con la última fecha de contratación.
SELECT emp_no, hire_date
FROM employees.employees
ORDER BY hire_date DESC
LIMIT 1;

#Extraer solo 1 empleado con el salario más alto.
SELECT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 1;

/*A partir de la tabla de salarios, crear una columna artificial "level_sal" de acuerdo con la siguiente fórmula:
"low_salary" de $30.000 a $60.000
"mid_salary" de $60.001 a $110.000
"hig_salary" de $110.001 a $180.000.
Con la misma fórmula, crear grupos y mostrar la cantidad total de dinero asignada para el salario del grupo "low_salary".*/
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

/*A partir de la tabla de salarios, crear una columna artificial "level_sal" de acuerdo con la siguiente fórmula:
"low_salary" de $30.000 a $60.000
"mid_salary" de $60.001 a $110.000
"hig_salary" de $110.001 a $180.000.
Con la misma fórmula, para crear grupos y mostrar el salario promedio del grupo "hig_salary".*/
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