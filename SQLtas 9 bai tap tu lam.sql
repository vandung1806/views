create database Lab9 
go
use Lab9

create table Customer(
	CustomerID int primary key,
	CustomerName varchar(50),
	Address varchar(100),
	Phone varchar (12),
)
go

create table Book(
	BookCode int primary key,
	Category varchar(50),
	Author varchar(50),
	Publisher varchar(50),
	Title varchar(100),
	Price int,
	InStore int,
)
go

create table BookSold(
	BookSoldID int primary key,
	CustomerID int  foreign key references Customer(CustomerID),
	BookCode int foreign key references Book(BookCode),
	Date int,
	Price int,
	Amount int,
)
go

--1
insert into Book (BookCode, Category, Author, Publisher, Title, Price, InStore) values (132,  N'Thể loại sách', N'nGuyễn Văn Mô', N'Nguyễn Văn Mô', N'SUMô đẹo zai', 1000000000, 1),
																						(133,  N'Thể loại sách', N'nGuyễn Văn Mô', N'Nguyễn Văn Mô', N'SUMô đẹo zai', 1000000000, 1),
																						(134,  N'Thể loại sách', N'nGuyễn Văn Mô', N'Nguyễn Văn Mô', N'SUMô đẹo zai', 1000000000, 1),
																						(135,  N'Thể loại sách', N'nGuyễn Văn Mô', N'Nguyễn Văn Mô', N'SUMô đẹo zai', 1000000000, 1),
																						(136,  N'Thể loại sách', N'nGuyễn Văn Mô', N'Nguyễn Văn Mô', N'SUMô đẹo zai', 1000000000, 1),
																														
go

insert into Customer (CustomerID, CustomerName) values (122, N'SuMô'),
														(123, N'SuMô'),
														(124, N'SuMô'),
														(125, N'SuMô'),
														(126, N'SuMô'),
go

insert into BookSold (BookSoldID, CustomerID) values (112, 122),
													(113, 122),
													(114, 122),
													(115, 122),
													(116, 122),
													(117, 122),
													(118, 122),
													(119, 122),
													(1111, 122),
													(1112, 122),
go
--2
create view SuMo as
select BookCode, Title, Price
from Book
go

--3
