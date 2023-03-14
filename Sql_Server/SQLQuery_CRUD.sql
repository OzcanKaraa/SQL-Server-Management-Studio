--INSERT : İlgili tabloya Veri Eklemek için kullanılır.

KURAL :  INSERT INTO table_name  VALUES (val1, val2, val3, ...);

 INSERT INTO Customers (CustomerID,CompanyName,ContactName) VALUES ('BNABI','BaBi','Ozcan Kara')  
 INSERT INTO Customers (CustomerID,CompanyName,ContactName,City) VALUES  ('GETIR','Getir','Ozcan Kara','Istanbul') 

 ----------------------------------------------------------------------------------------------------------------------------------------------------
 --UPDATE : İlgili tablodaki verileri koşullar dahilinde güncellemek için kullanılır.
 -- Alter ise VERI UZERINDE DEGISIKLIKLER GUNCELLEME

 KURAL :  UPDATE table_name  SET col1 = val1, col2 = val2, ...  WHERE condition

 --Sadece Customer ID Alani ALFKI olan kayit/ kayitlarin City bilgisini guncellestirme kayitlari gostermeleri
 UPDATE Customers  
 SET City='Frankurt',PostalCode='123' 
 WHERE CustomerID='ALFKI'

 ---- Yeni fiyatlara gore guncelleme
 UPDATE Products set UnitPrice=UnitPrice + 15 WHERE UnitPrice <= 100 

 UPDATE Products set UnitPrice=UnitPrice / 15 WHERE UnitPrice <= 100

------------------------------------------------------------------------------------------------------------------------------------------------------
--DELETE : İlgili tablodaki verileri koşullar dahilinde silmek için kullanılır.

KURAL :  DELETE FROM table_name WHERE condition;

 DELETE FROM Customers  WHERE  CustomerID='GETIR'
 DELETE FROM Customers  WHERE City ='Istanbul'
 DELETE FROM Products_New2 WHERE SupplierID=1
-------------------------------------------------------------------------------------------------------------------------------------------------
CREATE : OLUSTURMAK

CREATE DATABASE University;
CREATE TABLE Students (COLUMN_NAME DATATYPES[,....]);
CREATE VIEW for_Students;
-------------------------------------------------------------------------------------------------------------------------------------------------------
--Hesap Makinesi ISLEMLERI 

 select 50*90/100  
 ------------------------------------------------------------------------------------------------------------------------------------------
-- VERİ TÜRLERİ :

Metinsel  : char(n), nchar(n), varchar(n), nvarchar(n), text, ntext

Sayısal : bit, int, tinyint, smallint, bigint, decimal/numeric, float, real

Tarih / Zaman :  date, smalldatetime, datetime, datetime2, time, datetimeoffset

Parasal : money, smallmoney 

Binary :  binary(n), varbinary(n), image (Resim img için kullanılır)

Diğer :    sql_variant, timestamp, uniqueidentifier, xml, geography, geometry





