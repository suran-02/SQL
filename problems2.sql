
-- SUBQUERIES

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    Department VARCHAR(20),
    City VARCHAR(30)
);

INSERT INTO Employees VALUES
(1,'Rahul',50000,'IT','Pune'),
(2,'Sneha',70000,'HR','Mumbai'),
(3,'Amit',60000,'IT','Pune'),
(4,'Priya',90000,'Finance','Delhi'),
(5,'Vikas',55000,'HR','Mumbai'),
(6,'Neha',75000,'IT','Bangalore'),
(7,'Karan',45000,'Finance','Delhi'),
(8,'Meera',80000,'IT','Pune');

select * 
from Employees e
where e.Salary > (select avg(e.Salary) from Employees e)

select * 
from Employees e
where e.Salary < (select max(e.Salary) from Employees e)