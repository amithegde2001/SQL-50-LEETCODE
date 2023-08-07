-- https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50


SELECT p.project_id AS project_id,round(avg(e.experience_years),2) AS average_years FROM Project p INNER JOIN Employee AS e ON p.employee_id=e.employee_id GROUP BY p.project_id;
