CREATE TRIGGER [dbo].[trigUpdateStockQuantity]
ON [dbo].[Order Details]
AFTER INSERT
AS
BEGIN
-- Order Details tablosu üzerine bir kayıt yazılma durumu geldiğinde
-- çalışacak program satırları...

    DECLARE @ProductID int, @Quantity smallint

    -- temporary(geçici)  tablodan yani buradki örnekte - inserted- ilgili alanları okuyorum/öğreniyorum.(ProductID,Quantity)
    SELECT @ProductID=ProductID,@Quantity=Quantity FROM inserted

    -- Güncelleme öncesi Products tablosundaki UnitsInStock değerini oku
    SELECT ProductID,ProductName,UnitsInStock FROM Products WHERE ProductID=@ProductID

    -- Tabloyu yeni değerle Update etme
    UPDATE Products
    SET UnitsInStock=UnitsInStock - @Quantity -- Şu an @Quantity satılan adedi tutuyor
    WHERE ProductID=@ProductID

    -- Güncellemeden sonra oluşan yeni değeri oku
    SELECT ProductID,ProductName,UnitsInStock FROM Products WHERE ProductID=@ProductID -- Şu anki Productımın en son stok durumunu göster
END;