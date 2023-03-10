AND KULLANIMI :

SELECT col1, col2, ... FROM table_name

WHERE condition1 AND condition2 AND condition3 ...

SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München’);

SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';

---------------------------------------------------------------------------------------------------------------------
OR KULLANIMI : 

SELECT col1, col2, ... FROM table_name

WHERE condition1 OR condition2 OR condition3 ...;



SELECT * FROM Customers WHERE City='Berlin' OR City='München';

SELECT * FROM Customers WHERE Country='Germany' OR Country='Spain';

-----------------------------------------------------------------------------------------------------------------------------
NOT KULLANIMI : 

SELECT col1, col2, ... FROM table_name

WHERE NOT condition1;


SELECT * FROM Customers WHERE NOT Country='Germany’;

SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';