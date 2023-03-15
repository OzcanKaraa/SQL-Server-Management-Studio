--If NOT Exits

IF NOT  EXISTS (SELECT * FROM Suppliers WHERE Country='USA')

BEGIN  --Eger kritere uygun kayit varsa uygun mesaj ver

PRINT 'ABD `de  yerlesik sirketler var'

END

ELSE  -- Yoksa baska bir mesaj ver.

BEGIN

PRINT 'ABD `de hic tedarikci yok.'

END 