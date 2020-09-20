/*Query the Name of any student in STUDENTS who scored higher than  Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/

SELECT STUDENTS.NAME
FROM STUDENTS
WHERE STUDENTS.MARKS > 75
ORDER BY RIGHT(STUDENTS.NAME, 3), STUDENTS.ID ASC;



/*Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.*/

SELECT NAME
FROM EMPLOYEE
ORDER BY EMPLOYEE.NAME ASC;



/*Write a query that prints a list of employee names (i.e.: the name attribute) for employees 
in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.*/


SELECT EMPLOYEE.NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID;


/*

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.


*/


SELECT 
    CASE WHEN A >= B + C OR B >= A + C OR C >= A + B THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A != B AND B != C AND A != C THEN 'Scalene'
        ELSE 'Isosceles'
    END
FROM TRIANGLES;



/*
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a 
parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

There are a total of [occupation_count] [occupation]s.
where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the 
lowercase occupation name. 
If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
*/


SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')')
FROM OCCUPATIONS
ORDER BY NAME ASC;

SELECT "There are a total of ", COUNT(OCCUPATION), CONCAT(LOWER(OCCUPATION), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION ASC;
