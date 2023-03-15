USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[spCityList]    Script Date: 3/14/2023 10:21:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Ornek : 
--Customers Tablosundaki Sehir bilgilerini sayisi azalacak sekilde City , Adedi seklinde  listeleyen SP sorgusu : 
-- Sehir adi , adet 

--Asagidaki PROC herhangibir parametre almamaktadir. (Static)
ALTER PROCEDURE [dbo].[spCityList]
AS 
BEGIN 

	SELECT City , COUNT(City) From Customers 
	GROUP BY City 
	ORDER BY COUNT(City) ASC


END 