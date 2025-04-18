# Write your MySQL query statement below
Select p.product_name , s.year, s.price 
from Sales s 
Join Product p
using(product_id)
order by p.product_name