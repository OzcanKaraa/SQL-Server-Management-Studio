-- Ornek : 
--Customers Tablosundaki Sehir bilgilerini sayisi azalacak sekilde City , Adedi seklinde  listeleyen SP sorgusu : 
-- Sehir adi , adet 

--Asagidaki PROC herhangibir parametre almamaktadir. (Static)
CREATE PROCEDURE spCityList
AS 
BEGIN 

	SELECT City , COUNT(City) From Customers 
	GROUP BY City 
	ORDER BY COUNT(City) DESC 


END 