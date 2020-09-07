CREATE DATABASE bank_account;
USE bank_account;

CREATE TABLE Customers (
	customer_number INT(11) PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(25) UNIQUE,
    phone VARCHAR(11) UNIQUE
);

CREATE TABLE Email(
	user_id INT(11),
    email_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Customers(customer_number)
);

CREATE TABLE Phonenumber(
	phone_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    phone varchar(11),
    user_id INT(11),
    FOREIGN KEY (user_id) REFERENCES Customers(customer_number)
);

CREATE TABLE Accounts(
	account_number INT(11) PRIMARY KEY AUTO_INCREMENT,
    account_type VARCHAR(30) NOT NULL,
    date DATE NOT NULL,
    balance INT(15),
    customer_number INT(11),
    FOREIGN KEY (customer_number) REFERENCES Customers(customer_number) 
);

CREATE TABLE Transactions(
	tran_number INT(11) PRIMARY KEY AUTO_INCREMENT,
    account_number INT(11),
    tran_date DATE,
    amounts INT(15),
    descriptions VARCHAR(100),
    FOREIGN KEY (account_number) REFERENCES Accounts(account_number)
);

ALTER TABLE Customers
DROP email,
DROP PHONE;