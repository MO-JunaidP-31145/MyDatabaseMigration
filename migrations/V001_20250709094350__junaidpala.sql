-- Create users table
CREATE TABLE dbo.users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);
go
-- Create orders table
CREATE TABLE dbo.orders (
    id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    created_at DATETIME DEFAULT GETDATE()
);
go
-- Alter users table to add is_active column
ALTER TABLE dbo.users ADD is_active BIT DEFAULT 1;
go
-- Dummy stored procedure for inserting into users
CREATE PROCEDURE dbo.InsertUser
    @id INT,
    @username VARCHAR(50),
    @email VARCHAR(100)
AS
BEGIN
    INSERT INTO dbo.users (id, username, email)
    VALUES (@id, @username, @email);
END;
go
-- Dummy stored procedure for fetching orders
CREATE PROCEDURE dbo.GetUserOrders
    @userId INT
AS
BEGIN
    SELECT * FROM dbo.orders WHERE user_id = @userId;
END;
