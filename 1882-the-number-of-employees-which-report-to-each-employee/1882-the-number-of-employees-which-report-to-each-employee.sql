SELECT e.employee_id,e.name, COUNT(s.reports_to) AS reports_count,
        ROUND(AVG(s.age),0) AS average_age
FROM employees e
JOIN employees s
ON e.employee_id=s.reports_to

GROUP BY employee_id,e.name
ORDER BY e.employee_id;
