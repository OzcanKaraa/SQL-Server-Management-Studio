-- 1 Numarali kaydin bilgilerini (CompanyName,Phone ) Güncelleme işlemi 
--EXEC dbo.spShippersCRUD 1,'U','Yurtiçi Kargo ','0216 1234567'

-----------------------------------------------------------------------------------------
-- 1 Numarali kaydin bilgilerini (CompanyName,Phone ) Okuma işlemi
-- EXEC dbo.spShippersCRUD 1,'R',null,null

--------------------------------------------------------------------------------------------
-- 3 Numarali kaydin bilgilerini (CompanyName,Phone ) Silme işlemi
-- EXEC dbo.spShippersCRUD 3,'D',Null,Null

----------------------------------------------------------------------------------------------

-- 1 Numarali kaydin bilgilerini (CompanyName,Phone ) Yeni Olusturma işlemi 
-- EXEC dbo.spShippersCRUD 0,'C','ARAS Kargo ','02165365478'

---------------------------------------------------------------------------------------------------
-- 3 Numarali kaydin bilgilerini (CompanyName,Phone ) Silme işlemi
 EXEC dbo.spShippersCRUD 4,'D',Null,Null


--SELECT * FROM Orders WHERE ShipVia = 3 --ShipVia 3 olan var mi 