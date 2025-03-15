# Write your MySQL query statement below

-- SELECT c.customer_id, COUNT(c.visit_id) AS count_no_trans 
--     FROM Visits AS c 
--     WHERE visit_id NOT IN 
--         (SELECT DISTINCT a.visit_id 
--         FROM Visits AS a 
--         INNER JOIN 
--         Transactions AS b 
--         ON a.visit_id = b.visit_id)
--     GROUP BY c.customer_id;

SELECT a.customer_id, COUNT(a.visit_id) AS count_no_trans 
    FROM Visits AS a 
    LEFT JOIN 
    Transactions AS b 
    ON a.visit_id = b.visit_id
    WHERE b.visit_id IS NULL
    GROUP BY a.customer_id;
