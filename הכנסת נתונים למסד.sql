--����� ������ ���� ������-DML
insert into [dbo].[TypeStyle]
values('�����',0.3,1.5)
insert into [dbo].[TypeStyle]
values('����',6.20,9.80)
insert into [dbo].[TypeStyle]
values('������',7.30,10.5)
insert into [dbo].[TypeStyle]
values('���',5,8)
insert into [dbo].[TypeStyle]
values('�����',1,3)
insert into [dbo].[TypeStyle]
values('������',15,20)

insert into [dbo].[Customers]
values('�����','���','���� 80',02-5870477,'s477@gmail.com')
insert into [dbo].[Customers]
values('����','������','���� ��� 37',02-5353117,'yk117@gmail.com')
insert into [dbo].[Customers]
values(null,'��','���� ����� 22',02-5386533,'Tzvi@gmail.com')
insert into [dbo].[Customers]
values('����','�����','������� 1',02-58699587,'Y587@gmail.com')
insert into [dbo].[Customers]
values(null,'����','4 ������ ����',02-5866666,'Miler@gmail.com')
insert into [dbo].[Customers]
values('����','���','������� 17',02-5333333,'M333@gmail.com')

insert into [dbo].[Prodects]
values('����� ���',50,60,80)
insert into [dbo].[Prodects]
values('����� ���',5.50,8.90,65)
insert into [dbo].[Prodects]
values('���� ������',8,12,43)
insert into [dbo].[Prodects]
values('������ ������',7,10.90,121)
insert into [dbo].[Prodects]
values('����',1.50,3.80,150)
insert into [dbo].[Prodects]
values('����� �������',2,5,89)
insert into [dbo].[Prodects]
values('����',1,2.50,150)

insert into [dbo].[Orders]
values('����',10,2,3,0,'���� ����� 22','2024-02-23','2024-02-15')
insert into [dbo].[Orders]
values('����',15,5,1,1,'���� 80','2024-03-22','2024-03-07')
insert into [dbo].[Orders]
values('����',25,1,2,default,'���� ��� 37','2024-03-10','2024-02-29')
insert into [dbo].[Orders]
values('����',15,6,6,0,'������ ���� 4','2024-03-24','2024-03-12')
insert into [dbo].[Orders]
values('���',30,1,1,1,0,'���� 80','2024-03-25','2024-03-12')
insert into [dbo].[Orders]
values('���',10,6,3,1,'������� 1','2024-03-11','2024-02-29')
insert into [dbo].[Orders]
values('���',35,4,7,0,null,'2024-03-24','2024-03-12')
insert into [dbo].[Orders]
values('���',35,4,7,1,null,null,'2024-03-12')

insert into [dbo].[ProdOrder]
values(11,103,3)
insert into [dbo].[ProdOrder]
values(11,100,1)
insert into [dbo].[ProdOrder]
values(11,101,2)
insert into [dbo].[ProdOrder]
values(8,104,default)
insert into [dbo].[ProdOrder]
values(8,105,2)
insert into [dbo].[ProdOrder]
values(8,107,default)

--����� �����
delete from [dbo].[Orders]
where [orderId]=14