--CONCAT : Parametre olarak aldığı string değerlerini birleştirir.

SELECT CONCAT('BEN','Bugunun tarihi ' , '09.03.2023',' 9 MART ...')

SELECT CONCAT('OZCAN',' KARA ' )

------------------------------------------------------------------------------------------------------------------------------------
 CASE () : 	CASE deyimi koşullardan geçer ve ilk koşul karşılandığında (if-then-else deyimi gibi) bir değer
	döndürür. Bu nedenle, bir koşul doğru olduğunda, okumayı durduracak ve sonucu döndürecektir.
	Hiçbir koşul doğru değilse, ELSE yan tümcesindeki değeri döndürür.


	SELECT OrderID, Quantity,
	CASE
	WHEN Quantity > 30 THEN 'The quantity is greater than 30'
	WHEN Quantity = 30 THEN 'The quantity is 30'
	ELSE 'The quantity is under 30'
	END AS QuantityText
	FROM [Order Details];
------------------------------------------------------------------------------------------------------------------------------------
