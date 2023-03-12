--1. "Categories" tablosundan CategoryName alanına göre artan sırada olacak şekilde CategoryName ve Description bilgilerini veren sorguyu oluşturunuz.

--2. "Customers" tablosundan CompanyName,ContactName,KişiAdı, ŞirketAdı,ContactTitle ve Phone bilgilerini Phone bilgisine göre artan sırada olacak şekilde gösteren sorguyu oluşturunuz.

--3. "Employees" tablosundan işe başlama tarihi ("HireDate") alanına göre azalan sırada olacak şekilde FirstName ve büyük harfli olacak LastName alanlarını arasında bir boşluk karakteri olmak üzere oluşturan sorguyu oluşturunuz.

--4. "Orders" tablosundan OrderID, OrderDate, ShippedDate, CustomerID, Freight bilgilerini Freight alanına göre azalan sırada olacak şekilde ilk 10 kayıdı gösteren sorguyu oluşturunuz.

--5. "Customers" tablosundan tüm "CustomerID" bilgilerini küçük harfle gösteren ve bunu "Kimlik Tnm" olarak yeniden adlandıran bir sorgu oluşturunuz.

--6. "Suppliers" tablosundan Country bilgisi azalan sırada, CompanyName artan sırada olacak şekilde CompanyName, Fax, Phone, Country bilgilerini döken bir sorgu oluşturunuz.

--7. "Customers" tablosundan yalnızca 'Buenos Aires'ten gelen tüm müşterilerin CompanyName, ContactName'lerini gösteren bir sorgu oluşturunuz.

--8. "Products" tablosundan stokta olmayan ürünlerin ProductName, UnitPrice, QuantityPerUnit bilgilerini gösteren bir sorgu oluşturunuz.

--9. Almanya, Meksika, İspanya'dan olmayan tüm müşterilerin(Customers) CompanyName,Address,City,Country bilgilerini gösteren bir sorgu oluşturunuz.

--10. 21 Mayıs 1996'da verilen tüm siparişlerin OrderDate,ShippedDate, CustomerID ve Freight bilgilerini gösteren bir sorgu oluşturunuz.

--11. Amerika Birleşik Devletleri'nden olmayan çalışanların FirstName,LastName,Country bilgilerini gösteren bir sorgu oluşturunuz.

--13. Baş harfi A veya B ile başlayan şehirlerdeki müşterilerin City, CompanyName, ContactName bilgilerini gösteren bir sorgu oluşturunuz.

--14. Navlun(Freight) maliyetinin 500 dolardan fazla olduğu tüm siparişleri(Orders) gösteren bir sorgu oluşturunuz.

--15. Faks numarası olmayan tüm müşterilerin CompanyName, ContactName bilgilerini gösteren bir sorgu oluşturunuz.

--16. Kimseye rapor vermeyen(ReportsTo alanı) çalışanların FirstName, LastName bilgilerini gösteren bir sorgu oluşturunuz.

--17. Adında L harfi olan şehirlerdeki müşterilerin City,CompanyName,ContactName bilgilerini ContactName bilgisi azalacak şekilde gösteren bir sorgu oluşturunuz.

--18. 1950'lerde doğan çalışanların(Employee tablosu) FirstName, LastName, BirthDate bilgilerini gösteren bir sorgu oluşturunuz.

--19. Exotic Liquids, Specialty Biscuits Ltd., Escargots Nouveaux tedarikçileri tarafından sağlanan tüm ürünlerin tedarikçi kimliğine göre sıralanmış olarak SupplierID, ProductName ve CompanyName bilgilerini gösteren sorgu oluşturunuz.

--20. "Seattle" şehrindeki çalışanların LastName,FirstName bilgilerini gösteren bir sorgu oluşturunuz

--21. Madrid dışında Meksika'daki herhangi bir şehirdeki veya İspanya'daki diğer şehirlerdeki tüm müşterilerin CompanyName,ContactName, City ve Country bilgilerini gösteren bir sorgu oluşturunuz.

--22. İkinci karakterinde A harfi olmayan tüm müşterilerin ContactName bilgisini azalan sırada gösteren bir sorgu oluşturunuz.

--23. Orders tablosundan Freight toplamı 200$'dan büyük olan bilgilerin CustomerID ve Freight toplamını gösteren bir sorgu oluşturunuz.(İPUCU: GroupBy ve Having deyimi kullanmanız gerekecek.)

--24. Çalışanlar tablosundan Çalışan Kimliği, çalışanın Soyadı ve Adı ve yönetici olarak rapor verdikleri kişinin Soyadı ve Adı'nı gösteren bir sorgu oluşturunuz. (İPİNUCU : Self Join)

--25. Tüm ürünlerin(Products) BirimFiyatını(UnitPrice) ortalama(AVG), minimum(MIN) ve maksimum(MAX) değerlerini OrtalamaFiyat, MinimumFiyat,MaksimumFiyat olarak gösteren bir sorgu oluşturunuz.

--26. "Categories" tablosundan CategoryName bilgisinin ilk 5 karakterini getiren(LEFT fonksiyonu) ve KısaBilgi olarak yeniden adlandırılan bir sorgu oluşturunuz.

--27. Deniz ürünleri kategorisindeki tüm ürünlerden ŞirketAdı ve ÜrünAdını listeleyen bir sorgu oluşturunuz.

--28. CategoryID'si 5 olan tüm ürünlerden CategoryID, CompanyName ve ProductName bilgilerini listeleyen bir sorgu oluşturunuz.

--29. ContactTitle alanında 'Owner' geçen müşterilerimin şirket adlarını listeleyiniz.

--30. 50$ ile 100$ arasında bulunan tüm ürünlerin adları ve fiyatlarını listeleyiniz.

--31. 1 temmuz 1996 ile 31 Aralık 1996 tarihleri arasındaki siparişlerin (Orders), SiparişID (OrderID) ve SiparişTarihi (OrderDate) bilgilerini listeleyiniz.

--32. 1997 yılına ait satışları(Orders) listeleyiniz.

--33. 1997 Ocak ayına ait Londra ve Fransaya yapılan satışları listeleyiniz.

--34. 1955-1963 yılları arasında doğmuş olan 3 Amerikalı olmayan çalışanı listeleyiniz.(Employee tablosu)

--35. 1997 yılının ilk 6 ayında Londra ya yapılan satışları listeleyiniz.

--36. 1998 yılında gönderilemeyen siparişleri görüntüleyiniz.(Orders)

--37. Deniz ürünlerinden ve stoklarda 15 ten çok olan ürünleri gösteriniz.

--38. Ülkesi (Country) Spain veya France veya Germany olan müşterileri listeleyiniz.

--39. Ülkesi (Country) Spain veya France veya Germany olmayan müşterileri listeleyiniz.

--40. Amerika’da yaşamayan çalışanları listeleyiniz.

--41. En Pahalı 5 ürünü listeleyiniz.

--42. 1996 yılının 12 ayında yapılan satışlardan nakliye(freight) ücretlerinden en pahalı 3 tanesini gösteriniz

--43. Ürünlerimi en pahalıdan en ucuza doğru sıralasın, ama stoklarını küçükten-büyüğe doğru göstersin sonuç olarak ürün adı ve fiyatını göstersin

--44. 1 Numaralı kategoride kaç ürün vardır.

--45. Kaç farklı ülkeye satış yapılmaktadır. Bunları listeleyiniz.

--46. Tüm ciro miktarı ne kadardır?

--47. Ortalama Ürün Fiyatı nedir?

--48. En pahalı ürünün adı ve fiyatı nedir?

--49. En ucuz ürünün adı ve fiyatı nedir?

--50. En az kazandıran siparişin tutarı nedir?

--51. Hangi ürün kategorisinde kaç adet ürün vardır. İsimleriyle ve adetleriyle birlikte belirtiniz.

--52. 500 adetden fazla satılan ürünler nedir?

--53. Hangi siparişi hangi müşteri vermiş?

--54. En fazla sipariş alan çalışanım kimdir?