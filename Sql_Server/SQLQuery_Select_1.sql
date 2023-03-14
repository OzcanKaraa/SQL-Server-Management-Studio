--SELECT : İlgili tablodaki verileri tamamiyle veya koşullar dahilinde sorgulamak için kullanılır.

KURAL : SELECT expressions/fields FROM table WHERE conditions;

  SELECT * FROM Customers          --Customer Tum Listeyi gosterme
  SELECT * FROM Customers WHERE Region= 'BC'  --'BC' olan kayitlari gosterme
  SELECT CustomerID,CompanyName,ContactName FROM Customers;
  SELECT CustomerID,CompanyName,ContactName FROM Customers WHERE City=‘Berlin’;

  -- Hangi ülkede kaç müşteri var
	SELECT Country FROM Customers    

 -- Group By kullanildginda Where komutu kullanilmaz Having kullanilir 10 dan buyuk olanlar 
	SELECT Country,COUNT(CustomerID) AS'ADET' FROM Customers  GROUP BY Country Having COUNT(CustomerID)  > 10  ORDER BY Country DESC 

	SELECT Country,COUNT(CustomerID) AS'ADET' FROM Customers  GROUP BY Country Having COUNT(CustomerID)  > 10  ORDER BY COUNT(*) DESC

	--Ulkesi Almanya olan Hem frankurt hemde madrid olan musteriler
	SELECT  * FROM Customers Where Country='Germany' AND  (City= 'Frankfurt' OR City= 'Köln' )

	-- Almanya veya Ispanya da olan musteriler

	SELECT  CompanyName,ContactName FROM Customers Where Country='GERMANY' OR Country='SPAIN'
 
	--Almanyada olmayan musteriler
	SELECT  CompanyName,ContactName FROM Customers Where not Country = 'GERMANY' 

	SELECT  CompanyName,ContactName FROM Customers Where not Country <> 'GERMANY'

	--Almanyada Ispanyada olmayan musteriler
	SELECT  CompanyName,Country FROM Customers Where  (Country <> 'GERMANY'  AND Country <> 'SPAIN') 

	-- Fiyati 70 ila  150 Tl  arasinda olanlar 

	Select * from Products	where UnitPrice between 70 and 150

   -- Fiyati 70 ila  150 Tl  arasinda OLMAYANLAR (NOT KULLANIMI )
   Select * from Products	 where UnitPrice not between 70 and 150

  -- Urun Adi Carnarvon Tigers urunu ile Mozerella di Giovanning arasinda olan urunler 

   Select * from Products where ProductName between 'Carnarvon Tigers' and 'Mozerella di Giovanning' order by ProductName

   -- Kategori 1 olanlari getir
 SELECT * FROM Products WHERE CategoryID=1    
 
  --Urun adi ve fiyati 
 SELECT ProductName,UnitPrice FROM Products   
 
    --Siparisler Customer id VINET olan 
	 SELECT * FROM Orders WHERE CustomerID='VINET'     
	 
	 --CustomeriD TOMSP Kac adet?? COUNT ILE KAYIT SAYISINI BULMA KAC KAYIT VAR
	 SELECT COUNT(*)  FROM Orders WHERE CustomerID='TOMSP'	  
	 ------------------------------------------------------------------------------------------------------------------------------------------------------
 --AS ILE TAKMA ISIM KULLANIMI 
 SELECT COUNT(*) AS 'TOPLAM KAYIT SAYISI ' FROM Orders WHERE CustomerID='TOMSP' 

--------------------------------------------------------------------------------------------------------------------------------------
