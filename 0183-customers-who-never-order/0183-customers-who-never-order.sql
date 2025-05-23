# Write your MySQL query statement below
SELECT name as Customers
From Customers 
Where customers.id not in (select customerId from Orders);

