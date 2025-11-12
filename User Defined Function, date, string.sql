/* Today's challenge


SQL Question 1: String Functions
Scenario:
 Clean up employee names for reporting.
Task:
 Write queries using UPPER, LOWER, SUBSTRING, CONCAT.
Expected Output:
 Formatted name outputs are displayed.
 
 ------------------------------------------------------------------------------------------------------------------------
 
 SELECT 												--UPPER
    employee_id,
    UPPER(first_name) AS FirstName_Upper,
    UPPER(last_name) AS LastName_Upper
FROM Employees;


SELECT 													--LOWER
    employee_id,
    LOWER(first_name) AS FirstName_Lower,
    LOWER(last_name) AS LastName_Lower
FROM Employees;


SELECT 													--SUBSTRING
    employee_id,
    SUBSTRING(first_name, 1, 3) AS First3Letters
FROM Employees;


SELECT 													--CONCAT
    employee_id,
    CONCAT(first_name, ' ', last_name) AS Full_Name
FROM Employees;

 ------------------------------------------------------------------------------------------------------------------------
 
SQL Question 2: Date Functions
Scenario:
 Calculate employee tenure in years.
Task:
 Use DATE functions like YEAR(), DATEDIFF(), NOW().
Expected Output:
 Employee tenure is calculated correctly.
 
  ------------------------------------------------------------------------------------------------------------------------
  
  SELECT 															--DATEDIFF
    EmployeeID,
    EmployeeName,
    HireDate,
    DATEDIFF(YEAR, HireDate, GETDATE()) AS TenureYears
FROM Employees;

SELECT 																--YEAR, NOW
    EmployeeID,
    EmployeeName,
    HireDate,
    YEAR(NOW()) - YEAR(HireDate) AS TenureYears
FROM Employees;

   ------------------------------------------------------------------------------------------------------------------------
 
SQL Question 3: User-defined Function
Scenario:
 Create a reusable function to return full name of a student.
Task:
 Write and test a UDF combining FirstName + LastName.
Expected Output:
 Full name is returned when function is called. 
 
 -------------------------------------------------------------------------------------------------------------------------
 
DELIMITER //
CREATE FUNCTION GetFullName(FirstName VARCHAR(50), LastName VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN CONCAT(TRIM(FirstName), ' ', TRIM(LastName));
END //
DELIMITER ;

SELECT GetFullName('Surya', 'Kumar') AS FullName;
 
 -------------------------------------------------------------------------------------------------------------------------
 
 
 
 
 
 
 
 
 */