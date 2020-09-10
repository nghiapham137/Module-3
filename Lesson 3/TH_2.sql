use classicmodels;

select customers.customerNumber, customerName, phone, paymentDate, amount
from customers
inner join payments
on customers.customerNumber = payments.customerNumber
where city = 'Las Vegas';

select customers.customerNumber, customerName, orderNumber, status
from customers
left join orders
on customers.customerNumber = orders.customerNumber;

select customers.customerNumber, customerName, orderNumber, status
from customers
left join orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;