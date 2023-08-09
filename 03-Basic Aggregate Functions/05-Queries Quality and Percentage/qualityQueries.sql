-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND((COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END) * 100) / COUNT(query_name), 2) AS poor_query_percentage
FROM 
    Queries
GROUP BY 
    query_name;
