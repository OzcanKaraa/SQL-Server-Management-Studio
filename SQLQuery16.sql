UNION : 

      UNION operatörü, iki veya daha fazla SELECT ifadesinin sonuç kümesini birleştirmek için
kullanılır. Bazı sert kısıtları vardır

* UNION içindeki her SELECT deyimi aynı sayıda sütuna sahip olmalıdır.

* Sütunlar da benzer veri türlerine sahip olmalıdır.

* Her SELECT ifadesindeki sütunlar da aynı sırada olmalıdır.

Not : UNION operatörü, varsayılan olarak yalnızca farklı değerleri seçer. Yinelenen
değerlere izin vermek için UNION ALL kullanın:


KURAL 1 : 

SELECT colname(s) FROM table1

UNION

SELECT colname(s) FROM table2;


KURAL 2 : 

SELECT colname(s) FROM table1

UNION ALL

SELECT colname(s) FROM table2;

---------------------------------------------------------------------------------------------------------------------------------------------
SELECT City FROM Customers

UNION

SELECT City FROM Suppliers

ORDER BY City;

---------------------------------------------------------------------------------------------------------------------------------------------


SELECT City FROM Customers

UNION ALL

SELECT City FROM Suppliers

ORDER BY City;

---------------------------------------------------------------------------------------------------------------------------------------------

SELECT 'Customer' AS Type, ContactName, City, Country

FROM Customers

UNION

SELECT 'Supplier', ContactName, City, Country

FROM Suppliers;

---------------------------------------------------------------------------------------------------------------------------------------------

