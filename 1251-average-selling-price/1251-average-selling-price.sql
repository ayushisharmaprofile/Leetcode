# Write your MySQL query statement below
Select p.product_id, ifnull(round(sum(p.price*u.units)/sum(u.units),2),0) As average_price 
From Prices p
Left Join UnitsSold u 
ON p.product_id = u.product_id
and u.purchase_date >= p.start_date
and u.purchase_date <= p.end_date
group by p.product_id
