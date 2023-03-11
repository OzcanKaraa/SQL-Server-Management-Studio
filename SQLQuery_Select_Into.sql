SELECT INTO : Verileri bir tablodan yeni bir tabloya kopyalama için kullanılır.

KURAL:  SELECT * INTO newtable FROM oldtable WHERE condition;

SELECT * INTO Customers_New FROM Customers;

SELECT CustomerName, ContactName INTO Customers_New2 FROM Customers;

SELECT * INTO CustomersGermany FROM Customers WHERE Country = 'Germany’;

SELECT * INTO newtable FROM oldtable WHERE 1 = 0 --FALSE

-----------------------------------------------------------------------------------------------------------------
GROUP BY  : 

  GROUP BY ifadesi, aynı değerlere sahip satırları özet satırlarda gruplandırır. (Örneğin
 "her ülkedeki müşteri sayısını bul" gibi). Sonuç kümesini bir veya daha fazla sütunla
 gruplandırmak için genellikle toplama işlevleriyle (COUNT(), MAX(), MIN(), SUM(),
 AVG()) kullanılır.

 KURAL : SELECT colname(s) FROM table_name

		WHERE condition

		GROUP BY colname(s)

		ORDER BY colname(s)



SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC

----------------------------------------------------------------------------------------------------------------------
HAVING: 
	
	WHERE anahtar sözcüğü gruplama işlevleriyle direct olarak kullanılamadığı için bu
	işlemi HAVING yan tümcesi ile gerçekleştirebiliriz.

	KURAL : SELECT colname(s) FROM table_name

WHERE condition

GROUP BY column_name(s)

HAVING condition

ORDER BY column_name(s);


SELECT COUNT(CustomerID), Country FROM Customers 
GROUP BY Country  
HAVING COUNT(CustomerID) > 5;



SELECT COUNT(CustomerID), Country

FROM Customers

GROUP BY Country

HAVING COUNT(CustomerID) > 5

ORDER BY COUNT(CustomerID) DESC;

-------------------------------------------------------------------------------------------------------------------------
WHERE():Veritabanından seçilecek kayıtlar üzerinde filtreleme yapmak için kullanılır. Böylelikle
yalnızca belirli bir koşulu karşılayan kayıtları listeyebiliriz.

KURAL : SELECT */col1, col2, ...

FROM table_name

WHERE condition;


SELECT * FROM Customers

WHERE Country='Mexico'



SELECT LastName FROM Employees

WHERE EmployeeID=5;

-------------------------------------------------------------------------------------------------------------------------------

MATEMATIKSEL ISLEMLER :

SELECT UnitPrice, UnitPrice + 25 from Products;

SELECT ProductID,UnitPrice, UnitPrice - 3.67 from Products;

SELECT UnitPrice, UnitPrice * 3 from Products;

SELECT UnitPrice,UnitPrice / 2 from Products;

SELECT 30 + 50

----------------------------------------------------------------------------------------------------------------------------

KARSILASTIRMA OPERATORLERI : 

SELECT * FROM Products WHERE UnitsInStock = 100;

SELECT * FROM Products WHERE UnitsInStock < 100;

SELECT ProductName FROM Products WHERE UnitPrice > 20;

SELECT ProductName,SupplierID FROM Products WHERE Discounted <> 0;

--------------------------------------------------------------------------------------------------------------------------------------
DROP : TÜMÜNÜ SILME ISLEMI 

DROP DATABASE University;
DROP TABLE Students;

------------------------------------------------------------------------------------------------------
ALTER : TABLO UZERINDE DEGISIKLIKLER YAPMA 

ALTER TABLE Students ADD Age int;
------------------------------------------------------------------------------------------------------
TRUNCATE : Silme islemi icin kullanilir.
TRUNCATE TABLE Students
------------------------------------------------------------------------------------------------------

