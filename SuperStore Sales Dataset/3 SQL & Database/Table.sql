create table DIMCustomer 
(
   customerID int identity(1,1) primary key ,
   customerName varchar(35) not null,
   Segment varchar(40) not null
)
create table DIMlocation 
(
   LocationID int identity(1,1) primary key ,
   Region varchar(25) not null ,
   Market varchar(25) not null,
   Country varchar(70) not null,
   State varchar(100) not null
)
create table DIMproduct 
(
   productID varchar(70) primary key ,
   productName varchar(250) not null,
   category varchar(40) not null ,
   Sub_Category varchar(40) not null,
)
create table DIMData 
(
   orderDate Date primary key ,
   Quarter int,
   Month int
)
create table FOrder
(
   orderID varchar(35) primary key,
   OrderDate Date not null,
   orderPriority varchar(20)not null,
   ShipMode varchar(25) not null,
   ShipDate Date not null,
   customerID int not null,
   LocationID int not null,
   productID varchar(70) not null,
   Sales float not null ,
   Quantity int not null ,
   Discount float not null,
   profit float not null,
   shippingCost float not null,
   constraint FkOrder foreign key(OrderDate) references DIMData(OrderDate),
   constraint FkCus foreign key (customerID) references DIMcustomer(customerID),
   constraint Fkproduct foreign key (productID) references DIMproduct(productID),
   constraint Fklocation foreign key (LocationID) references DIMlocation(LocationID)
)