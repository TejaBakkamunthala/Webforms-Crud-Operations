CREATE DATABASE WEBFORMS;

USE WEBFORMS;

CREATE TABLE Product(
ProductID INT PRIMARY KEY,
ItemName varchar(40),
Specification varchar(40),
Unit varchar(20),
Status varchar(20),
CreationDate Date);

select * from Product;



create or alter proc Insert_procedure
@ProductID int,
@ItemName varchar(40),
@Specification varchar(40),
@Unit varchar(20),
@Status varchar(20),
@CreationDate Date
AS
BEGIN
INSERT INTO Product(ProductID,ItemName,Specification,Unit,Status,CreationDate)
values(@ProductID,@ItemName,@Specification,@Unit,@Status,@CreationDate)
end



execute Insert_procedure 1,'laptop','HP i7', 'PCS','RUNNING','01/01/2024';



create or alter proc GetAllProducts
AS
BEGIN
SELECT * FROM Product;
END

EXEC GetAllProducts;



create or alter proc update_procedure
@ProductID int,
@ItemName varchar(40),
@Specification varchar(40),
@Unit varchar(20),
@Status varchar(20),
@CreationDate Date
AS
BEGIN
update product set ItemName=@ItemName,Specification=@Specification,Unit=@Unit,Status=@Status,CreationDate=@CreationDate
where ProductID=@ProductID;
end



create or alter proc delete_procedure
@productID INT
as
begin	
DELETE FROM Product WHERE ProductID=@ProductID;
END;

create or alter proc search_Procedure
@productID INT
as
begin	
select * FROM Product WHERE ProductID=@ProductID;
END;


