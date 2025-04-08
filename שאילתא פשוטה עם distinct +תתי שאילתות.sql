--+ �� ������ ������� ��� ����
--from-�� ������ �
--���� ���� ������� �� ������� ���� ��������
--���� ������� ������ ���� ����� ������� -
select [orderId]
from [dbo].[ProdOrder] 
group by [orderId]
having count(*)>
(select avg(c)
from(select count(*) as c
from [dbo].[ProdOrder]
group by [orderId])nt)
-- Row_number + from-�� ������ �
--������ ������ ��� ��� ����� �� 2 ������� ������ ����� ������ ��
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
--�� ������ ������� ����� ����� ��� ����� ���
--���� ���� ������� ��� ������ ���
select [ProdName]
from [dbo].[Prodects]
where [ProdId] not in 
(select [ProdId]
from [dbo].[ProdOrder])
--select-������ ������-�� ������ �
--��� ��� ���� �� ���� ������� �����
select *,
(select count(*)
from [dbo].[Orders]
where [CustId]=c.[CustId])as '���� ������'
from [dbo].[Customers]c
--DML+ ������ ������ 
-- ����� �� ������� ����� ������ ��� ����� ������  
delete from [dbo].[Customers]
where [CustId] in
(select [CustId]
from [dbo].[Customers]
except
select [CustId]
from [dbo].[Orders])

--distinct
-- ���� ������ ������� ��� ����� ��� ����� 
select distinct [ShipmentAddress]
from [dbo].[Orders]



