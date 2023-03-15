-- Cursor Kullanimi

--Employees tablosundaki FirstName,LastName,Title alanlarini aralarinda bir bosluk olacak sekilde birlestirilen SP sorgusu :


CREATE PROCEDURE spEmployeeReport
AS 
BEGIN 

	--Önce Degiskenleri hazirlama.

	DECLARE @FirstName nvarchar (Max)
	DECLARE @LastName nvarchar (Max)
	DECLARE @Title nvarchar (Max)

	--Olay basliyor
	-- Oncelikle Employee tablonun baştan sona işlemdenn geçirebilmek için aslında bir kopyasını CURSOR yardımıyla oluşturacam.
	-- Aslında CURSOR  da degişken.
	--Declare ile tanımlanır .Fark @ olmadan tanımlama 

	DECLARE curEmployees CURSOR --Cursor Olusturuluyor.

	FOR --NE için  yaratacak Cursor

		SELECT FirstName,LastName,Title FROM Employees  -- CURSOR Temsil edecegi  veriler 
		
		OPEN  curEmployees --( Open Cursor Ismi ) Cursor açılıyor. Default olarak ileri yönlü.

		-- CURSOR 1.KAYDINA ULASMAK LAZIM OKUMAK ICIN 
		--Aynı anda da okudugum veriyi degişkenlerime aktarayım.

	--	KOMUT 

	FETCH NEXT FROM curEmployees  INTO @FirstName, @LastName,@Title   -- Fetch Komutu okuma/almaya başlama.Degiskenlere yerlestirme

	--Bir tane sistem degiskeni var. Sistem degerinin kullanimi (Sistem @@)    @@FETCH_STATUS
	--Okuma islemini dogru/yanlis kontrolu saglama
	--Islem kontrol dogru ise @@FETCH_STATUS degeri 0(sifirdir) ve islem basarilidir.
	--Bir sonraki kayitta mevcuttur.


	While @@FETCH_STATUS = 0     --0 (Sifir) Kayit varsa islemi gerceklestir.
		
		BEGIN
		       PRINT CONCAT(@FirstName,' ' , @LastName , ' - ' ,@Title )
			   --Sıradakı satır geçmek için 

			   FETCH NEXT FROM curEmployees  INTO @FirstName, @LastName,@Title --Bir sonraki kayıt okuma.Oku ve degişkenlere atama işlemi.
		END 
	

	--Kayıtlar Bitti. Su Ana kadar kayıtlar çıktı oldu.
	-- CURSOR  ile kapat.
	CLOSE curEmployees 

	-- close olsa da  bellektedir.

	DEALLOCATE curEmployees  --Bellekte de atiyor.

	END


	--------------------------------------------------------------------------------------------------------

	-- EXEC spEmployeeReport --ILE CALISTIRMA 
















	 
	


