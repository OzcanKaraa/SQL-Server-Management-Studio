 EXAMPLES

--------------------------------------------------------------------------------------------------------------------
--PRODUCT NAME SADECE ILK KARAKTERINI KUCUK HARF YAZDIRMA VE KUCULTME
 Select ProductName,LOWER(SUBSTRING(ProductName,1,1)) + SUBSTRING(ProductName,2,LEN(ProductName)) from Products 

--------------------------------------------------------------------------------------------------------------------------

---- LTRIM() SOLUNDA KALANLARI KARAKTEDE BOSLUKLARI SILER 
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
 
