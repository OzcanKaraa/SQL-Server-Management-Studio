-- while

-- 1 den 10 a Toplami  ortalama 

ALTER  PROCEDURE spCounter

AS

DECLARE @Toplam INT = 0


DECLARE @Counter INT = 1

WHILE @Counter <= 10
	
BEGIN

PRINT @Counter

SET  @Toplam = @Toplam + @Counter

SET  @Counter = @Counter + 1 

END 

PRINT 'TOPLAM = ' + CONVERT(nvarchar(20), @Toplam)

