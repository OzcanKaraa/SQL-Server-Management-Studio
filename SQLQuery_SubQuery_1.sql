-- Northwnd vt ortalama fiyati altinda fiyata sahip urunlerin adi-fiyati sorgusu

-- SELECT * FROM  Employees WHERE First_Name IN ('Micheal','Laura')


SELECT * FROM  Employees 
Where
 City IN (SELECT City FROM Employees WHERE FirstName IN ('Micheal','Laura'))
--City IN ('Seattle','London')

-------------------------------------------------------------------------------------------------------------------------