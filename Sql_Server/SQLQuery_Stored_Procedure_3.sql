--Daily-Workout

-- Siparis Tablosundan 'ALFKI'
--Urun Kodu 10-50 

-- FREIGHT

--Orders tablosunda kayitlardan hareketle,Herbir kayit icin Urun Kodu (ProductID) 10-50 numarali urunlerin Navlun(Freight) Fiyatlarina %10 zam  gelmistir.
--Buna gore Orders tablosunu ilgili yeni degerlere gore guncelleyen SP yi sorgusu : 


-- Ipucu 1 : Siparis Bilgisine ait ProuctID bilgisi nerededir?
-- Ipucu 2 : Herbir kayit icin ifadesi ne gibi yapi olusturmustur.CURSOR 
-- NOT : Zam islemi gerceklesen ORDERS satiri icin bir daha yine zam islemine tabi olmamasi icin ORDERS Tablosuna bir adet kolon eklenebilir.
--Mesela 'Zam Kontrolu' char(1) burada bir deger varsa mesela X gibi ... demek ki satir islemler gecmistir.

Create Procedure spOrdersRaise1
as begin
Select * From Orders o Inner join [Order Details] op on op.OrderID=o.OrderID where op.ProductID between 10 and 50 -- İlk Hali
declare @ProductID int,@Freight money,@ProductName nvarchar(30),@OrderID int
declare curOrders CURSOR
For
Select op.ProductID,o.OrderID,o.Freight From Orders o 
Inner join [Order Details] op on op.OrderID=o.OrderID
where op.ProductID between 10 and 50
Open curOrders

FETCH NEXT FROM curOrders INTO @ProductID,@OrderID,@Freight
-- işlemler
-- aldığım prodid aralıktamı
WHILE @@FETCH_STATUS=0
BEGIN
set @Freight=@Freight*1.10
Update Orders set Freight=@Freight where OrderID=@OrderID
FETCH NEXT FROM curOrders INTO @ProductID,@Freight,@OrderID
end
Close curOrders
DeAllocate curOrders
Select * From Orders o Inner join [Order Details] op on op.OrderID=o.OrderID where op.ProductID between 10 and 50 -- Son Hali
end
-----------------------------------------------------------------------------------------------------------------------