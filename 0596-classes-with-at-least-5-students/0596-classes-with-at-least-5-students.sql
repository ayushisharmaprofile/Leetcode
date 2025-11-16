# Write your MySQL query statement below
Select Class 
From Courses 
group by class 
having count(student)>=5