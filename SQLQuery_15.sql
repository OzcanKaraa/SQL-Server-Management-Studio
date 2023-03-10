--FONKSIYONLAR
-----------------------------------------------------------------------------------------------------------
LEN() 

Bir string katarının uzunluğunu hesaplar ve geri döndürür.

 SELECT ProductName FROM Products WHERE LEN(ProductName) > 10

-------------------------------------------------------------------------------------------------------------

SUBSTRING() 

Bir string kadarından istenen yerden istenen kadarını alır.

SELECT ProductName,SUBSTRING(ProductName,1,5) FROM Products

-------------------------------------------------------------------------------------------------------------

LEFT(), RIGHT()

Bir string katarının sağından veya solundan verilen uzunlukta karakter alır.

SELECT ProductName,LEFT(ProductName,5) FROM Products
-------------------------------------------------------------------------------------------------------------

UPPER(), LOWER() Bir string katarını büyük harf veya küçük harfe çevirir.

SELECT ProductName,UPPER(ProductName) FROM Products

-------------------------------------------------------------------------------------------------------------

LTRIM(), RTRIM()

Parametre olarak aldığı stringin solunda olan bütün boşlukları kaldırır.

SELECT LTRIM(' Ozcan Kara ')

------------------------------------------------------------------------------------------
AVG() Ortalama 

SELECT AVG(UnitPrice) FROM Products;

--------------------------------------------------------------------------------------------------------------
COUNT() 

Tüm kayıtların sayısı hesaplama 
SELECT COUNT(ProductID) FROM Products;


------------------------------------------------------------------------------------------------------------
SUM() TOPLAMA 

SELECT SUM(Quantity) FROM OrderDetails;
-------------------------------------------------------------------------------------------------------------

MAX(), MIN() 

SELECT MIN(UnitPrice) AS SmallestPrice FROM Products;











