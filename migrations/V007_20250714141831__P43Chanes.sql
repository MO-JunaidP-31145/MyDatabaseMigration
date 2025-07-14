ALTER PROCEDURE dbo.GetUserOrders
    @userId INT
AS
BEGIN
    SELECT * FROM dbo.orders with(nolock) WHERE user_id = @userId;
END;
