--LEN KARAKTER SAYISI 

-- ProductName Karakter sayısı
 Select ProductName,LEN(ProductName) AS 'UZUNLUK' from Products

------------------------------------------------------------------------------------------------------------------------------
-- ProductName Karakter sayısı 10 DAN Kucuk olan kayitlar

Select ProductName,LEN(ProductName) AS 'UZUNLUK' from 
Products WHERE LEN(ProductName) < 10 
ORDER BY   LEN(ProductName) Desc 

-------------------------------------------------------------------------------------------------
--SUBSTRING ARALIK BELIRTEREK ISTENILEN KARAKTER 

Select ProductName,SUBSTRING(ProductName,1,5) AS 'SONUC' 
from Products 

------------------------------------------------------------------------------------------------------------------------------------
-- LEFT() RIGHT()
 Select ProductName,RIGHT(ProductName,8) AS 'SONUC' from Products  --Sagdan 8 karakter
Select ProductName,LEFT(ProductName,8) AS 'SONUC' from Products  --Soldan 8 karakter
------------------------------------------------------------------------------------------------------------------------------------
--UPPER TUMUNU BÜYÜTME
--LOWER TUMUNU KÜÇÜLTME

 Select ProductName,LOWER(ProductName) AS 'SONUC' from Products 

 Select ProductName,UPPER(ProductName) AS 'SONUC' from Products 

---------------------------------------------------------------------------------------------------------------------------------------













