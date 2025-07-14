-- Create users table
CREATE TABLE dbo.tbl_Myusers (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);
go
-- Create orders table
CREATE TABLE dbo.tbl_Myorders (
    id INT PRIMARY KEY,
    users_id INT,
    amount DECIMAL(10,2),
    created_at DATETIME DEFAULT GETDATE()
);
go
-- Alter users table to add is_active column
ALTER TABLE dbo.tbl_Myusers ADD is_active BIT DEFAULT 1;
go
-- Dummy stored procedure for inserting into users
CREATE PROCEDURE dbo.InsertUserdata
    @id INT,
    @username VARCHAR(50),
    @email VARCHAR(100)
AS
BEGIN
    INSERT INTO dbo.tbl_Myusers (id, username, email)
    VALUES (@id, @username, @email);
END;
go
-- Dummy stored procedure for fetching orders
CREATE PROCEDURE dbo.GetUserOrdersdata
    @userId INT
AS
BEGIN
    SELECT * FROM dbo.tbl_Myorders WHERE users_id = @userId;
END;
