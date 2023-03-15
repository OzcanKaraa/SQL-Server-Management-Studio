-- Ürün ortalama fiyatının altında fiyata sahip ürünlerin adı - fiyatını listeleyen sorgu : 

--SELECT ProductName,UnitPrice FROM Products 
--WHERE  
-- UnitPrice < (Select AVG(UnitPrice) FROM Products)


--------------------------------------------------------------------------------------------------

--Freight 

-- Select * from Orders Where Fre    ight >= 50

Select * from Orders Where Freight between 10 and 50 order by Freight desc

