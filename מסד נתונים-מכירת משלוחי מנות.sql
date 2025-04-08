--מסד נתונים מכירת משלוחי מנות-DDL
--(יש שינויים משמעותיים למטה)
create Database sale_MishlouchManot
go
create table TypeStyle
(
StyleId int identity(1,1) primary key,
StyleName nvarchar(15) not null,
CustId int not null,
StyleCost float not null,
StylePrice float not null,
constraint chek_StyleProfit check(StyleCost<StylePrice),
)
go
create table Customers
(
CustId int identity(1,1) primary key,
FirstName nvarchar(15),
LastName nvarchar(15) not null,
CustAddress  nvarchar(15)  not null,
CustPhone nvarchar(15) unique  not null,
CustEmail nvarchar(15) unique not null,
)
go
create table Prodects 
(
ProdId int identity(100,1) primary key,
ProdName nvarchar(15)  not null,
ColorId int  not null,
ProdCost float  not null,
ProdPrice float  not null,
CountStock int  not null,
constraint chek_ProdProfit check(ProdCost<ProdPrice),
)
go
create table Orders 
(
orderId int identity(1,1)  primary key,
Color nvarchar(15)  not null,
Count_MM int  not null,
StyleId int foreign key references [TypeStyle]  not null,
CustId int foreign key references [Customers]  not null,
Shipment bit default(1), 
ShipmentAddress nvarchar(15), 
ShipmentDate date  not null,
OrderDate date ,
constraint chek_shipmentDate check(ShipmentDate<OrderDate)
)
go
create table ProdOrder 
(
orderId int  foreign key references [Orders]  not null,
ProdId int  foreign key references [Prodects] not null,
CountProd int default(1),
)
go
--שינויים במסד הנתונים
alter table [dbo].[ProdOrder]
add
ProdOrderId int identity(111,111)  primary key
alter table [dbo].[Prodects]
drop column [ColorId]
alter table [dbo].[TypeStyle]
drop column [CustId]
alter table [dbo].[Customers]
alter column [CustEmail] nvarchar(25) null
alter table [dbo].[Orders]
alter column[OrderDate] date not null
alter table [dbo].[Orders]
alter column  [ShipmentDate] date null
alter table [dbo].[Orders]
drop constraint chek_shipmentDate
alter table [dbo].[Orders]
add constraint chek_shipmentDate check(ShipmentDate>OrderDate)

