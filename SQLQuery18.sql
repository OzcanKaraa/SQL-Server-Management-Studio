LEFT JOIN : Soldaki tablodaki tüm satırları ve sağdaki tablodaki eşleşen
satırları birleştirmek için kullanılır.

KURAL:
SELECT column_name(s) FROM table1

LEFT JOIN table2 ON table1.column_name = table2.column_name;


SELECT Orders.OrderID,Customers.CompanyName FROM Customers

LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

ORDER BY Customers.CompanyName;



