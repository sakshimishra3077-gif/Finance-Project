create database sushant;
use sushant;
show tables;

drop database sushant;
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


create table order003(
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

show tables;

INSERT INTO customer002 (customerid,firstname,lastname,email,phonenumber,address,city,state,zipcode)values
(1,"john","doe","doe@gmail.com","1234567891","123 elm street","new york","ny","10001"),
(2,"jane","smith","smith@gmail.com","2345678901","456 oak avenue","los angeles","ca","90001"),
(3,"michael","johnson","michael@gmail.com","5678910112","789 pine road","chicago","il","60601");

insert into order003 (orderid,customerid,orderdate,totalamount)
values
(101,1,"2024-10-01",250),
(102,2,"2024-10-05",150),
(103,1,"2024-10-07",300),
(104,3,"2024-10-09",175);


insert into products002 (productid,productname,price,stock)
values
(201,"laptop",1200.00,20),
(202,"smartphone",800.00,50),
(203,"tablet",300.00,30),
(204,"headphone",150.00,100);
  
  
  drop table order002;
  
  
  
##1.Retrieve all columns from the Customers table.
  
  select * from customer002;
  
  ##2.Retrieve only the FirstName and LastName columns from the Customers table.
  
  select firstname,lastname from customer002;
  
  ##3.Find all distinct cities where customers live.
  
  select distinct(city) from customer002;
  
  ##4.Count the number of customers in the Customers table.
  
  select count(*) from customer002;
  
  ##5.Retrieve all orders with a TotalAmount greater than 200.
  
  select * from order003 
  where Totalamount>200;
  
  ##6.Find all products priced below 500.
  
  select * from products002 
  where price<500;
  
  ##7.List the products that are out of stock (where Stock is 0).
  
  select * from products002
  where stock = 0;
  
  ##8.Retrieve all orders made after 2024-10-05.
  
  select * from order003
  where orderdate > 2024-10-05;
  
  ##9.Find customers from either New York or Chicago.
  
  select * from customer002
  where city in ("new york" ,"chicago");
  
  ##10.Retrieve orders with TotalAmount between 150 and 300.
  
  select * from order003
  where totalamount between 150 and 300;
  
  ##11.Create a new column DateOfBirth in the Customers table.
  
  alter table customer002 add column DateofBirth date;
  
select * from customer002;

##12.Add a unique constraint to the Email column in the Customers table.

alter table customer002 add constraint UC_email unique(email);

##13.Modify the Phone column to accept only 10 characters.

alter table Customer002 modify column phonenumber varchar(10);

##14.14. Delete the ZipCode column from the Customers table.

alter table customer002 drop column zipcode;

select * from customer002;
  
  ##15.Set a default value for City to &#39;Unknown&#39;.
  
  alter table customer002 ALTER column City set DEFAULT "UNKNOWN";
  
  ##16.Insert a new customer with NULL values for Email and Phone.
  
  insert into customer002 (customerid,firstname,lastname,email,phonenumber,address,city,state)values
  (106,"sakshi","mishra","null","null","vishalnagar","pune","mahashtra");
  
  select * from customer002;
  
  ##17.Create a new table called Categories with CategoryID as the primary key.
  
  create table categories(
  categoryid int primary key
  );
  drop table categories;
  ##18.Delete a customer with CustomerID = 2.
  
  delete from orders where customerid = 2;
  
  ##19.Update the TotalAmount of order OrderID = 101 to 280.50.
  
  update order003 set totalamount=280 where orderid = 101;
  
  ##20.Find customers who do not have a phone number listed.
  
  select * from customer002 WHERE phonennumber is null;
  
  ##21.Retrieve all orders along with customer names (using an inner join).
  
  select order003.orderid,customer002.firstname,customer002.lastname,order003.orderdate,order003.totalamount from order003
  inner join customer002 on order003.customerid=customer002.customerid;
  
  
  ##22.Find all products ordered along with the product name and order date.
  
  select order003.orderid,phones002.productname,order003.orderdate from order003
  inner join products002 on order003
  
  ##23.List all customers and the total amount of their orders (using a left join).
SELECT customer002.firstname,customer002.lastname, 
  from customer002
  left join order003 on customer002.customerid=order003.customerid
  group by customer002.firstname,customer002.lastname;
  
  SELECT Customer002.FirstName, Customer002.LastName, SUM(Order003.TotalAmount) AS TotalSpent
FROM Customer002
LEFT JOIN Orders003 ON Customer002.CustomerID = Orders003.CustomerID
GROUP BY Customer002.FirstName, Customer002.LastName;
  
  
  ##25.List the total amount of orders placed by each customer (grouped by customer).
  
  SELECT customer002.firstname,customer002.lastname,sum(order003.totalamount) as totalspend 
  from customer002
  inner join order003 on customer002.customerid=order003.customerid
  group by customer002.firstname,customer002.lastname;
  
  ##26.Find all orders along with the corresponding customer and product details.
  
  
  
  ##27.List all customers who placed orders on or after 2024-10-05.
  
  SELECT customer002.firstname,customer002.lastname from customer002
  inner join order003 on customer002.customerid=order003.customerid
  where order003.orderdate>2024-10-05;
  
  
  
  
  
