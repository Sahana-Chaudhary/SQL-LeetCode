/* Write your PL/SQL query statement below */
SELECT emp.name as "Employee" FROM employee emp
INNER JOIN employee mgr
ON emp.managerid = mgr.id
WHERE mgr.salary < emp.salary;
