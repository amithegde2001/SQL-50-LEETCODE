-- https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

SELECT p.product_id,round(sum(price*units)/sum(units),2) AS average_price FROM Prices p join UnitsSold  u ON p.product_id=u.product_id WHERE u.purchase_date>=p.start_date AND u.purchase_date<=p.end_date  GROUP BY p.product_id;
