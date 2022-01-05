--Bài 1
--1 Tạo một CSDL có tên là Lab11.
create database Lab11
go 
use Lab11

--2 Tạo một khung nhìn có tên là ProductList, khung nhìn này sử dụng các cột ProductID và Name của bảng Production.Product của CSDL AdventureWorks.
create view ProductList
as select ProductID, Name from AdventureWorks2019.Production.Product

--3 Sử dụng khung nhìn vừa tạo bằng một câu lệnh truy vấn đơn giản.
select * from ProductList

--Bài 2
--1
create view SalesOrderDetail
AS
	select pr.ProductID, pr.Name, od.UnitPrice, od.OrderQty, od.UnitPrice*od.OrderQty as [Total Price]
	from AdventureWorks2019.Sales.SalesOrderDetail od
	join AdventureWorks2019.Production.Product pr
	on od.ProductID=pr.ProductID

--2 Sử dụng khung nhìn vừa tạo bằng cách thực hiện một câu lệnh truy vấn đến khung nhìn này:
select * from SalesOrderDetail