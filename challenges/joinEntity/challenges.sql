-- -------------------- SQL Joins Challenges ----------------------

-- 1. Report the account representative for each customer.
select customerName, concat(e.firstName, " " , e.lastName) as `Account Representative`
from customers c
inner join employees e
on c.salesRepEmployeeNumber = e.employeeNumber;