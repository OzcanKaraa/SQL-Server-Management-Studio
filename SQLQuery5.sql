EXAMPLES
---------------------------------------------------------------------------------------------------------------------------
--Producs tablosundaki urun adi , urunun fiyati ve eger 15 PNG KINA EKLENIRSE NE OLUR ??

 SELECT ProductName,UnitPrice,(unitprice + 15)  AS 'Yeni Fiyat' 
 from products 
 
 -----------------------------------------------------------------------------------------------------------------------------

  --STOK MALIYETI HESAPLAMA
 SELECT (ProductName + 'Ürünün toplam stok maliyeti  = '+CONVERT(nvarchar (20), UnitPrice * UnitsInStock ))
 AS 'Yeni Durum ' from 
 Products ORDER BY ProductName DESC 

------------------------------------------------------------------------------------------------------------------

 -- En yuksek fiyatli urun adi sorgu :
 
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






