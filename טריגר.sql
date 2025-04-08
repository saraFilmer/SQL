--trigger
--טריגר הבודק אם כמות המוצר אפשרית
--(אם יש במלאי כמות שווה או גדולה מכמות זו)
--אם כן יש לעדכן את הכמות במלאי שירד ממנה הכמות 
--ואם לא בטל את פעולה זו
alter trigger t_countPO
on [dbo].[ProdOrder]
for insert 
as
begin 
declare @countPO int,@AllCount int,@prodId int,@CountMM int,@orderId int
select @countPO=[CountProd],@prodId=[ProdId],@orderId=[orderId]
from inserted
select @AllCount=[CountStock]
from [dbo].[Prodects]
where [ProdId]=@prodId
select @CountMM= [Count_MM]
from [dbo].[Orders]
where [orderId]= @orderId 
if(@AllCount<(@countPO*@CountMM))
begin
print 'אין מספיק במלאי ממוצר זה'
rollback transaction
end
else
update [dbo].[Prodects]
set [CountStock]=[CountStock]-@countPO*@CountMM 
where [ProdId]=@prodId
end
--הפעלת הטריגר
insert into [dbo].[ProdOrder]
values(12,100,1)
--טריגר המחליף שאין משלוח אם לא הכניסו את הפרטים הנדרשים למשלוח 
create trigger t_ShipMentFalse
on [dbo].[Orders]
for insert 
as
begin 
declare @Address nvarchar(20),@ShipmentDate date,@orderId int
select @Address=[ShipmentAddress],@ShipmentDate=[ShipmentDate],@orderId=[orderId]
from inserted 
if(@Address is null and @ShipmentDate is null )
begin
print 'לא ניתן לבצע משלוח בלי פרטי משלוח'
update [dbo].[Orders]
set [Shipment]=0
where @orderId=[orderId]
end
end