-- JOINS in SQL

-- ----------- INNER JOINS -----------

-- Show the 10 most recent payments with customer details (name & phone no.).

select * from payments join customers on payments.customerNumber=customers.customerNumber;

select checkNumber, paymentDate, amount, customers.customerNumber, customerName, customers.phone
from payments 
inner join customers
on payments.customerNumber = customers.customerNumber
order by paymentDate desc 
limit 10;

select count(*) from (
	select checkNumber, paymentDate, amount, customers.customerNumber, customerName, customers.phone
	from payments 
	inner join customers
	on payments.customerNumber = customers.customerNumber
	order by paymentDate desc 
) as count;


-- Show the full office address and phone number for each employee.
select * from offices;
select * from employees inner join offices on employees.officeCode = offices.officeCode;

select employeeNumber,
      concat(firstName, " ", lastName) as fullName, 
      offices.officeCode, 
      concat(phone, extension),
      city, 
      state, 
      postalCode
 from employees inner join offices on employees.officeCode = offices.officeCode;
 
 
-- Show the full order information and product details for order no. 10100.
select orderNumber,
	   products.productCode,
       productName,
       productDescription,
       quantityordered,
       priceEach,
       orderLineNumber
from orderdetails 
inner join products
on orderdetails.productCode = products.productCode
where orderNumber=10100;