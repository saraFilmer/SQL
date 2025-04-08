--+ תת שאילתא המחזירה ערך בודד
--from-תת שאילתא ב
--הצגת קודי ההזמנות של המשלוחי מנות המושקעים
--כמות המוצרים במשלוח מנות גדולה מהממוצע -
select [orderId]
from [dbo].[ProdOrder] 
group by [orderId]
having count(*)>
(select avg(c)
from(select count(*) as c
from [dbo].[ProdOrder]
group by [orderId])nt)
-- Row_number + from-תת שאילתא ב
--שאילתא המציגה לכל קוד הזמנה את 2 המוצרים היקרים ביותר בהזמנה זו
select o.[orderId], [ProdName],[ProdPrice],[FirstName]+' '+[LastName] as'CustName'
from [dbo].[Customers]c join [dbo].[Orders]o
on c.CustId=o.CustId
join 
(select [ProdName], po.[ProdId],[orderId],[ProdPrice],
ROW_NUMBER()over(partition by [orderId] order by[ProdPrice] desc )as rn
from [dbo].[ProdOrder]po join [dbo].[Prodects]p
on p.ProdId=po.ProdId
 )NT
 on o.orderId=NT.orderId
where rn<3
--תת שאילתא המחזירה קבוצת ערכים תחת עמודה אחת
--הצגת שמות המוצרים שלא הזמינו מהם
select [ProdName]
from [dbo].[Prodects]
where [ProdId] not in 
(select [ProdId]
from [dbo].[ProdOrder])
--select-שאילתא מתואמת-תת שאילתא ב
--הצג לכל לקוח את כמות ההזמנות שביצע
select *,
(select count(*)
from [dbo].[Orders]
where [CustId]=c.[CustId])as 'כמות הזמנות'
from [dbo].[Customers]c
--DML+ שאילתא מורכבת 
-- מחיקת כל הלקוחות מטבלת לקוחות שלא ביצעו הזמנות  
delete from [dbo].[Customers]
where [CustId] in
(select [CustId]
from [dbo].[Customers]
except
select [CustId]
from [dbo].[Orders])

--distinct
-- הצגת כתובות הרחובות שיש להביא להם משלוח 
select distinct [ShipmentAddress]
from [dbo].[Orders]



