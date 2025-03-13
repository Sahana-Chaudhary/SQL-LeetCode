# Write your MySQL query statement below
SELECT e.employee_id FROM Employees e
LEFT JOIN employees d ON e.manager_id=d.employee_id
WHERE e.salary<30000 AND d.employee_id IS NULL AND e.manager_id IS NOT NULL 
ORDER BY employee_id ;




