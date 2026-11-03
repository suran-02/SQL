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