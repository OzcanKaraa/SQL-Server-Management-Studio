-- Orders Tablosundan  CustomerID verilen musteriye ait siparisleri listeleyen SP sorgusu : 

--Parametreli Procedure
CREATE PROCEDURE spCustomerOrders
(@CustomerID nchar (5))
AS
BEGIN

	SELECT * FROM ORDERS 
	WHERE CustomerID=@CustomerID

END 

---------------------------------------------------------------
-- EXEC dbo.spCustomerOrders 'ALFKI'
EXEC dbo.spCustomerOrders 'VINET'