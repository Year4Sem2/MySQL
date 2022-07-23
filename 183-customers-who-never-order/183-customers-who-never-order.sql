# Write your MySQL query statement below
SELECT name as Customers
from Customers left join Orders on Customers.Id = Orders.customerId

where customerId is null;

