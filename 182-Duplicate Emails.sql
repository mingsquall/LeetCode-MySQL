-- Write a SQL query to find all duplicate emails in a table named Person.

-- +----+---------+
-- | Id | Email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+
-- For example, your query should return the following for the above table:

-- +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+
-- Note: All emails are in lowercase.

# Write your MySQL query statement below

# 方法1：直接查
select email
from person 
group by email 
having count(email) >= 2;

# 方法2：使用子查询
select email
from (select email, count(*) as num
      from person
      group by email) as statistic
where statistic.num >= 2;