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


