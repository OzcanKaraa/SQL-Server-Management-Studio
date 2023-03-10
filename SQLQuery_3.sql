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

CREATE : OLUSTURMAK

CREATE DATABASE University;
CREATE TABLE Students (COLUMN_NAME DATATYPES[,....]);
CREATE VIEW for_Students;

------------------------------------------------------------------------------------------------------

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