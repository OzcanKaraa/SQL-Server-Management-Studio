--INNER JOIN : Tabloları birleştirme.Her iki tabloda da eşleşen değerlere sahip kayıtları döndürür.

Kural  :SELECT column_name(s) FROM table1

INNER JOIN table2 ON table1.column_name = table2.column_name

--------------------------------------------------------------------------------------------------------------------------------------------

-- ORDERS TABLOSUNDAN  SIPARISIN MUSTERILERIN KAYITLARI
Select OrderID,ORDERS.CustomerID from Orders  
INNER JOIN Customers on ORDERS.CustomerID=ORDERS.CustomerID

--------------------------------------------------------------------------------------------------------------------------------------------
 Select  OrderID,ORDERS.CustomerID,CompanyName,Customers.Phone from Orders   INNER JOIN Customers on ORDERS.CustomerID=ORDERS.CustomerID

 ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Orders tablosundan varolan siparişlerin müşterileri adları kayitlar.

SELECT DISTINCT Orders.CustomerID,Customers.CompanyName,Customers.Phone FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ORDERS TABLOSUNDAN VAROLAN SIPARISLERIN MUSTERILERI  ADLARI VE HANGI TASIMACILAR

 SELECT  Orders.OrderID,Orders.CustomerID,Customers.CompanyName,Customers.Phone 
 FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID 
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID 

--------------------------------------------------------------------------------------------------------------------------------------------

--ORDERS TABLOSUNDAN VAROLAN SIPARISLERIN MUSTERILERI  ADLARI VE HANGI TASIMACILAR
SELECT  Orders.OrderID,Orders.CustomerID,Customers.CompanyName,Customers.Phone,Employees.FirstName,Employees.LastName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID 
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID*/

--------------------------------------------------------------------------------------------------------------------------------------------

--ORDERS TABLOSUNDAN VAROLAN SIPARISLERIN MUSTERILERI  ADLARI VE HANGI TASIMACILAR
SELECT  Orders.OrderID,Orders.CustomerID,Customers.CompanyName,Customers.Phone+(Employees.FirstName+' ' +Employees.LastName) 
AS 'SATICI PERSONEL' 
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID 
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID

--------------------------------------------------------------------------------------------------------------------------------------------

-- ORDERS TABLOSUNDAN VAROLAN SIPARISLERIN MUSTERILERI  ADLARI VE HANGI TASIMACILAR

 SELECT Orders.OrderID,Orders.CustomerID,Customers.CompanyName,Customers.Phone,Shippers.CompanyName,shippers.Phone,
 'Sayın ' +(Employees.FirstName + ' ' + Employees.LastName) + ' personeli satmıştır' AS 'Mesaj' 
 FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID
INNER JOIN Shippers ON Orders.ShipVia=Shippers.ShipperID
INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID 

-----------------------------------------------------------------------------------------------------------------------------
-- Products -> Tedarikci adi ile Suppliers  Urun kategorisi 
-- Çıkış Ürün Adı Ürün Kategorisi 

Select ProductName,Suppliers.CompanyName,Categories.CategoryName
from Products
INNER JOIN Suppliers ON Products.ProductID=Suppliers.SupplierID
INNER JOIN Categories ON Products.ProductID = Categories.CategoryID


--Siparişler tablosundan siparişin hangi tür kategoride oldugu kayıtlar
--Ilgili tablolar Order Order Details Products Categories 

Select OrderID,Products.ProductID,Categories.CategoryName	
from [Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
INNER JOIN Categories ON Categories.CategoryID = Products.CategoryID

--------------------------------------------------------------------------------------------------------------------------------------------