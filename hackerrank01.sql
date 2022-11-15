-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[aeiou]$';

-- Query the list of CITY names starts with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiou]';

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiou].*[aeiou]$' -- with regexp
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(CITY,1) IN ('a', 'e', 'i', 'o', 'u');

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u') OR RIGHT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.	
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u') AND RIGHT(CITY,1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.	
SELECT name FROM students WHERE marks > 75 ORDER BY SUBSTRING(name, -3, 3), id

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.	
SELECT NAME FROM EMPLOYEE ORDER BY NAME