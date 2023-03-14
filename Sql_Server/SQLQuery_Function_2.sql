--MODIFY 

--Verilen Tarih bilgisine gore yasini hesaplayan fonksiyon
ALTER Function [dbo].[funcYasHesapla]
(
--Parametre 
@Tarih Date 
)
Returns int 
AS
BEGIN

	DECLARE @sonuc int
	-- SET @sonuc = YEAR(GETDATE()) - YEAR(@Tarih )     -- YEAR() , GETDATE () BUGUNUN TARIHI  SISTEM FONKSIYON
	SET @sonuc = DATEDIFF(YEAR,@Tarih,GETDATE())

RETURN @sonuc
END 