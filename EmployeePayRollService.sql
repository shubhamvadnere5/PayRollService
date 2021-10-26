--UC1 Create Database--
Create Database EmployeePayRollService;


--UC2 Create Table--
use EmployeePayRollService;
create table  emppayroll(
      Id int IDENTITY(1,1) PRIMARY KEY, 
      Name varchar(200),
      Salary float,
      StartDate date
);

--UC3 Insert Operation--
insert into emppayroll(Name,Salary,StartDate) values('Shubham','4567','2021-10-11'),('Varun','23456','2021-10-12'),('Rohit','6789','2021-10-09');

--UC4 Select * from Employee Table--
select * from emppayroll;

--UC5 Retrive data using where condition--
Select Name,StartDate from emppayroll where Name='Shubham'; 
select * from emppayroll where StartDate between cast('2018-01-03' as date) and getdate(); 

--UC6 Update Data--
alter table emppayroll add Gender char(1);
update emppayroll set Gender='M';
update emppayroll set Gender='M' where Id='1';

-------------------------Uc7----------------------------------------
----calculate sum,avergae,min,max,count of employee ased on gender---
select SUM(Salary) as TotalSalary,Gender from emppayroll group by Gender;
select AVG(Salary) as AverageSalary from emppayroll group by Gender;
select count(Salary) as TotalSalary,Gender from emppayroll group by Gender;
select Min(Salary) as MinSalary,Gender from emppayroll group by Gender;
select Max(Salary) as MaxSalary,Gender from emppayroll group by Gender;
