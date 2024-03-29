--FUNCTON-EXAMPLE-3

--KULLANILACAK TABLOLAR Employees, Orders ,Order Details (Quantity)
--Istenilen ;
--EmployeeID degeri verilen  bir personelin ne kadar /kac adet satis yaptigini listeleyen fonksiyon sorgu :
--JOIN kullanilarak sonuclara ulasilabilir.

	CREATE FUNCTION funcSiparisHesapla
	(
	--Parametre 
	@EmpID int  --Gelecek olan kisinin ID 
	)

	Returns int 
	AS
	BEGIN


	DECLARE @adet int 


	SELECT  @adet = SUM(OD.Quantity)

	FROM  Employees Emps
	INNER JOIN ORDERS O ON Emps.EmployeeID = O.EmployeeID
	INNER JOIN [Order Details] OD ON O.OrderID = OD.OrderID

	WHERE Emps.EmployeeID = @EmpID
	GROUP BY EMPS.EmployeeID


	RETURN  @adet
	END 
	--------------------------------------------------------------------------------------------------------------------

	--AD SOYAD HESAPLAMA 

	SELECT FirstName,LastName , dbo.funcSiparisHesapla(1) FROM Employees 


	--ID Degeri 2 olan getirme 

	SELECT FirstName,LastName , dbo.funcSiparisHesapla(2)
	FROM Employees 
	Where EmployeeID=2