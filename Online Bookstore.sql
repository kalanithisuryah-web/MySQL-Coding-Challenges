/* Today's challenge: Constraints


SQL Question 1: PRIMARY KEY & FOREIGN KEY
Scenario:
 You are creating a database for an online bookstore.
Task:
 Define a primary key for Books(BookID) and a foreign key in Orders(BookID) referencing Books.
Expected Output:
 Constraints are applied successfully.
 
 */
 
 
 CREATE DATABASE Online_bookstore;
 USE Online_bookstore;
 
 CREATE TABLE Books (
	BookID INT PRIMARY KEY,
    Title VARCHAR(50),
    Author VARCHAR(50),
    ISBN VARCHAR(20)
 );
 
 ALTER TABLE Books
 DROP COLUMN ISBN;
 
 ALTER TABLE Books
 ADD ISBN INT;
 
 DESC Books;
 
 CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
    Order_date DATE,
    BookID INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
  );
  
  DESC Orders;
  
  /* ------------------------------------------------------------------------------------------------------------------ */
  
 /* SQL Question 2: UNIQUE Constraint
Scenario:
 Each book must have a unique ISBN.
Task:
 Add a UNIQUE constraint to the ISBN column in Books.
Expected Output:
 ISBN values are enforced as unique. */
 
 ALTER TABLE Books
 ADD CONSTRAINT Unique_ISBN UNIQUE (ISBN);
 
 DESC Books;
 
  /* ------------------------------------------------------------------------------------------------------------------ */
  
  INSERT INTO Books (BookID, Title, Author, ISBN) VALUES 
	(01,"An Eco-Critical Appraisal","Rabia Mukhtar",978-81-933904-9-8),
    (02,"ACCIDENTS DO NOT HAPPEN","Dr Sankar Rajeev",978-81-933904-8-1),
    (03,"PROPAGATION OF GLORY LILY","Dr. S. ANANDHI",978-81-933904-6-7);
    
    SELECT * FROM Books;
    
   INSERT INTO Orders (OrderID, Order_date, BookID) VALUES
	(101, '2025-11-04', 01),
	(102, '2025-11-04', 02),
    (103,'2025-11-04',03);
    
    SELECT * FROM Orders;
    
    
   /* ------------------------------------------------------------------------------------------------------------------ */
  
/* SQL Question 3: DELETE vs TRUNCATE
Scenario:
 The store wants to clear test orders but sometimes preserve structure.
Task:
 Demonstrate DELETE with WHERE clause and TRUNCATE for Orders table.
Expected Output:
 DELETE removes selected rows; TRUNCATE clears all rows quickly 
 
 
 /* DELETE */

 DELETE FROM Orders
 WHERE OrderID=101;
 
 SELECT * FROM Orders;
 
 /* TRUNCATE */
 
 TRUNCATE TABLE Orders;
 
 SELECT * FROM Orders;
 
 /* ----------------------------------------------------------------------------------------------------------------- */
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
