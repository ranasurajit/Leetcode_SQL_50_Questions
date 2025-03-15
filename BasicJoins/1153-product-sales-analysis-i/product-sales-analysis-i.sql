# Write your MySQL query statement below

SELECT a.product_name, b.year, b.price FROM 
    Product AS a 
    INNER JOIN 
    Sales AS b 
    ON a.product_id = b.product_id;
