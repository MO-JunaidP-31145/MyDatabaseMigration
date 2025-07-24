ALTER PROCEDURE dbo.stp_GetEmployeeById
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
