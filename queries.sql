
use classicmodels;

SELECT employeeNumber as emp_id, firstName, lastName, officeCode FROM employees WHERE jobTitle="Sales Rep";

select * from employees where jobTitle != "Sales Rep";
## ------ != or <> , both represents not equal
select * from employees where jobTitle <> "Sales Rep";

select * from employees where jobTitle = "Sales Rep" and officeCode="1"; ## =-- reportsTo = 14001

update employees set reportsTo="1002" where jobTitle = "Sales Rep" and officeCode="1";

## --- reportsTo updates to 1002

select * from employees where jobTitle != "Sales Rep" or officeCode="1";

## -------------- Exercises 1 ---------------

# 1. List the customers in the United States with a credit limit higher than $1000

Select * from customers where country="USA" and creditLimit>1000;

# 2. List the employee codes for sales representatives of customers in Spain, France and Italy. Make another query to list the names and email addresses of those employees.

select salesRepEmployeeNumber from customers where country in ("Spain","France","Italy");
select firstName,lastName, email from employees where employeeNumber in (1370,1337,1702, 1401);

# 3. Change the job title "Sales Rep" to "Sales Representative"
select * from employees;
update employees set jobTitle="Sales Representative" where jobTitle="Sales Rep"; 

# 4. Delete the entries for Sales Representatives working in London.

select officeCode from offices where city="London";
select * from employees where jobTitle="Sales Representative" and officeCode="7";

delete from employees where employeeNumber in (1501,1504);  ## this will give error, due to foreign key constraints.

#############################

select * from customers;

SELECT * FROM customers
WHERE salesRepEmployeeNumber IN (
	SELECT employeeNumber
    FROM employees
    WHERE jobTitle = "Sales Representative" 
    AND officeCode = "7"
);

delete from customers
where salesRepEmployeeNumber in (
	select employeeNumber
    from employees 
    where jobTitle="Sales Representative"
    and officeCode=7
);

delete from employees where jobTitle="Sales Representative" and officeCode="7";

# 5. Show a list of employees who are not sales representatives
select * from employees where jobTitle != "Sales Representative";

# 6. Show a list of customers with "Toys" in their name
select * from customers;
select customerName, country from customers where customerName like "%Toys%";



# --------------- ORDER BY and LIMIT -------------------

select customerName, country from customers order by country ASC;
select customerName, country from customers order by country DESC;

select customerName, country from customers order by country ASC limit 10;
select customerName, country from customers order by country DESC limit 10;

select customerName, country from customers limit 20;

select customerName, country, creditLimit from customers where creditLimit > 100000 order by country limit 5;
select customerName, country, creditLimit from customers where creditLimit > 100000 limit 5;

# ------------------- Exercise 2 -------------------------

# 1. List the 5 most expensive products from the "Planes" product line
select * from products where productLine="Planes" order by buyPrice Desc limit 5;

# 2. Identify the products that are about to run out of stock (quantity in stock < 100)
select productCode, productName, productLine,quantityInStock from products where quantityInStock<100;

# 3. List 10 products in the "Motorcycles" category with the lowest buy price and more than 1000 units in stock
select * from products where productLine="Motorcycles" and quantityInStock>1000 order by buyPrice asc limit 10;

#--------- Modifying Table Structure ---------

# Adding new column 
alter table employees add hiredOn date;
desc employees;
select * from employees;

# Changing the type of a column
alter table employees modify column hiredOn varchar(40);
desc employees;
select * from employees;

# Renaming the column
alter table employees rename column hiredOn to isHired;
desc employees;
select * from employees;

# Removing column from the table
alter table employees drop column isHired;
desc employees;
select * from employees;

-- Group by 
select count(*) from payments;
select customerNumber, count(customerNumber) as `Number of Payments` from payments group by customerNumber;

select sum(`Number of Payments`) from (
	select customerNumber, count(customerNumber) as `Number of Payments` from payments group by customerNumber
) as payment_counts;


select count(*) as `Total number of payments` from payments;

-- Find the total number of payment done by customer before "2004-10-28"
select customerNumber, count(*) as `Number of payments` from payments group by customerNumber;

-- Determine the total number of units sold for each product
select productCode,sum(quantityOrdered) as `sold units` from orderDetails group by productCode;

-- Find the total amount paid by each customer payment before "2004-10-28"
select customerNumber, sum(amount) as `Total amount` from payments where paymentDate<"2004-10-28" group by customerNumber;

-- Find the total number of payment and total amount paid by each customer before "2004-10-28"
select customerNumber, count(customerNumber) as `Number of payments`, sum(amount) as `Total Amount paid` from payments where paymentDate<"2004-10-28" group by customerNumber; 


-- Modify the above query to also show the minimum, maximum and average payment value for each customer.

select customerNumber, 
	count(customerNumber) as `Number of payments`, 
    sum(amount) as `Total Amount paid`,
    max(amount) as `Maximum paid amount`,
    min(amount) as `Minimum paid amount`,
	avg(amount) as `Average Amount`
from payments 
where paymentDate<"2004-10-28" 
group by customerNumber; 


-- Sorting and Pagination

-- Retrieve the customer number for 10 customers who made the highest total payment in 2004.

select customerNumber, sum(amount) as `Total Payments`
from payments
where paymentDate<"2004-10-28"
group by customerNumber
order by `Total Payments` desc
limit 10;

-- offset

select customerNumber from payments order by customerNumber desc;

select customerNumber, amount
from payments
order by customerNumber desc
limit 5
offset 5;

--  ----------------------- Mapping functions ---------------------------


-- CONCAT and UCASE

-- Display the full name of point of contact each customer in the United States in upper case, along with their phone number, sorted by alphabetical order of customer name.

select concat(ucase(contactFirstName), " ", ucase(contactLastName)) as `Contact Name`, phone 
from customers 
where country="USA" 
order by `Contact Name`;

-- SUBSTRING and LCASE

-- Display a paginated list of customers (sorted by customer name), with a country code column. The country is simply the first 3 letters in the country name, in lower case.
select customerName, 
	LCASE(SUBSTRING(country, 1, 3)) 
    AS countryCode 
    FROM customers ORDER BY customerName;
    
-- ROUND

-- Display the list of the 5 most expensive products in the "Motorcycles" product line with their price (MSRP) rounded to dollars.
select productName, 
	ROUND(MSRP) AS salePrice 
    FROM products 
    WHERE productLine="Motorcycles" 
    ORDER BY salePrice DESC 
    LIMIT 5;



-- -------------------- Working with dates ---------------------------

-- List the largest single payment done by every customer in the year 2004, ordered by the transaction value (highest to lowest).
select 	customerNumber,
		max(amount) as `Largest Single Payment`
from payments 
where year(paymentDate)="2004"
group by customerNumber
order by `Largest Single Payment` desc;


-- Show the total payments received month by month for every year.
select year(paymentDate) as paymentYear,
       month(paymentDate) as paymentMonth,
       round(sum(amount),2) as totalAmount
from payments
group by paymentYear, paymentMonth
order by paymentYear, paymentMonth;

