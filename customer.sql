drop table customers;
drop table products;
drop table orders01;

create table customers(
customerid int primary key,
firstname varchar(40),
lastname varchar(50),
email varchar(50),
phone varchar(20),
address varchar(150),
city varchar(60),
state varchar(50),
zipcode varchar(40)
);

create table orders01(
orderid int primary key,
customerid int,
orderdate date,
totalamount decimal(10,2),
foreign key(customerid) references customers(customerid)
);

create table products(
productid int primary key,
productname varchar(40),
price decimal(10,2),
stock int
);

INSERT INTO customers (customerid,firstname,lastname,email,phone,address,city,state,zipcode)
values
(1,"john","doe","doe@gmail.com","1234567891","123 elm street","new york","ny","10001"),
(2,"jane","smith","smith@gmail.com","2345678901","456 oak avenue","los angeles","ca","90001"),
(3,"michael","johnson","michael@gmail.com","5678910112","789 pine road","chicago","il","60601");

insert into orders01 (orderid,customerid,orderdate,totalamount)
values
(101,1,"2024-10-01",250.50),
(102,2,"2024-10-05",150.75),
(103,1,"2024-10-07",300.00),
(104,3,"2024-10-09",175.00);

insert into products (productid,productname,price,stock)
values
(201,"laptop",1200.00,20),
(202,"smartphone",800.00,50),
(203,"tablet",300.00,30),
(204,"headphone",150.00,100);

use sakshi;


