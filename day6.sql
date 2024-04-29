
CREATE TABLE Products (

    ProductID INT,

    ProductName VARCHAR(50),

    Category VARCHAR(50),

    InStock CHAR(3)

);
 
INSERT INTO Products (ProductID, ProductName, Category, InStock) VALUES

(1, 'Laptop', 'Electronics', 'Yes'),

(2, 'Smartphone', 'Electronics', 'No'),

(3, 'Coffee Maker', 'Appliances', 'Yes'),

(4, 'Blender', 'Appliances', 'Yes'),

(5, 'T-shirt', 'Apparel', 'No');


CREATE TABLE Orders (

    OrderID INT,

    ProductID INT,

    CustomerName VARCHAR(50),

    Quantity INT

);
 
INSERT INTO Orders (OrderID, ProductID, CustomerName, Quantity) VALUES

(100, 1, 'Alice', 1),

(101, 3, 'Bob', 2),

(102, 2, 'Charlie', 1),

(103, 4, 'Dana', 1),

(104, 3, 'Alice', 1);


select * from Products;
select * from Orders;


select ProductName from Products where InStock='yes' or ProductID in (select ProductID from Orders)

select * from Products where InStock='yes' and ProductID in (select ProductID from Orders)

select * from Products where InStock='yes' and ProductID not in (select ProductID from Orders)

CREATE TABLE EmployeeSales (
    EmployeeID INT,
    Region VARCHAR(50),
    Category VARCHAR(50),
    Quarter VARCHAR(10),
    SalesAmount DECIMAL(10,2)
);
 
INSERT INTO EmployeeSales (EmployeeID, Region, Category, Quarter, SalesAmount)
VALUES
    (101, 'North', 'Electronics', 'Q1', 1200.00),
    (101, 'North', 'Electronics', 'Q2', 1500.00),
    (102, 'North', 'Clothing', 'Q1', 800.00),
    (102, 'North', 'Clothing', 'Q2', 950.00),
    (103, 'South', 'Electronics', 'Q1', 1000.00),
    (103, 'South', 'Clothing', 'Q1', 1200.00),
    (104, 'East', 'Electronics', 'Q2', 1150.00),
    (104, 'East', 'Clothing', 'Q2', 500.00),
    (105, 'West', 'Electronics', 'Q1', 1900.00),
    (105, 'West', 'Clothing', 'Q1', 1100.00),
    (105, 'West', 'Electronics', 'Q2', 2100.00),
    (105, 'West', 'Clothing', 'Q2', 1300.00);

	select * from EmployeeSales order by Region,SalesAmount desc

	select region,category,SUM(SalesAmount) from EmployeeSales group by Region,Category

	select region,category,Quarter,SUM(SalesAmount) from EmployeeSales group by GROUPING sets((Region,Category)
	,(Region,Quarter),(Region),(Quarter)) order by GROUPING(Region),GROUPINg(Category),GROUPING(Quarter)