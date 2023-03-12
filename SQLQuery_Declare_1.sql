-- Degisken tanimlama komutu DECLARE

--DECLARE @<degiskenin adi><degiskenin veri tipi>

DECLARE @sayi1 int  
DECLARE @ad varchar(15) 
DECLARE @soyad varchar (25) 


--Degiskenlere deger atamak icin SET komutu kullanilir.
SET @sayi1=5 
PRINT 'Girdiginiz Sayi : '+Convert(nvarchar(20),@sayi1) -- Print ile çıktı Messages kısmında 

SET @ad = 'Ozcan'
SET @soyad =  'KARA'

SELECT @ad  AS AD,  @soyad AS SOYAD  --Degişkenlerde okuma işlemi

---------------------------------------------------------------------------------------------------------------------------
