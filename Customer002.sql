create database susha;
use susha;
show tables;

create table customer002(
customerid int  primary key,
firstname varchar(40),
lastname varchar(40),
email varchar(40),
phonenumber varchar(50),
address varchar(40),
city varchar(50),
state varchar(40),
zipcode varchar(50)
);


create table order002(
orderid int primary key,
customerid int,
orderdate date,
totalamount int,
foreign key (customerid) references customer002(customerid)
);

create table products002(
productid int primary key,
productname varchar(40),
price  decimal(10,2),
stock int
);
 drop database susha;
 
 ##31. Find the customer who has placed the most expensive order (using a subquery).
 
 select firstname,lastname from customer002 where customerid=(select customerid from order002
 order by totalamount desc 
 limit 1
 );
 
 ##32.Retrieve the product with the highest price (using a subquery).
 
 select productname from products002 where price=(select max(PRICE) from products002)
 
 ##33.Find customers who have placed more than one order (using a subquery).
 

 
 
 

