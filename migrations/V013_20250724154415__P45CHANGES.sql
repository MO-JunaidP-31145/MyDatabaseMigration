ALTER PROCEDURE dbo.stp_GetEmployeeById
    @EmployeeID INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT TOP 100
        EmployeeID,
        FirstName,
        LastName,
        Department,
        HireDate
    FROM dbo.Employee
    WHERE EmployeeID = @EmployeeID;
END;
GO