--Degeri (EmployeeID) verilmiş olan çalışanın hizmet verdiği bölge tanımını getiren fonksiyon sorgu  

-- Çalışanın ;  ID ,FirstName,LastName,region name(bölge adı)
-- Kullanım: Select functBolgeSoyle(5)

-- Çıkış : Ad/Soyad/Kuzey Bolgesi

	CREATE FUNCTION funcBolgeSoyle
(
	--Parametre 
	@EmpID int 
)

	Returns nvarchar(20)
	AS
	BEGIN  --Event 


		DECLARE @BolgeAd  nvarchar(20)


		SELECT   @BolgeAd = R.RegionDescription   FROM Employees Emps 
		INNER JOIN  EmployeeTerritories ET ON ET.EmployeeID=Emps.EmployeeID
		INNER JOIN Territories T ON T.TerritoryID = ET.TerritoryID
		INNER JOIN Region R ON R.RegionID = T.RegionID

		WHERE EMPS.EmployeeID =  @EmpID

	RETURN   @BolgeAd
	END 

-------------------------------------------------------------------------------------------------------------------------

SELECT FirstName,LastName,dbo.funcBolgeSoyle(2) AS 'BOLGE  ' FROM Employees 
WHERE EmployeeID = 2