-- ДЗ по SQL:
-- Установить mysql. +
-- Задачи
-- В онлайн редакторе (https://www.programiz.com/sql/online-compiler/) создайте таблицу Employees, используя txt-файл с прошлого занятия. +

-- Выведите всех работников, у которых id в диапазоне 106-115 (включая крайние значения).
SELECT * FROM Employees WHERE employee_id BETWEEN 106 AND 115;

-- Выведите всех работников, у которых id в диапазоне 106-115 (без крайних значений).
SELECT * FROM Employees WHERE (employee_id>106) AND (employee_id<115);

-- Выведите всех работников, у которых фамилия начинается с буквы K
SELECT * FROM Employees WHERE last_name LIKE 'k%';

-- Выведите всех работников, у которых фамилия заканчивается на букву n
SELECT * FROM Employees WHERE last_name LIKE '%n';

-- Выведите всех работников, у которых место работы ST_MAN
SELECT * FROM Employees WHERE job_id='ST_MAN';

-- Выведите всех работников, у которых manager_id 100 и 103
SELECT * FROM Employees WHERE manager_id=100 OR manager_id=103;






