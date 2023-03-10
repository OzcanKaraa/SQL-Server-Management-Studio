RIGHT JOIN : Sağ tablodaki tüm satırları ve soldaki tablodaki eşleşen satırları
birleştirmek için kullanılır.

KURAL : 
SELECT column_name(s) FROM table1

RIGHT JOIN table2 ON table1.column_name = table2.column_name;


SELECT Orders.OrderID, Employees.LastName, Employees.FirstName FROM Orders

RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID

ORDER BY Orders.OrderID;


---------------------------------------------------------------------------------------------------

SELF JOIN : Bir tablonun kendisiyle birleştirilme işlemidir. Bir tablodaki aynı
değerleri içeren farklı satırları listelemek amacıyla kullanılır.
Takma isimle kullanılır.

KURAL : SELECT column_name(s) FROM table1 T1, table1 T2

WHERE condition;



SELECT

(E1.TitleOfCourtesy + E1.FirstName + ' ' + E1.LastName) AS EmpName,E1.Title,

(E2.TitleOfCourtesy + E2.FirstName + ' ' + E2.LastName) AS ReportsToWho,E2.Title

FROM Employees E1, Employees E2

WHERE E1.ReportsTo = E2.EmployeeID

ORDER BY E1.ReportsTo;

