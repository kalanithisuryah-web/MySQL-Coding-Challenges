/* Today's challenge



SQL Question 1: Stored Procedure
Scenario:
 HR wants a quick way to fetch employee details by ID.
Task:
 Create a stored procedure accepting EmployeeID as input.
Expected Output:
 Employee details are returned when procedure is executed.
 
 ----------------------------------------------------------------------------------------------------------------------
 
DELIMITER //
CREATE PROCEDURE GetEmployeeDetails(IN emp_id INT)						--stored procedure
BEGIN
    SELECT *
    FROM Employees
    WHERE EmployeeID = emp_id;
END //
DELIMITER ;

CALL GetEmployeeDetails(101);

 ---------------------------------------------------------------------------------------------------------------------
 
 
SQL Question 2: Simple View
Scenario:
 Management wants a view for employee name and department.
Task:
 Write a CREATE VIEW statement.
Expected Output:
 A new view is created successfully.
 
 ----------------------------------------------------------------------------------------------------------------------
 
 CREATE VIEW Employee_Department_View AS							--simpleview
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    Department FROM Employees;

 ---------------------------------------------------------------------------------------------------------------------
 
 
SQL Question 3: Complex View
Scenario:
 Create a view joining Employees, Departments, and Salaries.
Task:
 Write SQL to define a complex view with multiple joins.
Expected Output:
 The view returns combined data from all three tables.
 
 ----------------------------------------------------------------------------------------------------------------------
 
 CREATE VIEW Employee_FullDetails_View AS								--complexview
SELECT 
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS FullName,
    d.DepartmentName,
    s.Salary,
    s.PayDate
FROM Employees e
INNER JOIN Departments d 
    ON e.DepartmentID = d.DepartmentID
INNER JOIN Salaries s 
    ON e.EmployeeID = s.EmployeeID;

 ---------------------------------------------------------------------------------------------------------------------

 */