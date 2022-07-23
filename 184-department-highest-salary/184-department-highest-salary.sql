# Write your MySQL query statement below
select Department.name as Department, Employee.name as Employee, salary as Salary from Employee
join Department on Employee.departmentId = Department.id -- include everything even if records do not match.

where (departmentId, Salary) in 
(select departmentId, MAX(salary) from Employee -- can go both ways
group by departmentId)