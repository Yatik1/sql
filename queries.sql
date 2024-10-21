
use classicmodels;

SELECT employeeNumber as emp_id, firstName, lastName, officeCode FROM employees WHERE jobTitle="Sales Rep";

select * from employees where jobTitle != "Sales Rep";
## ------ != or <> , both represents not equal
select * from employees where jobTitle <> "Sales Rep";

select * from employees where jobTitle = "Sales Rep" and officeCode="1"; ## =-- reportsTo = 14001

update employees set reportsTo="1002" where jobTitle = "Sales Rep" and officeCode="1";

## --- reportsTo updates to 1002

select * from employees where jobTitle != "Sales Rep" or officeCode="1";

## ---- Exercises

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

