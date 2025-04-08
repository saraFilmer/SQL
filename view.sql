--case+view
--���� ������� �� ����� ������ �� ����� ���� �� ����� ��� ������
alter view goodOrder
as
select [FirstName]+' '+[LastName] as 'full name', [StyleName],[Color],[Count_MM]
,[Shipment],[OrderDate],
case 
when [Shipment]=1 then cast([ShipmentDate]as nvarchar(25))+' '+[ShipmentAddress]
else '���� ������ ������'
end as'����� ������ ������'
from [dbo].[Customers]c join [dbo].[Orders]o
on c.CustId=o.CustId
join [dbo].[TypeStyle]t
on o.StyleId=t.StyleId
go
select *
from [dbo].[goodOrder]

--case
--���� ��� ���� �� ����� ���� ������ 
--���� ������� ������ ��� 0 � 5 -���� ����� ���� 2
--���� ������� ������ ��� 5 � 10 -���� ����� ���� 1.5
--���� ������� ������ ��� 10 � 20 -����� �� ����� 
--��� �� -���� ����� ���� 0.8
select [ProdName],
case 
when [ProdPrice]>0 and[ProdPrice]<5 then [ProdPrice]*2
when [ProdPrice]>=5 and[ProdPrice]<10 then [ProdPrice]*1.5
when [ProdPrice]>=10 and[ProdPrice]<20 then [ProdPrice]
else [ProdPrice]*0.8
end as 'new ProdPrice'
from [dbo].[Prodects]

