ALTER PROCEDURE dbo.GetUserOrders
    @userId INT
AS
BEGIN
    SELECT top 100 * FROM dbo.orders with(nolock) WHERE user_id = @userId;
END;

