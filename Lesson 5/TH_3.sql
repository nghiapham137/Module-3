use classicmodels;


delimiter //

create procedure getCusById
(in cusNum int(11))
begin
	select * from customers where customerNumber = cusNum;
end //

delimiter ;    

call getCusById(175);

delimiter //
create procedure getCustomerCountById
(in in_city varchar(50), out total int)
begin
	select count(customerNumber)
    into total
    from customers
    where city = in_city;
end //
delimiter ;

call getCustomerCountById('NYC', @total);
select @total;	

delimiter //
create procedure setCounter
(inout counter int, in inc int)
begin
	set counter = counter + inc;
end //
delimiter ;

set @counter = 1;
call setCounter(@counter, 1); -- 2
call setCounter(@counter, 1); -- 3
call setCounter(@counter, 5); -- 8
select @counter; -- 8    
