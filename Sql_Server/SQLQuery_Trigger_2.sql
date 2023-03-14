--ORNEK : 
--Kirkland Sehrinde oturan calisaninin yeni ev adresi   Ulke Turkiye Sehir Istanbul bagdat cad.no 5 olan,
--Tablo adi : Employees 
--Trigger olarak hazirlayiniz
-- Trigger name : TrigAddresChange 
--Gorev Tanimi(Title) degistigi zaman calissin
--Title -> Turkiye CEO

CREATE TRIGGER trigUpdateEmployeesAddres --isim
ON Employees  --tablo adi
AFTER UPDATE --ne zaman istendi Update olduktan sonra çalışacak.
AS
BEGIN

    DECLARE @EmployeeID int --Degısken olusturma 

    SELECT @EmployeeID =EmployeeID  FROM inserted

   

    UPDATE Employees
    SET  Address = 'Bagdat Cad. No:5', City='Istanbul',Country = 'Turkiye' WHERE EmployeeID=@EmployeeID

	Select * from Employees --Guncellenmiş hali 
END
------------------------------------------------------------------------------------------------------------------------

Select * from Employees 
Update Employees 
SET Title = 'Turkiye CEO'
WHERE City = 'Kirkland'
--WHERE City = 'Redmond'
