# Write your MySQL query statement below
WITH cte AS
(SELECT emp_id,event_day,(out_time-in_time) AS temp_time
FROM Employees
)
SELECT event_day AS day, emp_id, SUM(temp_time) AS total_time
FROM cte
GROUP BY day,emp_id;