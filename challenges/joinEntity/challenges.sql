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

-- 4. Report the products that have not been sold.
select * 
from products
where not exists (select orderDetails.productCode from orderDetails where products.productCode = orderDetails.productCode);

-- 5. List the amount paid by each customer.

select customers.customerNumber,customerName,round(sum(amount),2) from payments
inner join customers
on payments.customerNumber = customers.customerNumber
group by customers.customerNumber, customerName
order by customers.customerNumber;

-- or 

SELECT Orders.customerNumber, customerName , ROUND(SUM(Detail.quantityOrdered*Detail.priceEach),2) As 'Amount Paid'
FROM Customers
INNER JOIN Orders
ON Customers.customerNumber = Orders.customerNumber
INNER JOIN OrderDetails Detail
on Orders.orderNumber = Detail.orderNumber
GROUP BY Orders.customerNumber,customerName
ORDER BY customers.customerNumber;