--cursor
--סמן העובר על כל הלקוחות שבהזמנה שלו הזמין מעל 25 משלוחי מנות
-- (ונותן ללקוח זה כמתנה עוד פרלין שוקולד-(עי הזמנת פרוצודורה
declare @custId int 
declare crs cursor for select c.[CustId] 
from [dbo].[Customers]c
join [dbo].[Orders]o
on c.CustId=o.CustId
where [Count_MM]>25
open crs
fetch next from crs into  @custId
while @@FETCH_STATUS=0
begin 
exec  [dbo].[addGift]@custId
fetch next from crs into  @custId
end
close crs
deallocate crs
