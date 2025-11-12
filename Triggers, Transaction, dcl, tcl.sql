/* Today's challenge-


Triggers & Transactions
SQL Question 1: Trigger
Scenario:
 Log every deletion in the Orders table.
Task:
 Write a trigger to insert deleted rows into Order_History.
Expected Output:
 Deleted records are logged automatically.
 
 ---------------------------------------------------------------------------------------------------------- */
 
 CREATE DATABASE tt;
 USE tt;
 
 CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

CREATE TABLE Order_History (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    deleted_at DATETIME
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
(101, 1, '2025-10-10', 250.00),
(102, 2, '2025-10-11', 450.50),
(103, 3, '2025-10-12', 150.75),
(104, 4, '2025-10-13', 320.00),
(105, 5, '2025-10-14', 600.00);

SELECT * FROM Orders;

INSERT INTO Order_History (order_id, customer_id, order_date, total_amount, deleted_at)
VALUES
(101, 1, '2025-10-10', 250.00, '2025-11-04 10:15:00'),
(102, 2, '2025-10-11', 450.50, '2025-11-04 10:20:00'),
(103, 3, '2025-10-12', 150.75, '2025-11-04 10:25:00'),
(104, 4, '2025-10-13', 320.00, '2025-11-04 10:30:00'),
(105, 5, '2025-10-14', 600.00, '2025-11-04 10:35:00');

SELECT * FROM Order_History;

DELIMITER $$

CREATE TRIGGER after_order_delete
AFTER DELETE
ON Orders
FOR EACH ROW
BEGIN
    INSERT INTO Order_History (order_id, customer_id, order_date, total_amount, deleted_at)
    VALUES (OLD.order_id, OLD.customer_id, OLD.order_date, OLD.total_amount, NOW());
END$$

DELIMITER ;

DELETE FROM Orders WHERE order_id = 102;

SELECT * FROM Order_History;

 /* ----------------------------------------------------------------------------------------------------------
 
SQL Question 2: DCL Commands
Scenario:
 Grant reporting access to junior analysts.
Task:
 Write SQL using GRANT and REVOKE commands.
Expected Output:
 User privileges are updated accordingly.
 
 -------------------------------------------------------------------------------------------------------------
 
 GRANT SELECT ON SalesDB.* TO 'junior_analyst'@'localhost';						--GRANT
 
 REVOKE SELECT ON SalesDB.* FROM 'junior_analyst'@'localhost';					--REVOKE

 -------------------------------------------------------------------------------------------------------------
 
SQL Question 3: TCL Commands
Scenario:
 During a bank transfer, ensure atomicity.
Task:
 Write SQL using COMMIT, ROLLBACK, SAVEPOINT.
Expected Output:
 Transaction integrity is maintained.
 
  ------------------------------------------------------------------------------------------------------------- */
 
 CREATE DATABASE Acc;
 USE Acc;
 
 CREATE TABLE Accounts (
    account_no INT PRIMARY KEY,
    holder_name VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO Accounts VALUES
(101, 'Surya', 5000.00),
(102, 'Arun', 3000.00);

START TRANSACTION;

UPDATE Accounts 
SET balance = balance - 1000 
WHERE account_no = 101;

SAVEPOINT after_deduction;

UPDATE Accounts 
SET balance = balance + 1000 
WHERE account_no = 102;

COMMIT;
 
 
 
 /* -------------------------------------------------------------------------------------------------------------
 
 */