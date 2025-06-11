# Write your MySQL query statement below
SELECT x, y, z, 
       IF( x + z > y AND x + y > z AND y + z > x, 'Yes', 'No') AS triangle
FROM Triangle;
