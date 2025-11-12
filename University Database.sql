/* Today's challenge

SQL Question 1: DISTINCT & WHERE
Scenario:
 In a university database, you want to list unique departments.
Task:
 Write a SQL query to return distinct department names.
Expected Output:
 Only unique departments are returned.
________________________________________________________________________________________________________________________
 
 SELECT DISTINCT department_name						--DISTINCT, WHERE
FROM Departments
WHERE status = 'Active';

____________________________________________________________________________________________________
SQL Question 2: IS NULL & NOT NULL
Scenario:
 Some students don’t have email addresses recorded.
Task:
 Write queries to find students with NULL and NOT NULL emails.
Expected Output:
 The queries return correct subsets of students.
 
 ________________________________________________________________________________________________________________________
 
SELECT Student_id, student_name from Students					--NOT NULL
where Email is NOT NULL;

SELECT Student_id, student_name from Students					--NULL
where Email is NULL;
 ____________________________________________________________________________________________________________________________
 
SQL Question 3: IN, BETWEEN, NOT BETWEEN
Scenario:
 Filter students enrolled in specific courses or within certain GPA ranges.
Task:
 Write queries using IN, BETWEEN, and NOT BETWEEN operators.
Expected Output:
 Correct sets of students are returned.
 
  ________________________________________________________________________________________________________________________
 
SELECT student_id, student_name, course_id								--IN
FROM Students														
WHERE course_id IN ('CSE101', 'MATH201', 'ENG301');

SELECT student_id, student_name, gpa									--BETWEEN
FROM Students														
WHERE gpa BETWEEN 3.0 AND 4.0;

SELECT student_id, student_name, gpa									--NOT BETWEEN
FROM Students														
WHERE gpa NOT BETWEEN 3.0 AND 4.0;
___________________________________________________________________________________________________________________________
 

SQL Question 1: ORDER BY & LIMIT
Scenario:
 In an e-commerce system, show the top 3 highest-priced products.
Task:
 Write a SQL query using ORDER BY and LIMIT.
Expected Output:
 Top 3 products by price are displayed.
 
  ________________________________________________________________________________________________________________________
 
SELECT product_id, product_name, price						--ORDER BY, LIMIT
FROM Products
ORDER BY price DESC
LIMIT 3;
__________________________________________________________________________________________________________________

SQL Question 2: Aggregate Functions
Scenario:
 Management wants statistics of sales data.
Task:
 Write queries using COUNT, SUM, AVG, MAX, MIN on Sales table.
Expected Output:
 Aggregated results are returned.
 
  ________________________________________________________________________________________________________________________
 
SELECT 
    COUNT(*) AS total_sales,								--AGGREGATE FUNCTION
    SUM(amount) AS total_revenue,
    AVG(amount) AS average_sale,
    MAX(amount) AS highest_sale,
    MIN(amount) AS lowest_sale
FROM Sales;

__________________________________________________________________________________________________________________

SQL Question 3: GROUP BY & HAVING
Scenario:
 Find departments with more than 10 employees.
Task:
 Write a query using GROUP BY and HAVING.
Expected Output:
 Only departments with >10 employees are returned.
 
 ________________________________________________________________________________________________________________________

SELECT department_id, COUNT(employee_id) AS employee_count				--GROUP BY, HAVING
FROM Employees
GROUP BY department_id
HAVING COUNT(employee_id) > 10;


__________________________________________________________________________________________________________________ */