/* Write your PL/SQL query statement below */
SELECT Person.firstName, Person.lastname, Address.city, Address.state
FROM Person 
LEFT JOIN Address
ON Person.personID = Address.personID;