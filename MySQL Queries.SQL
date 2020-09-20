Query the Name of any student in STUDENTS who scored higher than  Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

SELECT STUDENTS.NAME
FROM STUDENTS
WHERE STUDENTS.MARKS > 75
ORDER BY RIGHT(STUDENTS.NAME, 3), STUDENTS.ID ASC;



Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

SELECT NAME
FROM EMPLOYEE
ORDER BY EMPLOYEE.NAME ASC;



Write a query that prints a list of employee names (i.e.: the name attribute) for employees 
in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.


SELECT EMPLOYEE.NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID;
