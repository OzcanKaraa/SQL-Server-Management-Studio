LIKE :

	LIKE operatörü, bir sütunda belirtilen bir kalıpda olan değerleri aramak için bir WHERE yan
tümcesinde kullanılır. LIKE operatörüyle birlikte sıklıkla kullanılan iki joker karakter vardır:
Yüzde işareti (%) sıfır, bir veya birden çok karakteri temsil eder Alt çizgi işareti (_) tek bir
karakteri temsil eder.

KURAL: 

SELECT col1, col2, ...

FROM table_name

WHERE colN LIKE pattern;

----------------------------------------------------------------------------------------------------------------
SELECT * FROM Customers WHERE CompanyName LIKE 'a%’ –> "a" ile başlayan değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE '%a’ –> "a" ile biten değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE '%or%’ –> Herhangi bir pozisyonda “or" olan herhangi bir değeri bulur

SELECT * FROM Customers WHERE CompanyName LIKE '_r%’ –> İkinci konumda "r" olan tüm değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE 'a_%’ –> "a" ile başlayan ve en az 2 karakter uzunluğundaki değerleri bulur

SELECT * FROM Customers WHERE CompanyName LIKE 'a__%’ –> "a" ile başlayan ve en az 3 karakter uzunluğundaki değerleri bulur

SELECT * FROM Customers WHERE ContactName LIKE 'a%o’ -> "a" ile başlayan ve "o" ile biten tüm değerleri bulur