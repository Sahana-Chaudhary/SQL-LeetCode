# Write your MySQL query statement below
SELECT id,
CASE 
      WHEN p_id IS null THEN 'Root'
      WHEN p_id IS NOT null AND id IN(SELECT DISTINCT p_id FROM Tree) THEN 'Inner'
      ELSE 'Leaf'
      END AS type
FROM Tree;
