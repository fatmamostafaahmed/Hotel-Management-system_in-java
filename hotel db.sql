create database hotel
GO

Use hotel
Go

create table employee
(
EmpName nvarchar(80) not null primary key,
UserName varchar(50) not null unique,
UserPassword nvarchar(20) not null,
EmpMobile  char(11) not null,
EmpAddress nvarchar(80) not null
)
GO

create table room
(
Rno char(3) not null primary key,
Rtype char(6) not null check (Rtype in ('Single','Double','Triple','Suite')),
Rent smallmoney not null,
Rdesc nvarchar(4000)
)
Go

Create table Reservation
(
ResNo int primary key,
FromDate date not null,
ToDate date not null,
Rno char(3) not null foreign key references room(Rno) on update cascade on delete cascade,
EmpName nvarchar(80) not null  foreign key references employee(EmpName) on update cascade on delete cascade
)
GO

create table guest
(
ResNo int not null primary key foreign key references Reservation(ResNo) on delete cascade on update cascade,
ID char(14) not null,
ArName nvarchar(80) not null,
EngName nvarchar(80) not null,
Gender varchar(6) not null,
Nationality varchar(80) not null,
MobileNo char(11) null
)
GO


