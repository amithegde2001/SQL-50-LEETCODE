-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

SELECT b.unique_id,a.name FROM Employees a LEFT JOIN EmployeeUNI b ON a.id=b.id; 
