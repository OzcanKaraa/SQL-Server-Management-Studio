--IN (): TABLODA Veri arama icin .

IN operatörü, bir WHERE yan tümcesinde birden çok değer belirtmenize izin verir. Aslında
IN operatörü, çoklu OR koşulları için bir kısayoldur.

KURAL 1 : SELECT colname(s) FROM table_name

WHERE colname IN (val1, val2, ...);

KURAL 2 :
SELECT colname(s) FROM table_name

WHERE colname IN (SELECT STATEMENT);


SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK')
SELECT * FROM CUSTOMERS WHERE COUNTRY NOT IN ('GERMANY','SPAIN')
SELECT * FROM Customers WHERE Country NOT IN ('Germany', 'France', 'UK')

SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Suppliers);

SELECT * FROM Products WHERE Price BETWEEN 10 AND 20 AND CategoryID NOT IN (1,2,3);



------------------------------------------------------------------------------------------------------------------------------
--SubQuery(): Alt Sorgu 

--Tedarikcilerin oldugu ulkelerin musteriler?? 
	SELECT * FROM CUSTOMERS  WHERE Country IN (SELECT Country FROM Suppliers) 
---------------------------------------------------------------------------------------------------------------------------------

--TARIH HESAPLAMA 

--SIPARIS TARIHI 1 TEMMUZ 1996 ILE 31 ARALIK 1996 ARASINDA OLAN SIPARISLER
 SELECT * FROM ORDERS WHERE OrderDate between '1996-07-01' and '1996-07-31'

 
--SIPARIS TARIHI 1 TEMMUZ 1996 ILE 31 TEMMUZ 1996 ARASINDA OLAN SIPARISLER VE Shipvia 1 olan
SELECT * FROM ORDERS WHERE (OrderDate between '1996-07-01' and '1996-07-31')and Shipvia

-------------------------------------------------------------------------------------------------------------------------------


-- LTRIM() SOLUNDA KALANLARI KARAKTEDE BOSLUKLARI SILER 
--  RTRIM() SAG KALANLARI KARAKTEDE BOSLUKLARI SILER 
-- TRIM BOSLULARI SILER SAG-SOL

SELECT LTRIM('             OZCAN KARA                 ' ) 
SELECT RTRIM('             OZCAN KARA                 ' ) 
 SELECT TRIM('             OZCAN KARA          LOREM       ' )   
------------------------------------------------------------------------------------------------------------------------
--CONVERT() Veri tipleri arasinda donusum char->int 
 SELECT CONVERT(int,'15')*20 
 SELECT CONVERT(varchar(20),50)

----------------------------------------------------------------------------------------------------------------------------
--CAST TAM SAYI ICIN INT cevirme islemi
 SELECT CAST('50' AS int) + 50



