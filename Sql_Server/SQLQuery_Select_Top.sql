--SELECT TOP : KAC KAYIT GELSIN 

*** Diğer SELECT ifadesinden farkı, döndürülecek kayıt sayısının belirtilebilmesidir.***

KURAL :  SELECT TOP/PERCENT number colname(s) FROM table_name ;

SELECT TOP 10 * FROM Customers; --ILK 10 KAYITLAR

SELECT TOP 20 CompanyName,City FROM Customers;

SELECT TOP 20 PERCENT CompanyName,City FROM Customers;

--------------------------------------------------------------------------------------------------------------------------------------
-- SELECT DISTINCT : Diğer SELECT ifadesinden farkı, yalnızca farklı değerler döndürmek için kullanılır.Tekrari önleme işlemi.

 KURAL : SELECT DISTINCT colname(s) FROM table_name

 SELECT DISTINCT Country FROM Customers;
 SELECT Country FROM Customers; (DISTINCT kullanmadan)

   -- --Adet sayisini toplamda kac City oldugunu gosterme SELECT  DISTINCT 
SELECT  DISTINCT City, COUNT (*) AS 'ADET' FROM Customers GROUP BY City      

---- Yuzde 10 alma islemi  ile TOP 10  
 SELECT  DISTINCT TOP 10  PERCENT City, COUNT (*) AS 'ADET' FROM Customers GROUP BY City ORDER BY COUNT (*) DESC           

 --SELECT INFO  ILE TABLO olusturma islemi 
SELECT * INTO Products_New  FROM Products  

SELECT * FROM Products_New

-- -- Kategori 1 olan ayri tablo olursturma kopyalama 
SELECT * INTO   Products_New2  FROM Products WHERE CategoryID=1   


SELECT * INTO   Products_New3  FROM Products WHERE 5=6 --true/false






