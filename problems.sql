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



-- LEFT JOIN

-- problem 5: Select all employees with their department names, including those without a department.

-- select e.Name, d.DepartmentName
-- from Employees e
-- left join Departments d
-- on e.DepartmentID = d.DepartmentID

-- problem 6: Select all employees without a department.

-- select e.Name
-- from Employees e
-- left join Departments d
-- on e.DepartmentID = d.DepartmentID
-- where e.DepartmentID is null

-- problem 7: Select all departments with the total number of employees in each department.

-- select d.DepartmentName,
--   count(e.EmployeeID) as Total
-- from Departments d
-- left join Employees e
-- on e.DepartmentID = d.DepartmentID 
-- group by d.DepartmentName

-- problem 8: Select all departments without any employees.

-- select d.DepartmentName 
-- from Departments d
-- left join Employees e
-- on d.DepartmentID = e.DepartmentID
-- where e.DepartmentID is null


-- GROUP BY

-- select d.DepartmentName, ROUND(AVG(e.Salary),2) as avg_salary
-- from Departments d
-- left join Employees e
-- on d.DepartmentID = e.DepartmentID
-- group by d.DepartmentName

-- select d.DepartmentName, MAX(e.Salary) as highest_salary
-- from Departments d
-- left join Employees e
-- on d.DepartmentID = e.DepartmentID
-- group by d.DepartmentName

-- select d.DepartmentName, max(e.Salary)-min(e.Salary) as diff_salary
-- from Employees e
-- inner join Departments d
-- on e.DepartmentID = d.DepartmentID
-- group by d.DepartmentName

