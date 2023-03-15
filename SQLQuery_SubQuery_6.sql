--Parametreli Procedure 

USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerOrders]    Script Date: 3/14/2023 10:33:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Orders Tablosundan  CustomerID verilen musteriye ait siparisleri listeleyen SP sorgusu : 

ALTER PROCEDURE [dbo].[spCustomerOrders]
(@CustomerID nchar (5))
AS
BEGIN

	SELECT * FROM ORDERS 
	WHERE CustomerID=@CustomerID
	ORDER BY Freight DESC
END 


----------------------------------------------------------------------------------
-- EXEC dbo.spCustomerOrders 'ALFKI'
EXEC dbo.spCustomerOrders 'VINET'