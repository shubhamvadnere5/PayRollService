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
