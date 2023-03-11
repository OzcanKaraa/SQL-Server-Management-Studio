-- SQL FUNCTION

--Verilen Tarih bilgisine gore yasini hesaplayan fonksiyon
Create Function funcYasHesapla
(
--Parametre 
@Tarih Date 
)

Returns int --Geriye donecek değerin veri tipini belirleme.
AS
BEGIN

	DECLARE @sonuc int  --Degişkenleri tanımlama
	SET @sonuc = YEAR(GETDATE()) - YEAR(@Tarih )     -- YEAR() , GETDATE () BUGUNUN TARIHI  SISTEM FONKSIYON


RETURN @sonuc
END 
-----------------------------------------------------------------------------------------------------------------
--FONKSIYON ÇAĞIRMA İŞLEMİ

 SELECT dbo.funcYasHesapla('03.15.2000') AS 'Yaş Hesabı' 


