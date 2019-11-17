-- create the emp table
create table dept(Dept_Id int primary key auto_increment,Dept_Name varchar(50));
-- insert default dept
insert into dept(Dept_Name) values('Development');
insert into dept(Dept_Name) values('Tester');
insert into dept(Dept_Name) values('Technical Support');

-- register employee

create table Emp(Emp_Id int primary key auto_increment, Emp_Name varchar(100),Salary int);

-- create user table
create table User(User_Id int primary key auto_increment, User_Name varchar(100),Email varchar(30),Password varchar(100),Mobile_No varchar(100));

