ALTER PROCEDURE dbo.GetUserOrders
    @userId INT
AS
BEGIN
    SELECT * FROM dbo.orders  WHERE user_id = @userId;
	
END;

