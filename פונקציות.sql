--functions
-- פונקציה המחשבת רווח יומי למכירה  
alter function f_profit(@date date)
returns float
as
begin
declare @profit float
select @profit=sum((([CountProd]*[ProdPrice]+[StylePrice])*[Count_MM])
-(([CountProd]*[ProdCost]+[StyleCost])*[Count_MM]))
from [dbo].[TypeStyle]s join [dbo].[Orders]o
on s.StyleId=o.StyleId
join [dbo].[ProdOrder]po 
on o.orderId=po.orderId
join [dbo].[Prodects]p 
on p.ProdId=po.ProdId
where [OrderDate]=@date
return @profit
end
--הפעלת הפונקציה
print  [dbo].[f_profit]('2024-03-07')
--פונקציה המקבלת רחוב ומחזירה טבלה 
-- של כל הלקוחות הגרים בשכונה זו ומספר טלפון ומייל  
create function f_custAddress
(@address nvarchar(20))
returns table
as
return(select [FirstName]+' '+[LastName] as 'full name',[CustPhone],[CustEmail]
from [dbo].[Customers]
where CHARINDEX(@address,[CustAddress])!=0)
select *
from [dbo].[f_custAddress]('סדיגורא')