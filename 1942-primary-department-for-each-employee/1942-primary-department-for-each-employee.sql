SELECT employee_id,department_id 
FROM Employee 
WHERE employee_id IN(SELECT employee_id FROM Employee GROUP BY Employee_id HAVING COUNT(*)=1)
OR primary_flag='Y';
