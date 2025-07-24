-- V1__init_employee_table.sql
-- Initial migration: Create employee table and selection SP

-- Step 1: Create the employee table
CREATE TABLE dbo.Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Department NVARCHAR(50),
    HireDate DATE DEFAULT GETDATE()
);
GO

-- Step 2: Create a stored procedure for selecting by EmployeeID
CREATE PROCEDURE dbo.stp_GetEmployeeById
    @EmployeeID INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        EmployeeID,
        FirstName,
        LastName,
        Department,
        HireDate
    FROM dbo.Employee
    WHERE EmployeeID = @EmployeeID;
END;
GO
