create database CompanyDB;
use CompanyDB;

create table Employees(
 EmployeeID int primary key, 
 FirstName varchar(50), 
 LastName varchar(50), 
 Salary decimal,
 DepartmentID int,
 foreign key (DepartmentID) references Departments(DepartmentID)
);

alter table Employees add HireDate datetime;

insert into Employees(EmployeeID, FirstName, LastName, Salary,  DepartmentID, HireDate) values
(1, 'Uzair', 'Ahmed', 50000, 3, '2008-11-11'), 
(2, 'Muhammad', 'Umair', 25000, 1, '2008-12-10'), 
(3, 'Muhammad', 'Zaid', 60000, 4, '2008-09-11'), 
(4, 'Murtaza', 'Sadiq', 35000, 5, '2008-09-15'), 
(5, 'Mubeen', 'Ahmed', 70000, 2, '2008-09-20'), 
(6, 'Hanif', 'Khan', 30000, 1, '2008-07-25'),
(7, 'Abdullah', 'khan', 40000, 4, '2008-05-20'),
(8, 'Salam', 'Sadiq', 60000, 3, '2008-04-16'),
(9, 'Sadiq', 'Hussain', 80000, 5, '2008-08-15'),
(10, 'Faiq', 'Ahmed', 90000, 1, '2008-09-22');

Select * from Employees;

UPDATE Employees SET Salary = Salary + (Salary * 10/100);

DELETE from Employees where Salary < 30000;

create table Departments(
DepartmentID int primary key, 
DepartmentName varchar(50)
);

insert into Departments(DepartmentID, DepartmentName) values
(6, 'Physics_dep'),
(7, 'Maths_dep');

Select * from Departments;
Select * from Employees;

select e.FirstName, e.LastName, d.DepartmentName from Employees AS e inner join Departments AS d on d.DepartmentID = e.DepartmentID;

select * from Employees AS e left join Departments AS d on d.DepartmentID = e.DepartmentID where e.EmployeeID = 3;
select * from Employees AS e left join Departments AS d on d.DepartmentID = e.DepartmentID;
select * from Employees AS e right join Departments AS d on d.DepartmentID = e.DepartmentID where e.EmployeeID = 3;
select * from Employees AS e right join Departments AS d on d.DepartmentID = e.DepartmentID;
