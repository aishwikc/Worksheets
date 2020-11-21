#1. Write SQL query to show average number of orders shipped in a day (use Orders table).
select count(orderNumber) from orders group by shippedDate;

#2. Write SQL query to show average number of orders placed in a day.
select count(orderNumber) from orders group by orderDate;

#3. Write SQL query to show the product name with minimum MSRP (use Products table).
select productName from products where MSRP = (select min(MSRP) from products);

#4. Write SQL query to show the product name with maximum value of stockQuantity.
select productName from products where quantityinStock = (select max(quantityinStock) from products);

#5. Write a query to show the most ordered product Name (the product with maximum number of orders).
select productName from products
inner join orderDetails on products.productCode = Orderdetails.productcode
group by products.productCode
order by sum(qantityOrdered) desc
limit 1;

#6. Write a SQL query to show the highest paying customer Name.
select customerName from customers
inner join payments on customers.customerNumber=payments.customerNumber
group by customers.customerNumber
order by payments.amount desc
limit 1;

#7. Write a SQL query to show cutomerNumber, customerName of all the customers who are from Melbourne city.
select customerNumber, customerName from customers 
where customers.city = 'Melbourne';

#8. Write a SQL query to show name of all the customers whose name start with “N”.
select customerName from customers where customers.customerName like "N%";

#9. Write a SQL query to show name of all the customers whose phone start with ‘^7.*’ and are from city ‘LasVegas’.
select customerName from customers where customers.phone like "^7.*%"
and customers.city = "Las Vegas";

#10. Write a SQL query to show name of all the customers whose creditLimit < 1000 and city is either “Las Vegas”or ”Nantes” or “Stavern”.
select customerName from customers where creditLimit < 1000
and (city = "Las Vegas" or city = "Nantes" or city = "Satvern");

#11. Write a SQL query to show all the orderNumber in which quantity ordered <10.
select orderNumber from orderdetails where quantityOrdered<10;

#12. Write a SQL query to show all the orderNumber whose customer Name start with letter N.
select orderNumber from orders
inner join customers on customers.customerNumber = orders.customerNumber
where customers.customerName like "N%";

#13. Write a SQL query to show all the customerName whose orders are “Disputed” in status.
select customerName from customers
inner join orders on customers.customerNumber = orders.customerNumber
where orders.status = "Disputed";

#14. Write a SQL query to show the customerName who made payment through cheque with checkNumber startingwith H and made payment on “2004-10-19”.
select customerName from customers
inner join payments on customers.customerNumber = payments.customerNumber
where payments.checkNumber = True; 

#15. Write a SQL query to show all the checkNumber whose amount > 1000
select checkNumber from payments
where amount>1000;






