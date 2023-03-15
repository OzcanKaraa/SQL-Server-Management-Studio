-- SP IF ELSE 

-- SP Ulkelere gore cok basit olarak o ulkede tedarikci var mi yok mu kontrol edecek.
--Iki adet parametre alarak bu isi yapacak.

ALTER PROCEDURE spSupplierByCountry 
(
	@Country1 nvarchar(20),
	@Country2 nvarchar(20)
	
	)
AS
BEGIN 

	IF @Country1 IS NOT  NULL --Bos degil ise 
	BEGIN --Country1 parametresi dolu gelmisse asagidaki blogu calistir.

		SELECT * FROM Suppliers WHERE Country=@Country1 --Sorguladi
		PRINT '1.Sonuç setindeki tedarikçiler ' + @Country1 + 'ulkesinde bulunuyorlar'


	END 

	IF @Country2 IS NOT NULL 

	BEGIN 
	
	
		SELECT * FROM Suppliers WHERE Country=@Country2
		PRINT '2.Sonuç setindeki tedarikçiler ' + @Country2 + 'ulkesinde bulunuyorlar'


END 

END