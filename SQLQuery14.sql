BETWEEN : 

BETWEEN operatörü, belirli bir aralıktaki değerleri seçer. Değerler sayı, metin veya tarih
olabilir. BETWEEN operatörü kapsayıcıdır: başlangıç ve bitiş değerleri dahildir.

----------------------------------------------------------------------------------------------------------------
KURAL:
SELECT colname(s) FROM table_name

WHERE colname BETWEEN val1 AND val2
----------------------------------------------------------------------------------------------------------------------
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;
----------------------------------------------------------------------------------------------------------------
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;

----------------------------------------------------------------------------------------------------------------
SELECT * FROM Products WHERE ProductName

BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni’ ORDER BY ProductName;

----------------------------------------------------------------------------------------------------------------
SELECT * FROM Products WHERE ProductName

BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning“ ORDER BY ProductName;
----------------------------------------------------------------------------------------------------------------

SELECT * FROM Products

WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'

ORDER BY ProductName;
----------------------------------------------------------------------------------------------------------------

SELECT * FROM Orders

WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;
----------------------------------------------------------------------------------------------------------------

SELECT * FROM Orders

WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
----------------------------------------------------------------------------------------------------------------