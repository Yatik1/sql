
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