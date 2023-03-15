-- Try -Catch 

--Olayda bolme islemi var.Hata olabilir düşüncesi ile hesaplama/islem kismini try  catch bloklari arasina almak yoluyla hatalarin neler oldugunu gorebiliriz.

CREATE PROCEDURE spDivide3
(
@a decimal , @b decimal , @c decimal output
)
AS 
BEGIN

	BEGIN TRY --Asagidaki bolumu dene .. oluyorsa c degeri disari gonderilmis olsun.
	SET @c = @a-@b
	Print 'Sonuc = ' + Convert(nvarchar(10),@c )
	END TRY 
	BEGIN CATCH -- Hata kodlarini yazacagim.
	SELECT 
	ERROR_NUMBER() AS ErrorNumber, --Tehlike seviyesi
	ERROR_SEVERITY() AS ErrorSeverity, --Hata durumu 
	ERROR_STATE() AS ErrorState,  -- Hangi SP de verdi  bu hatayi
	ERROR_PROCEDURE() AS ErrorProcedure,--Hatanin  gerceklestigi satir
	ERROR_MESSAGE() AS ErrorMessage --Hatanin detayli mnesaji
	END CATCH
END

