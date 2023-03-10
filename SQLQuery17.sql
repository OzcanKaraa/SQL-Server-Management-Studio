INNER JOIN : Her iki tabloda da eşleşen değerlere sahip kayıtları döndürür.

KURAL : 
SELECT column_name(s) FROM table1

INNER JOIN table2 ON table1.column_name = table2.column_name;

SELECT Orders.OrderID, Customers.CompanyName

FROM Orders

INNER JOIN Customers ON Orders.CustomerID =
Customers.CustomerID;


SELECT Orders.OrderID, Customers.CompanyName, Shippers.CompanyName AS Shipper FROM Orders

INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID

INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID;