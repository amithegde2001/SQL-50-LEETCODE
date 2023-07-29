-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50


ELECT e1.name FROM Employee e1 INNER JOIN Employee e2 ON e2.managerId=e1.id GROUP BY e2.managerId HAVING COUNT(e2.managerId)>=5;
