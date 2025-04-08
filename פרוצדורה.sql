--procedure
--פרוצודורה המקבלת קוד לקוח
--ומוסיפה לו במתנה פרלין שוקולד להזמנה האחרונה שלו 
alter procedure addGift
@CustId int
as
begin
declare @orderId int
select top 1  @orderId=[orderId]
from [dbo].[Orders] 
where @CustId=[CustId]
order by [OrderDate]desc
if exists(select [ProdId]
from [dbo].[ProdOrder]
where [ProdId]=103 and [orderId]=@orderId)
begin
update [dbo].[ProdOrder]
set[CountProd]=[CountProd]+1
where [ProdId]=103  and [orderId]=@orderId
end
else
begin
insert [dbo].[ProdOrder]
values(@orderId,103,1)
end
end
--הפעלת הפרוצודורה
exec [dbo].[addGift]3
exec [dbo].[addGift]2
--פרוצודורה המקבלת מספר אחוזים
--וכל מוצר מוצר שמחירו נמוך מהממוצע של המחירים 
--היא תוסיף למחירו את מספר האחוזים
--בנוסף הפרוצדורה תחזיר כמה מוצרים התעדכנו
create procedure avgPrice
@number int
as
begin
declare @avg float
select @avg=avg([ProdPrice])
from [dbo].[Prodects]
update [dbo].[Prodects]
set[ProdPrice]=[ProdPrice]+@number*[ProdPrice]/100
where [ProdPrice]<@avg
return @@rowcount
end
--הפעלת הפרוצודורה 
declare @count int
exec @count=avgPrice 50
print'מספר השינוים הוא:' + cast(@count as nvarchar(20))
