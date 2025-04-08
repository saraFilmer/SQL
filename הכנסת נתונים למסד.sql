--הכנסת נתונים למסד נתונים-DML
insert into [dbo].[TypeStyle]
values('צלופן',0.3,1.5)
insert into [dbo].[TypeStyle]
values('קלקר',6.20,9.80)
insert into [dbo].[TypeStyle]
values('סלסילה',7.30,10.5)
insert into [dbo].[TypeStyle]
values('מגש',5,8)
insert into [dbo].[TypeStyle]
values('קרטון',1,3)
insert into [dbo].[TypeStyle]
values('זכוכית',15,20)

insert into [dbo].[Customers]
values('שמעון','לוי','דרוק 80',02-5870477,'s477@gmail.com')
insert into [dbo].[Customers]
values('יוסף','קצבורג','חזון איש 37',02-5353117,'yk117@gmail.com')
insert into [dbo].[Customers]
values(null,'כץ','ברכת אברהם 22',02-5386533,'Tzvi@gmail.com')
insert into [dbo].[Customers]
values('יצחק','שטיין','סדיגורא 1',02-58699587,'Y587@gmail.com')
insert into [dbo].[Customers]
values(null,'מילר','4 קהילות יעקב',02-5866666,'Miler@gmail.com')
insert into [dbo].[Customers]
values('מאיר','כהן','סדיגורא 17',02-5333333,'M333@gmail.com')

insert into [dbo].[Prodects]
values('בקבוק יין',50,60,80)
insert into [dbo].[Prodects]
values('אוזני המן',5.50,8.90,65)
insert into [dbo].[Prodects]
values('ליקר שוקולד',8,12,43)
insert into [dbo].[Prodects]
values('פרליני שוקולד',7,10.90,121)
insert into [dbo].[Prodects]
values('ציפס',1.50,3.80,150)
insert into [dbo].[Prodects]
values('חבילת סוכריות',2,5,89)
insert into [dbo].[Prodects]
values('פחית',1,2.50,150)

insert into [dbo].[Orders]
values('ירוק',10,2,3,0,'ברכת אברהם 22','2024-02-23','2024-02-15')
insert into [dbo].[Orders]
values('אדום',15,5,1,1,'דרוק 80','2024-03-22','2024-03-07')
insert into [dbo].[Orders]
values('צהוב',25,1,2,default,'חזון איש 37','2024-03-10','2024-02-29')
insert into [dbo].[Orders]
values('כחול',15,6,6,0,'קהילות יעקב 4','2024-03-24','2024-03-12')
insert into [dbo].[Orders]
values('זהב',30,1,1,1,0,'דרוק 80','2024-03-25','2024-03-12')
insert into [dbo].[Orders]
values('כסף',10,6,3,1,'סדיגורא 1','2024-03-11','2024-02-29')
insert into [dbo].[Orders]
values('חום',35,4,7,0,null,'2024-03-24','2024-03-12')
insert into [dbo].[Orders]
values('חום',35,4,7,1,null,null,'2024-03-12')

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

--מחיקת רשומה
delete from [dbo].[Orders]
where [orderId]=14