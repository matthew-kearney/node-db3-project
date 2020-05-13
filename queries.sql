-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. 
--Shows 77 records.
select p.productname
     , c.categoryname
 from category as c
 join product as p
     on p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012.
-- Shows 429 records.
select o.id as orderID
     , s.companyname 
 from [order] as o
 join shipper as s
     on o.shipVia = s.id
 where o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251.
-- Sort by ProductName. Shows 3 records.
select p.productName as Product_Name
     , p.quantityperunit as Quantity_Per_Unit
 from product as p
 join orderdetail as o
     on o.productid = p.id
 where o.orderid = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order.
-- All columns should be labeled clearly. Displays 16,789 records.
SELECT Id AS OrderID,
       CompanyName,
       LastName
  FROM [Order]
       JOIN
       Employee ON [Order].EmployeeID = Employee.Id
       JOIN
       Customer ON [Order].CustomerId = Customer.Id;