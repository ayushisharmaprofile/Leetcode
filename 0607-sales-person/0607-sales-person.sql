# Write your MySQL query statement below
SELECT name
FROM SalesPerson
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id  -- JOIN to Company to filter by name
    WHERE c.name = 'RED'  -- Filter by company name, NOT ID
      AND o.sales_id = SalesPerson.sales_id
);