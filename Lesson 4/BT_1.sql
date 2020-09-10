create database example;
use example;

create table students (
	id int,
    name varchar(25) not null,
    age int not null,
    course varchar(30) not null,
    amount int not null
);

insert into students values (1, 'Hoang', 21, 'CNTT', 400000);
insert into students values (2, 'Viet', 19, 'DTVT', 320000);
insert into students values (3, 'Thanh', 18, 'KTDN', 400000);
insert into students values (4, 'Nhan', 19, 'CK', 450000);
insert into students values (5, 'Huong', 20, 'TCNH', 500000);
insert into students values (5, 'Huong', 20, 'TCNH', 200000);

select * from students where name = 'Huong';

select name, sum(amount) as total
from students
where name = 'Huong';

select id, name from students;

create view students_view as
select * from students;

select * from students_view;
	
update students_view 
set age = 25
where name = 'Thanh';

delete from students_view
where age = 25;

insert into students_view values (3, 'Thanh', 18, 'KTDN', 400000);