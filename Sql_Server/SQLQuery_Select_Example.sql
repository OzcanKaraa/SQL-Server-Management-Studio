EXAMPLES
---------------------------------------------------------------------------------------------------------------------------
--Producs tablosundaki urun adi , urunun fiyati ve eger 15 PNG KINA EKLENIRSE NE OLUR ??

 SELECT ProductName,UnitPrice,(unitprice + 15)  AS 'Yeni Fiyat' 
 from products 
 
 -----------------------------------------------------------------------------------------------------------------------------

  --STOK MALIYETI HESAPLAMA
 SELECT (ProductName + '�r�n�n toplam stok maliyeti  = '+CONVERT(nvarchar (20), UnitPrice * UnitsInStock ))
 AS 'Yeni Durum ' from 
 Products ORDER BY ProductName DESC 

------------------------------------------------------------------------------------------------------------------

 -- En yuksek fiyatli urun adi sorgu : ***********
 
	SELECT TOP 1
	[Order Details].ProductID,
	Products.ProductName,
	[Order Details].UnitPrice

	FROM [Order Details]

	INNER JOIN Products ON [Order Details].ProductID=Products.ProductID

	GROUP BY

	[Order Details].ProductID,
	Products.ProductName,
	[Order Details].UnitPrice

	HAVING [Order Details].UnitPrice=MAX([Order Details].UnitPrice)

	ORDER BY [Order Details].UnitPrice DESC

	------------------------------------------------------------------------------------------------------------------------------------------

	--PRODUCT NAME SADECE ILK KARAKTERINI KUCUK HARF YAZDIRMA VE KUCULTME
	Select ProductName,LOWER(SUBSTRING(ProductName,1,1)) + SUBSTRING(ProductName,2,LEN(ProductName)) from Products 




