Create function funcSatisHesapla(@employeeId int)

Returns int
As Begin

Declare @SatisMiktari int
Select @SatisMiktari=Sum(od.Quantity) from  Employees Emps  
inner join Orders o on Emps.EmployeeID=o.EmployeeID   
inner join [Order Details] od on o.OrderID=od.OrderID  
where Emps.EmployeeID=@employeeId group by Emps.EmployeeID

return @SatisMiktari
end


