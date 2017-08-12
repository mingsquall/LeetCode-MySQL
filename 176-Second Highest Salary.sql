-- Write a SQL query to get the second highest salary from the Employee table.

-- +----+--------+
-- | Id | Salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+

-- For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+

# Write your MySQL query statement below
SELECT(
    SELECT Distinct Salary FROM Employee ORDER BY Salary DESC LIMIT 1,1)
    as SecondHighestSalary;

# 注意必须要加Distinct，比如下列情况：
# {"headers": {"Employee": ["Id", "Salary"]}, "rows": {"Employee": [[1, 100], [2, 100]]}}
# 加Distinct: {"headers": ["SecondHighestSalary"], "values": [[null]]}
# 不加Distinct: {"headers": ["SecondHighestSalary"], "values": [[100]]}