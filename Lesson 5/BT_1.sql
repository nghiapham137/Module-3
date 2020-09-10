create database demo;
use demo;

create table Products (
	id int,
    productCode varchar(10) primary key,
    productName varchar(20),
    productPrice decimal(10,2),
    productAmount int,
    productDescription varchar(100),
    productStatus varchar(20)
);

insert into Products values (1, 'XM01','Honda wave', 15000000, 10, '110cc', 'shipped');
insert into Products values (2, 'XM02', 'Honda Lead', 40000000, 20, '125cc', 'purchased');
insert into Products values (3, 'XM03', 'Honda Air Blade', 5500000, 15, '150cc', 'shipped');

explain select * from Products where productCode = 'XM01';

alter table Products add index idx_productCode(productCode);	

alter table Products add index idx_name_price(productName, productPrice);

explain select * from Products where productName = 'Honda Lead' or productName = 'Honda Air Blade';

alter table Products drop index idx_name_price;
alter table Products drop index idx_productCode;

create view product_view as
select productCode, productName, productPrice, productStatus
from Products;

select * from product_view;

create or replace view product_view as
select productCode, productName, productPrice
from Products
where productStatus = 'shipped';

drop view product_view;

delimiter //
create procedure getAllProducts()
begin
	select * from Products;
end //
delimiter ;	    

call getAllProducts();

delimiter //
create procedure addNewProduct(
in id int,
in productCode varchar(10),
in productName varchar(20),
in productPrice decimal(10,2),
in productAmount int,
in productDescription varchar(100),
in productStatus varchar(20)
)
begin 
	insert into Products values(id, productCode, productName, productPrice, productAmount, productDescription, productStatus);
    
end //
delimiter ;

call addNewProduct(4, 'XM04', 'Honda Vision', 25000000, 26, '125cc', 'purchased');
select * from products;

delimiter //
create procedure updateProductById(
in id int
)
begin 
	update Products
    set productCode = 'XM05', 
		productName = 'Honda SH',
        productPrice = 10000000,
        productAmount = 50,
        productDescription = '175cc',
        productStatus = 'shipped'
	where Products.id = id;
end //
delimiter ;

drop procedure updateProductById;
call updateProductById(2);

delimiter //
create procedure deleteProductById(
in id int
)
begin
	delete from Products
    where Products.id = id;
end //
delimiter ;

call deleteProductById(2);
    