--case+view
--טבלה המחזירה את נתוני ההזמנה של הלקוח כולל שם הלקוח ושם העיצוב
alter view goodOrder
as
select [FirstName]+' '+[LastName] as 'full name', [StyleName],[Color],[Count_MM]
,[Shipment],[OrderDate],
case 
when [Shipment]=1 then cast([ShipmentDate]as nvarchar(25))+' '+[ShipmentAddress]
else 'אינו מעונין במשלוח'
end as'כתובת ותאריך המשלוח'
from [dbo].[Customers]c join [dbo].[Orders]o
on c.CustId=o.CustId
join [dbo].[TypeStyle]t
on o.StyleId=t.StyleId
go
select *
from [dbo].[goodOrder]

--case
--הצגה לכל מוצר את מחירו החדש שיחושב 
--עבור המוצרים שמחירם בין 0 ל 5 -יהיה המחיר כפול 2
--עבור המוצרים שמחירם בין 5 ל 10 -יהיה המחיר כפול 1.5
--עבור המוצרים שמחירם בין 10 ל 20 -המחיר לא ישתנה 
--מעל זה -יהיה המחיר כפול 0.8
select [ProdName],
case 
when [ProdPrice]>0 and[ProdPrice]<5 then [ProdPrice]*2
when [ProdPrice]>=5 and[ProdPrice]<10 then [ProdPrice]*1.5
when [ProdPrice]>=10 and[ProdPrice]<20 then [ProdPrice]
else [ProdPrice]*0.8
end as 'new ProdPrice'
from [dbo].[Prodects]

