use classicmodels;

 -- 1. Prepare a list of offices sorted by country, state, city.
select * from offices;

select *
from offices 
order by country, state, city;	

 -- 2. How many employees are there in the company?
select count(*) as employee_count from employees;

 -- 3. What is the total of payments received?
select sum(amount) as total_amount from payments;

 -- 4. List the product lines that contain 'Cars'.
select productLine as Cars from productlines where productLine like "%Cars%";

 -- 5. Report total payments for October 28, 2004.
select sum(amount) as total_amt_as_for_28Oct2024 from payments where paymentDate="2004-10-28";

select sum(amount) as `Total Amount for 28 Oct, 2004` from payments where paymentDate="2004-10-28";

 -- 6. Report those payments greater than \$100,000.
select * from payments where amount>100000;

 -- 7. List the products in each product line.
select productName,productLine from products order by productLine;

 -- 8. How many products in each product line?
select productLine,count(*) as `Count of Products` from products group by productLine order by count(*) desc;

 -- 9. What is the minimum payment received?
select min(amount) as `Minimum Amount` from payments;

 -- 10. List all payments greater than twice the average payment.
select * from payments where amount > 2*(select avg(amount) from payments);

 -- 11. What is the average percentage markup of the MSRP on buyPrice?
select avg((MSRP-buyPrice)/MSRP)*100 as `Average Percentage Markup` from products;

 -- 12. How many distinct products does ClassicModels sell?
select count(distinct productLine) as `Distinct Product` from products;

 -- 13. Report the name and city of customers who don't have sales representatives?
select customerName,city from customers where salesRepEmployeeNumber is null;

-- 14. what are the names of executives with VP or Manager in their title ? Use
-- the CONCAT function to combine the employees firstname and lastname
-- into a single field for reporting ?

select concat(firstName,' ',lastName) as `Full Name` from employees where jobTitle like "%VP%" or jobTitle like "%Manager%";

-- 15. Which orders have a value greater than $5,000?
SELECT orderNumber,sum(priceEach*quantityOrdered) as `Values`
from orderdetails
group by orderNumber
having sum(priceEach*quantityOrdered) > 5000
order by sum(priceEach*quantityOrdered);

-- ----------------- Arithmetic Operations ------------------

-- Display the product code, product name, buy price, sale price and profit margin percentage ((MSRP - buyPrice)*100/buyPrice) for the 10 products with the highest profit margin.
-- Round the profit margin to 2 decimals.
select * from products;

select productCode, 
	productName,
    buyPrice, 
    MSRP,  
	ROUND(((MSRP-buyPrice)/buyPrice)*100,2) as `profit margin percentage`
from products
order by `profit margin percentage` desc
limit 10;


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

-- ------------------------ DATE_FORMAT and FORMAT --------------------------------------

-- For the above query, format the amount properly with a dollar symbol and comma separation (e.g $26,267.62), and also show the month as a string.
select year(paymentDate) as `Payment Year`,
       date_format(paymentDate,"%b") as `Payment Month`,
       concat("$" , format(sum(amount),2)) as Revenue
from payments
group by `Payment Year`, `Payment Month`,month(paymentDate)
order by `Payment Year`,month(paymentDate);
