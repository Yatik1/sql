use classicmodels;

# 1. --  Prepare a list of offices sorted by country, state, city.
select * from offices;

select *
from offices 
order by country, state, city;	

# 2. -- How many employees are there in the company?
select count(*) as employee_count from employees;

# 3. --What is the total of payments received?
select sum(amount) as total_amount from payments;

# 4. -- List the product lines that contain 'Cars'.
select productLine as Cars from productlines where productLine like "%Cars%";

# 5. -- Report total payments for October 28, 2004.
select sum(amount) as total_amt_as_for_28Oct2024 from payments where paymentDate="2004-10-28";

select sum(amount) as `Total Amount for 28 Oct, 2004` from payments where paymentDate="2004-10-28";



