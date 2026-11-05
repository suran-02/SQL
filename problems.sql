CREATE TABLE Departments(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Marketing');

CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    DepartmentID INT
);

INSERT INTO Employees VALUES
(1,'Alice',5000,1),
(2,'Bob',6000,1),
(3,'Charlie',7000,2),
(4,'David',5000,1),
(5,'Nicole',8000,2),
(6,'Nancy',4000,3),
(7,'John',5500,NULL);

-- INNER JOIN

-- problem 1: Select all employees with their department names.

-- select e.Name, d.DepartmentName
-- from Employees e
-- inner join Departments d
-- on e.DepartmentID = d.DepartmentID

-- problem 2: Select all employees with their department names where the department is 'IT'.

-- select e.Name
-- from Employees e
-- inner join Departments d
-- on e.DepartmentID = d.DepartmentID
-- where d.DepartmentName = 'IT'

-- problem 3: select all employees with their name, salary and department name

-- select e.Name,e.Salary,d.DepartmentName
-- from Employees e
-- inner join Departments d
-- on e.DepartmentID = d.DepartmentID

-- problem 4: Select all employees with their department names where the salary is greater than 6000.

-- select e.Name, e.Salary, d.DepartmentName
-- from Employees e
-- inner join Departments d
-- on e.DepartmentID = d.DepartmentID
-- where e.Salary > 6000