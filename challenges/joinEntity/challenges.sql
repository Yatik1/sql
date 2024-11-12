-- -------------------- SQL Joins Challenges ----------------------

-- 1. Report the account representative for each customer.
select customerName, concat(e.firstName, " " , e.lastName) as `Account Representative`
from customers c
inner join employees e
on c.salesRepEmployeeNumber = e.employeeNumber;

-- 2. Report total payments for Atelier graphique.
select c.customerName, sum(p.amount)
from payments as p
inner join customers as c
on p.customerNumber = c.customerNumber
where c.customerName="Atelier graphique"
group by c.customerName;

-- or 

select c.customerName, sum(p.amount)
from payments as p
inner join customers as c
on p.customerNumber = c.customerNumber
group by c.customerName
having c.customerName="Atelier graphique";


-- 3. Report the total payments by date
select paymentDate, sum(amount) as `Total Amount by Date`
from payments
group by paymentDate
order by paymentDate;

