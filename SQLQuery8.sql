--LIKE KULLANIMI 

-- CustomerID Alaninda Bas harfi C ile baslayan musteriler
--% Joker Karakteri kullanildi.
 Select * From Customers where CustomerID LIKE 'C%'

-- CustomerID Alaninda  C ile Biten  musteriler
 Select * From Customers where CustomerID LIKE '%C'

--Isminde MASK karakterleri olan 
Select * From Customers where ContactName LIKE '%mas%'

--CompanyName alaninda 2.harfi R olan kayitlar 
--  "_" ile 2.karakter icin 
 Select * From Customers where CompanyName LIKE '_r%'


--CompanyName alaninda a  Ile baslayan ve en az 2 karakter uzunlugundaki  kayitlar 
Select * From Customers where CompanyName LIKE 'a__%'


--ContactName alaninda a  Ile baslayan o  ile biten  kayitlar 
 Select * From Customers where ContactName LIKE 'a%o'


 SELECT * FROM Customers WHERE CompanyName LIKE 'a%’ –> "a" ile başlayan değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE '%a’ –> "a" ile biten değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE '%or%’ –> Herhangi bir pozisyonda “or" olan herhangi bir değeri bulur

SELECT * FROM Customers WHERE CompanyName LIKE '_r%’ –> İkinci konumda "r" olan tüm değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE 'a_%’ –> "a" ile başlayan ve en az 2 karakter uzunluğundaki değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE 'a__%’ –> "a" ile başlayan ve en az 3 karakter uzunluğundaki değerleri bulur

SELECT * FROM Customers WHERE ContactName LIKE 'a%o’ -> "a" ile başlayan ve "o" ile biten tüm değerleri bulur
 ----------------------------------------------------------------------------------------------------------------------------------






















