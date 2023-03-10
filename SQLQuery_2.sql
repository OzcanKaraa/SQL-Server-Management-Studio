SELECT INTO : Verileri bir tablodan yeni bir tabloya kopyalama için kullanılır.

KURAL:  SELECT * INTO newtable FROM oldtable WHERE condition;

SELECT * INTO Customers_New FROM Customers;

SELECT CustomerName, ContactName INTO Customers_New2 FROM Customers;

SELECT * INTO CustomersGermany FROM Customers WHERE Country = 'Germany’;

SELECT * INTO newtable FROM oldtable WHERE 1 = 0 --FALSE

-----------------------------------------------------------------------------------------------------------------
GROUP BY  : 

  GROUP BY ifadesi, aynı değerlere sahip satırları özet satırlarda gruplandırır. (Örneğin
 "her ülkedeki müşteri sayısını bul" gibi). Sonuç kümesini bir veya daha fazla sütunla
 gruplandırmak için genellikle toplama işlevleriyle (COUNT(), MAX(), MIN(), SUM(),
 AVG()) kullanılır.

 KURAL : SELECT colname(s) FROM table_name

		WHERE condition

		GROUP BY colname(s)

		ORDER BY colname(s)



SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country

SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC
