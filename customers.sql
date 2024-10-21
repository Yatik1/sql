use classicmodels;

show tables;

CREATE TABLE IF NOT EXISTS customers (
	customerNumber int(11) not null,
    customerName varchar(50) not null,
    contactLastName varchar(50) not null,
    contactFirstName varchar(50) not null,
    phone varchar(50) not null,
    addressLine1 varchar (50) not null,
    addressLine2 varchar(50) null default null,
    city varchar(50) not null,
    state varchar(50) null default null,
    postalCode varchar(15) null default null,
    country varchar(50) not null,
    salesRepEmployeeNumber int(11) null,
    creditLimit double null default null,
    customerLocation point not null,
	PRIMARY KEY (customerNumber),
    foreign key (salesRepEmployeeNumber) references employees (employeeNumber)    
);

## DROP table customers;

desc customers;



select * from customers;