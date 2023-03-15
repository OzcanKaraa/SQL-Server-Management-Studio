-- Siparis Tablosundan 'ALFKI'
--Urun Kodu 10-50 

-- FREIGHT

--Orders tablosunda kayitlardan hareketle,Urun Kodu (ProductID) 10-50 numarali urunlerin Navlun(Freight) Fiyatlarina %10 zam  gelmistir.
--Buna gore Orders tablosunu ilgili yeni degerlere gore guncelleyen SP yi sorgusu : 

Select * from Orders WHERE CustomerID='ALFKI'  