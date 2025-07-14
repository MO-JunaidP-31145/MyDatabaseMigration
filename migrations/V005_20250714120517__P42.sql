

-- Dummy stored procedure for fetching orders
ALTER PROCEDURE dbo.GetUserOrders
    @userId INT
AS
BEGIN
    SELECT * FROM dbo.tbl_Myorders WHERE users_id = @userId;
END;
