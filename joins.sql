-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    ManagerID INT
);
-- Insert Data into Employees
INSERT INTO Employees (EmployeeID, Name, DepartmentID, ManagerID)
VALUES
(1, 'Roy', 101, 4),
(2, 'Suranjana', 102, 4),
(3, 'Alice', 101, 5),
(4, 'Bob', 103, NULL),
(5, 'Charlie', 103, NULL),
(6, 'David', NULL, 4);
-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
-- Insert Data into Departments
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Sales');
-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    EmployeeID INT
);
-- Insert Data into Projects
INSERT INTO Projects (ProjectID, ProjectName, EmployeeID)
VALUES
(1, 'Website', 1),
(2, 'Dashboard', 1),
(3, 'Recruitment', 2),
(4, 'Payroll', 5);

-- Problem 1: Write a SQL query to retrieve the names of employees along with their respective department names.

-- SELECT Employees.Name,
--        Departments.DepartmentName
-- FROM Employees
-- INNER JOIN Departments
-- ON Employees.DepartmentID = Departments.DepartmentID;

-- Problem 2: Write a SQL query to retrieve the names of employees who work in the 'IT' department.

-- select e.Name
-- from Employees e
-- inner join Departments d
-- on e.DepartmentID = d.DepartmentID
-- where d.DepartmentName = 'IT'

-- Problem 3: Write a SQL query to retrieve the names of employees along with their respective project names.

-- select e.Name,p.ProjectName
-- from Employees e
-- inner join Projects p
-- on e.EmployeeID = p.EmployeeID

-- Problem 4: Display all employees along with department names, including employees without departments.

-- select e.Name, d.DepartmentName
-- from Employees e
-- left join Departments d
-- on e.DepartmentID = d.DepartmentID

-- Problem 5: Display all employees who do not belong to any department.

-- select e.Name
-- from Employees e
-- left join Departments d
-- on e.DepartmentID = d.DepartmentID
-- where d.DepartmentName IS NULL

-- Problem 6: Display all departments along with employee names, including departments without employees.

-- select e.Name,d.DepartmentName
-- from Employees e
-- right join Departments d
-- on e.DepartmentID = d.DepartmentID

-- Problem 7: Display all departments that do not have any employees.

-- select d.DepartmentName
-- from Employees e
-- right join Departments d
-- on e.DepartmentID = d.DepartmentID
-- where e.Name is null

-- Problem 8: Display all employees along with their respective project names, including employees without projects.

select e.Name
from Employees e
left join Projects p
on e.EmployeeID = p.EmployeeID
where p.ProjectID is null
