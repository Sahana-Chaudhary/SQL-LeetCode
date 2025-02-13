/* Write your PL/SQL query statement below */
SELECT emp.name AS Employee
FROM Employee emp
JOIN Employee emp2 
ON emp.managerId = emp2.id
WHERE emp.salary > emp2.salary;
