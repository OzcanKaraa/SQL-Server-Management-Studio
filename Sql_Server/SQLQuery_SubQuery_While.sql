-- while

-- 1 den 10 a  kadar sayilari yazdirma

CREATE PROCEDURE spCounter
AS
DECLARE @Counter INT = 1

WHILE @Counter <= 10
	
BEGIN

PRINT @Counter
SET  @Counter = @Counter + 1 

END 