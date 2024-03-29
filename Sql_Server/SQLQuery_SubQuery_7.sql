USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[spCustomerOrders]    Script Date: 3/14/2023 10:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Orders Tablosundan  CustomerID verilen musteriye ait siparisleri listeleyen SP sorgusu :

--Ek : Orders tablosundan CustomerID verilen musteriye ait siparislerin numarasin , siparis tarihini ve ek olarak musteri detaylarini (CompanyName,Addres , City ,Country) listeleyen SP  yi duzenleyiniz..

ALTER PROCEDURE [dbo].[spCustomerOrders]
(@CustomerID nchar (5))
AS
BEGIN

	SELECT  O.OrderID, O.OrderDate ,C.Address , C.City , C.Country
	FROM ORDERS O

	INNER JOIN Customers C ON O.CustomerID=C.CustomerID
	WHERE C.CustomerID=@CustomerID
	ORDER BY C.CompanyName ASC
END 