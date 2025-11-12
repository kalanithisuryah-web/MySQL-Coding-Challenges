/* Today's coding challenge

SQL Question 1: INNER JOIN
Scenario:
 Show students with their enrolled course names.
Task:
 Write a query joining Students and Courses.
Expected Output:
 Results include only students with valid enrollments.
 
 _____________________________________________________________________________________________________________
 
 SELECT 														--INNER JOIN
    s.student_id,
    s.student_name,
    c.course_name
FROM Students s
INNER JOIN Courses c
    ON s.course_id = c.course_id;
 
 _____________________________________________________________________________________________________________
 
 
SQL Question 2: LEFT & RIGHT JOIN
Scenario:
 List all students and their courses, including those without matches.
Task:
 Use LEFT JOIN and RIGHT JOIN between Students and Enrollments.
Expected Output:
 All students/courses are shown with NULLs where no match exists.
 
  _____________________________________________________________________________________________________________
 
 SELECT 														--LEFT JOIN
    s.student_id,
    s.student_name,
    e.course_id
FROM Students s
LEFT JOIN Enrollments e
    ON s.student_id = e.student_id;
    
    
    SELECT 														--RIGHT JOIN
    s.student_id,
    s.student_name,
    e.course_id
FROM Students s
RIGHT JOIN Enrollments e
    ON s.student_id = e.student_id;

 
 _____________________________________________________________________________________________________________
 
 
SQL Question 3: UNION vs UNION ALL
Scenario:
 Combine lists of current and past employees.
Task:
 Write queries demonstrating UNION and UNION ALL.
Expected Output:
 UNION removes duplicates, UNION ALL keeps all rows. 
 
  _____________________________________________________________________________________________________________
 
SELECT employee_name, department							--UNION
FROM Current_Employees
UNION
SELECT employee_name, department
FROM Past_Employees;

SELECT employee_name, department							--UNION ALL
FROM Current_Employees
UNION ALL
SELECT employee_name, department
FROM Past_Employees;

 _____________________________________________________________________________________________________________
 */