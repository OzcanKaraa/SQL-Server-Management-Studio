USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[spDivide1]    Script Date: 3/14/2023 1:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spDivide1] 

(
@a decimal , @b decimal 

)

AS 
BEGIN
--declare @c decimal

	BEGIN TRY --Asagidaki bolumu dene .. oluyorsa c degeri disari gonderilmis olsun.
	SET @c = @a-@b
	Print 'Sonuc = ' + Convert(nvarchar(10),@c )
	END TRY 
	BEGIN CATCH-- Hata kodlarini yazacagim.
	SELECT 
	ERROR_NUMBER() AS ErrorNumber, --Tehlike seviyesi
	ERROR_SEVERITY() AS ErrorSeverity, --Hata durumu 
	ERROR_STATE() AS ErrorState,  -- Hangi SP de verdi  bu hatayi
	ERROR_PROCEDURE() AS ErrorProcedure,--Hatanin  gerceklestigi satir
	ERROR_MESSAGE() AS ErrorMessage --Hatanin detayli mnesaji
	end CATCH
	END
