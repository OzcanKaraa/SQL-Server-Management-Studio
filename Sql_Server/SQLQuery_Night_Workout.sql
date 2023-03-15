-- Northwind veri tabanında bulunan “Shippers” tablosu üzerinde kayıt ekleme, güncelleme ve silme işlemleri yapılacaktır (a.k.a CRUD).
-- Bu işlemlerin "dinamik (parametreli)" bir Stored Procedure yardımı ile gerçekleştirilmesi istenmektedir. 
-- SP üzerine gelecek olan parametreler ShipperID, OpCode, CompanyName, Phone olarak isimlendirilmiş parametreler olacaktır.
-- Gelen bu parametrelere göre varolan bu tablo üzerinde CRUD işlemlerini geçekleştiriniz.
-- Değişiklikleri izlemek açısından SP'ningirişinde tablonun o anki(işlemden önceki) halini, işlemler bittikten sonra da değişikliğe uğramış durumunu listeleyebilirsiniz.

-- İpucu1 : Yeni kayıt için ShipperID parametresine 0 değerini gönderebilirsiniz. 

-- İpucu2 : OpCode (işlem kodları) için C,R,U,D parametrelerini kullanabilirsiniz.

--A.K.A =>  AS KNOW AS  -- Bildigi gibi
-- A.F.A.I.K => AS FAR AS i Know  --Bildigim kadariyla

-- CRUD : Create, Read , Update, Delete

CREATE PROC spShippersCRUD 
(
--Parametre Tanim Alani  4 Parametre Alani sirasi ile Execute edilir.
	@ShipperID int ,
	@OpCode char(1),
	@CompanyName  nvarchar(40),
	@Phone  nvarchar(24)
) 
AS
BEGIN 
--Oncelikle tablonun simdiki durumunu listeleme
	SELECT * FROM Shippers

-- Islemler Bolumu 
	IF @ShipperID <> 0 --Farkli 0 ise 
	BEGIN  --Tabloda bulunan bir kayit Read,Update,Delete islemlerinden biri isteniyor.

		IF @OpCode = 'R'--Read
			SELECT * FROM Shippers WHERE ShipperID=@ShipperID --Parametreden gelen deger okuma.

		IF @OpCode = 'U'--Update 
			UPDATE Shippers 
			SET CompanyName=@CompanyName, Phone = @Phone
			WHERE ShipperID=@ShipperID

			IF @OpCode = 'D'--DELETE 
			DELETE FROM Shippers
			WHERE ShipperID=@ShipperID

		END 

		ELSE --ShipperID = 0 ise yeni kayit yapmak isteniyor.

		BEGIN
			INSERT INTO Shippers (CompanyName,Phone)
			VALUES (@CompanyName,@Phone)
		END

		--DEGISEN SON DURUMU GOSTER
		SELECT * FROM Shippers

END 

----------------------------------------------------------------------------------------------------
-- 1 Numarali kaydin bilgilerini (CompanyName,Phone ) Güncelleme işlemi 
EXEC dbo.spShippersCRUD 1,'U','Yurtiçi Kargo ','0216 1234567'

-----------------------------------------------------------------------------------------
-- 1 Numarali kaydin bilgilerini (CompanyName,Phone ) Okuma işlemi
 EXEC dbo.spShippersCRUD 1,'R',null,null

--------------------------------------------------------------------------------------------
-- 3 Numarali kaydin bilgilerini (CompanyName,Phone ) Silme işlemi
 EXEC dbo.spShippersCRUD 3,'D',Null,Null

----------------------------------------------------------------------------------------------

-- 1 Numarali kaydin bilgilerini (CompanyName,Phone ) Yeni Olusturma işlemi 
EXEC dbo.spShippersCRUD 0,'C','ARAS Kargo ','02165365478'

---------------------------------------------------------------------------------------------------
-- 3 Numarali kaydin bilgilerini (CompanyName,Phone ) Silme işlemi
 EXEC dbo.spShippersCRUD 4,'D',Null,Null
 ------------------------------------------------------------------------------------------------

--SELECT * FROM Orders WHERE ShipVia = 3 --ShipVia 3 olan var mi 




