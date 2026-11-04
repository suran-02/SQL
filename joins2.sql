-- SELF JOIN

-- create a table
create table Customers(
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  City VARCHAR(30)
);

INSERT INTO Customers (CustomerID, Name, City)
VALUES
(1, 'Alice', 'Pune'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Pune'),
(4, 'David', 'Bangalore');


select c1.Name as Customer1,
  c2.Name as Customer2,
  c1.City
from Customers c1
join Customers c2
on c1.City = c2.City
where c1.CustomerID < c2.CustomerID

create table Employees(
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(50),
  Salary INT,
  Department VARCHAR(20),
  City VARCHAR(30),
  ManagerID INT
);

INSERT INTO Employees(EmployeeID, Name,Salary,Department, City,ManagerID)
VALUES
(1, 'Alice',5000,'IT','Pune',5),
(2, 'Bob',6000,'IT', 'Mumbai',5),
(3, 'Charlie',7000,'HR', 'Pune',6),
(4, 'David',5000,'IT', 'Bangalore',6),
(5, 'Nicole',8000,'HR','Kolkata',NULL),
(6,'Nancy',4000,'Finance','Kolkata',NULL);

-- Perform a self join to find employees who work in the same city

-- select c1.Name as Employee1,
--   c2.Name as Employee2,
--   c1.City
-- from Employees c1
-- join Employees c2
-- on c1.City = c2.City
-- where c1.EmployeeID < c2.EmployeeID

-- Perform a self join to find employees and their managers

-- select e1.Name as Employee,
--        e2.Name as Manager
-- from Employees e1
-- join Employees e2
-- on e1.EmployeeID = e2.ManagerID

-- Perform a self join to find employees with the same salary

select e1.Name as Employee,
e2.Salary
from Employees e1
join Employees e2
on e1.Salary = e2.Salary
where e1.EmployeeID != e2.EmployeeID