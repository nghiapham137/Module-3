create database sell_management;
use sell_management;

create table Customers (
	customer_id int primary key auto_increment,
    full_name varchar(30) not null,
    phone_number varchar(11) not null,
    address varchar(50),
    employee_id int
    -- foreign key (employee_id) references  Employees(employee_id)
);

create table Products_line (
	productline_id varchar(11) primary key,
    description varchar(100)
);

create table Products (
	product_id varchar(11) primary key,
    productline_id varchar(11),
    product_name varchar(30) not null,
    maker varchar(30),
    quantity int not null,
    cost_price int not null,
    purchase_price int not null,
    foreign key (productline_id) references Products_line(productline_id)
);


create table Orders (
	order_id int primary key auto_increment,
    purchase_day date not null,
    request_ship_day date,
    actual_ship_day date not null,
    order_quantity int not null,
    unit_price int not null,
    customer_id int,
    foreign key (customer_id) references Customers(customer_id)
);

create table Orders_detail(
	order_id int,
    product_id varchar(11),
    foreign key (order_id) references Orders(order_id),
    foreign key (product_id) references Products(product_id)
);

create table Payments(
	payment_id int primary key auto_increment,
    payment_day date not null,
    amount int not null,
    customer_id int,
    foreign key (customer_id) references Customers(customer_id)
);

create table Employees(
	employee_id int primary key auto_increment,
	employee_name varchar(50) not null,
	email varchar(50),
    position varchar(50),
    reportTo int,
    office_id int,
    foreign key (reportTo) references Employees(employee_id),
    foreign key (office_id) references Offices(office_id)
);

create table Offices(
	office_id int primary key auto_increment,
    address varchar(100) not null,
    phone_number varchar(11) not null,
    nation varchar(20) not null
);

alter table Customers
add foreign key (employee_id) references Employees(employee_id);

alter table Employees
modify column reportTo int;

alter table Employees
add foreign key (reportTo) references Employees(employee_id)
